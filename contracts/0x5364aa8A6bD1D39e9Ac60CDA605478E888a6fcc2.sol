contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address sub_41f55b11Address;
address devaddr;
uint256 bonusEndBlock;
uint256 rewardsPerBlock;
uint256 stor5; offset 1
uint256 BONUS_MULTIPLIER;
uint32 stor6;
address migratorAddress;
uint256 stor6;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 blocksPerYear;
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

function sub_41f55b11(?) payable {
    return sub_41f55b11Address
}

function startBlock() payable {
    return startBlock
}

function rewardsPerBlock() payable {
    return rewardsPerBlock
}

function migrator() payable {
    return address(migratorAddress)
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function blocksPerYear() payable {
    return blocksPerYear
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

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(migratorAddress) = arg1
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
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
        if not arg2 - arg1:
            return 0
        if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / 2)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - bonusEndBlock:
        if arg1 > bonusEndBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - arg1:
            return 0
        if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / bonusEndBlock - arg1 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return ((bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
    if (arg2 * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / arg2 - bonusEndBlock != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - arg1:
        if (arg2 * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((arg2 * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / bonusEndBlock - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if (arg2 * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((arg2 * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(migratorAddress):
        revert with 0, 'migrate: no migrator'
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(migratorAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
    call poolInfo[arg1].field_0 with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
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
    require ext_code.size(address(migratorAddress))
    call address(migratorAddress).migrate(address rg1) with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'migrate: bad'
    poolInfo[arg1].field_0 = address(ext_call.return_data[0])
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
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_41f55b11Address)
                    call sub_41f55b11Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_41f55b11Address)
                    call sub_41f55b11Address.0x40c10f19 with:
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
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
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
                        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
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
                            if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
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
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
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
                            if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2:
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
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
                                if poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - bonusEndBlock:
                        if poolInfo[arg1].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not bonusEndBlock - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
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
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[arg1].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / block.number - bonusEndBlock != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if poolInfo[arg1].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not bonusEndBlock - poolInfo[arg1].field_512:
                            if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
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
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != poolInfo[arg1].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
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
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[arg1].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
            if block.number > bonusEndBlock:
                BONUS_MULTIPLIER = stor5
                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                    revert with 0, 'SafeMath: addition overflow'
                bonusEndBlock += blocksPerYear
}

function pendingRewards(uint256 arg1, address arg2) payable {
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
        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
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
        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2:
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
        if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2:
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
        if poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
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
        if 10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - bonusEndBlock:
        if poolInfo[arg1].field_512 > bonusEndBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[arg1].field_512:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / block.number - bonusEndBlock != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * poolInfo[arg1].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number > poolInfo[idx].field_512:
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
            else:
                if block.number <= bonusEndBlock:
                    _849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_849] = 30
                    mem[_849 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _849 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _906 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_906] = 26
                        mem[_906 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _918 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _918 + 68] = mem[idx + _906 + 32]
                                idx = idx + 32
                                continue 
                            mem[_918 + 68] = mem[_918 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _918 + -mem[64] + 100
                        _952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_952] = 26
                        mem[_952 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1050 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1050] = 26
                            mem[_1050 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                _1082 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1082 + 68] = mem[idx + _1050 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1082 + 68] = mem[_1082 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1082 + -mem[64] + 100
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            if block.number > bonusEndBlock:
                                _1255 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1255] = 26
                                mem[_1255 + 32] = 'SafeMath: division by zero'
                                BONUS_MULTIPLIER = stor5
                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                bonusEndBlock += blocksPerYear
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1066] = 26
                            mem[_1066 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                _1103 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1103 + 68] = mem[idx + _1066 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1103 + 68] = mem[_1103 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1103 + -mem[64] + 100
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            if block.number > bonusEndBlock:
                                _1271 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1271] = 26
                                mem[_1271 + 32] = 'SafeMath: division by zero'
                                BONUS_MULTIPLIER = stor5
                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                bonusEndBlock += blocksPerYear
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            _912 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_912] = 26
                            mem[_912 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _928 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _928 + 68] = mem[idx + _912 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_928 + 68] = mem[_928 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _928 + -mem[64] + 100
                            _958 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_958] = 26
                            mem[_958 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1065 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1065] = 26
                                mem[_1065 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1100 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1100 + 68] = mem[idx + _1065 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1100 + 68] = mem[_1100 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1100 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1270 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1270] = 26
                                    mem[_1270 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1081 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1081] = 26
                                mem[_1081 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1123 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1123 + 68] = mem[idx + _1081 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1123 + 68] = mem[_1123 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1123 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1291 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1291] = 26
                                    mem[_1291 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                _917 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_917] = 26
                                mem[_917 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _934 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _934 + 68] = mem[idx + _917 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_934 + 68] = mem[_934 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _934 + -mem[64] + 100
                                _969 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_969] = 26
                                mem[_969 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1080 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1080] = 26
                                    mem[_1080 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1120 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1120 + 68] = mem[idx + _1080 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1120 + 68] = mem[_1120 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1120 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1290 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1290] = 26
                                        mem[_1290 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1099 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1099] = 26
                                    mem[_1099 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1142 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1142 + 68] = mem[idx + _1099 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1142 + 68] = mem[_1142 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1142 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1313 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1313] = 26
                                        mem[_1313 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _927 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_927] = 26
                                mem[_927 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _941 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _941 + 68] = mem[idx + _927 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_941 + 68] = mem[_941 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _941 + -mem[64] + 100
                                _977 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_977] = 26
                                mem[_977 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1098 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1098] = 26
                                    mem[_1098 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1139 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1139 + 68] = mem[idx + _1098 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1139 + 68] = mem[_1139 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1139 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1312 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1312] = 26
                                        mem[_1312 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1119 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1119] = 26
                                    mem[_1119 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1164 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1164 + 68] = mem[idx + _1119 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1164 + 68] = mem[_1164 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1164 + -mem[64] + 100
                                    if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1332 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1332] = 26
                                        mem[_1332 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        _851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_851] = 30
                        mem[_851 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _851 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            _892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_892] = 26
                            mem[_892 + 32] = 'SafeMath: division by zero'
                            _954 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_954] = 26
                            mem[_954 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _974 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _974 + 68] = mem[idx + _954 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_974 + 68] = mem[_974 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _974 + -mem[64] + 100
                            _1000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1000] = 26
                            mem[_1000 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1189 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1189] = 26
                                mem[_1189 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1229 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1229 + 68] = mem[idx + _1189 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1229 + 68] = mem[_1229 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1229 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1365 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1365] = 26
                                    mem[_1365 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1211 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1211] = 26
                                mem[_1211 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1247 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1247 + 68] = mem[idx + _1211 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1247 + 68] = mem[_1247 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1247 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1373 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1373] = 26
                                    mem[_1373 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _894 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_894] = 26
                            mem[_894 + 32] = 'SafeMath: division by zero'
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                _966 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_966] = 26
                                mem[_966 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _980 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _980 + 68] = mem[idx + _966 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_980 + 68] = mem[_980 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _980 + -mem[64] + 100
                                _1009 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1009] = 26
                                mem[_1009 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1210 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1210] = 26
                                    mem[_1210 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1244 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1244 + 68] = mem[idx + _1210 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1244 + 68] = mem[_1244 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1244 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1372 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1372] = 26
                                        mem[_1372 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1228 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1228] = 26
                                    mem[_1228 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1264 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1264 + 68] = mem[idx + _1228 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1264 + 68] = mem[_1264 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1264 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1384 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1384] = 26
                                        mem[_1384 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                    _973 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_973] = 26
                                    mem[_973 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _983 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _983 + 68] = mem[idx + _973 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_983 + 68] = mem[_983 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _983 + -mem[64] + 100
                                    _1021 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1021] = 26
                                    mem[_1021 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1227 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1227] = 26
                                        mem[_1227 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1261 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1261 + 68] = mem[idx + _1227 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1261 + 68] = mem[_1261 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1261 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1383 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1383] = 26
                                            mem[_1383 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1243 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1243] = 26
                                        mem[_1243 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1283 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1283 + 68] = mem[idx + _1243 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1283 + 68] = mem[_1283 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1283 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1399 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1399] = 26
                                            mem[_1399 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _979 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_979] = 26
                                    mem[_979 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _989 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _989 + 68] = mem[idx + _979 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_989 + 68] = mem[_989 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _989 + -mem[64] + 100
                                    _1027 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1027] = 26
                                    mem[_1027 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                        _1242 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1242] = 26
                                        mem[_1242 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1280 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1280 + 68] = mem[idx + _1242 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1280 + 68] = mem[_1280 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1280 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1398 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1398] = 26
                                            mem[_1398 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1260 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1260] = 26
                                        mem[_1260 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1302 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1302 + 68] = mem[idx + _1260 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1302 + 68] = mem[_1302 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1302 + -mem[64] + 100
                                        if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1418 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1418] = 26
                                            mem[_1418 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                    else:
                        _850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_850] = 30
                        mem[_850 + 32] = 'SafeMath: subtraction overflow'
                        if bonusEndBlock > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _850 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - bonusEndBlock:
                            _891 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_891] = 26
                            mem[_891 + 32] = 'SafeMath: division by zero'
                            _897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_897] = 30
                            mem[_897 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _897 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - poolInfo[idx].field_512:
                                _1033 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1033] = 26
                                mem[_1033 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _1056 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1056 + 68] = mem[idx + _1033 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1056 + 68] = mem[_1056 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1056 + -mem[64] + 100
                                _1137 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1137] = 26
                                mem[_1137 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1382 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1382] = 26
                                    mem[_1382 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1415 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1415 + 68] = mem[idx + _1382 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1415 + 68] = mem[_1415 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1415 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1616 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1616] = 26
                                        mem[_1616 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1397 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1397] = 26
                                    mem[_1397 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1435 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1435 + 68] = mem[idx + _1397 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1435 + 68] = mem[_1435 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1435 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1628 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1628] = 26
                                        mem[_1628 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    _1043 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1043] = 26
                                    mem[_1043 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1073 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1073 + 68] = mem[idx + _1043 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1073 + 68] = mem[_1073 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1073 + -mem[64] + 100
                                    _1160 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1160] = 26
                                    mem[_1160 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1396 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1396] = 26
                                        mem[_1396 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1432 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1432 + 68] = mem[idx + _1396 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1432 + 68] = mem[_1432 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1432 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1627 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1627] = 26
                                            mem[_1627 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1414 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1414] = 26
                                        mem[_1414 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1454 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1454 + 68] = mem[idx + _1414 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1454 + 68] = mem[_1454 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1454 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1635 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1635] = 26
                                            mem[_1635 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                        _1055 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1055] = 26
                                        mem[_1055 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1092 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1092 + 68] = mem[idx + _1055 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1092 + 68] = mem[_1092 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1092 + -mem[64] + 100
                                        _1185 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1185] = 26
                                        mem[_1185 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1413 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1413] = 26
                                            mem[_1413 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1451 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1451 + 68] = mem[idx + _1413 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1451 + 68] = mem[_1451 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1451 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1634 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1634] = 26
                                                mem[_1634 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1431 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1431] = 26
                                            mem[_1431 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1475 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1475 + 68] = mem[idx + _1431 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1475 + 68] = mem[_1475 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1475 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1641 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1641] = 26
                                                mem[_1641 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1072 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1072] = 26
                                        mem[_1072 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1113 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1113 + 68] = mem[idx + _1072 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1113 + 68] = mem[_1113 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1113 + -mem[64] + 100
                                        _1206 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1206] = 26
                                        mem[_1206 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            _1430 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1430] = 26
                                            mem[_1430 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1472 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1472 + 68] = mem[idx + _1430 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1472 + 68] = mem[_1472 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1472 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1640 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1640] = 26
                                                mem[_1640 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1450 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1450] = 26
                                            mem[_1450 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1498 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1498 + 68] = mem[idx + _1450 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1498 + 68] = mem[_1498 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1498 + -mem[64] + 100
                                            if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1645 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1645] = 26
                                                mem[_1645 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / block.number - bonusEndBlock != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_893] = 26
                            mem[_893 + 32] = 'SafeMath: division by zero'
                            _898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_898] = 30
                            mem[_898 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _898 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - poolInfo[idx].field_512:
                                if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                    _1040 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1040] = 26
                                    mem[_1040 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1069 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1069 + 68] = mem[idx + _1040 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1069 + 68] = mem[_1069 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1069 + -mem[64] + 100
                                    _1155 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1155] = 26
                                    mem[_1155 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1393 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1393] = 26
                                        mem[_1393 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1427 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1427 + 68] = mem[idx + _1393 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1427 + 68] = mem[_1427 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1427 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1624 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1624] = 26
                                            mem[_1624 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1410] = 26
                                        mem[_1410 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1447 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1447 + 68] = mem[idx + _1410 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1447 + 68] = mem[_1447 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1447 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1633 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1633] = 26
                                            mem[_1633 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                        _1054 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1054] = 26
                                        mem[_1054 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1089 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1089 + 68] = mem[idx + _1054 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1089 + 68] = mem[_1089 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1089 + -mem[64] + 100
                                        _1181 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1181] = 26
                                        mem[_1181 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1409 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1409] = 26
                                            mem[_1409 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1444 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1444 + 68] = mem[idx + _1409 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1444 + 68] = mem[_1444 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1444 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1632 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1632] = 26
                                                mem[_1632 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1426 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1426] = 26
                                            mem[_1426 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1468 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1468 + 68] = mem[idx + _1426 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1468 + 68] = mem[_1468 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1468 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1639 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1639] = 26
                                                mem[_1639 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1068 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1068] = 26
                                        mem[_1068 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1109 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1109 + 68] = mem[idx + _1068 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1109 + 68] = mem[_1109 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1109 + -mem[64] + 100
                                        _1204 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1204] = 26
                                        mem[_1204 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                            _1425 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1425] = 26
                                            mem[_1425 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1465 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1465 + 68] = mem[idx + _1425 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1465 + 68] = mem[_1465 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1465 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1638 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1638] = 26
                                                mem[_1638 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1443 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1443] = 26
                                            mem[_1443 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1491 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1491 + 68] = mem[idx + _1443 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1491 + 68] = mem[_1491 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1491 + -mem[64] + 100
                                            if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1644 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1644] = 26
                                                mem[_1644 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    _1053 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1053] = 26
                                    mem[_1053 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1086 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1086 + 68] = mem[idx + _1053 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1086 + 68] = mem[_1086 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1086 + -mem[64] + 100
                                    _1177 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1177] = 26
                                    mem[_1177 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1406 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1406] = 26
                                        mem[_1406 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1440 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1440 + 68] = mem[idx + _1406 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1440 + 68] = mem[_1440 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1440 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1631 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1631] = 26
                                            mem[_1631 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1424 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1424] = 26
                                        mem[_1424 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1462 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1462 + 68] = mem[idx + _1424 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1462 + 68] = mem[_1462 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1462 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1637 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1637] = 26
                                            mem[_1637 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                        _1067 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1067] = 26
                                        mem[_1067 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1106 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1106 + 68] = mem[idx + _1067 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1106 + 68] = mem[_1106 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1106 + -mem[64] + 100
                                        _1202 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1202] = 26
                                        mem[_1202 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1423 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1423] = 26
                                            mem[_1423 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1459 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1459 + 68] = mem[idx + _1423 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1459 + 68] = mem[_1459 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1459 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1636 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1636] = 26
                                                mem[_1636 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1439 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1439] = 26
                                            mem[_1439 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1487 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1487 + 68] = mem[idx + _1439 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1487 + 68] = mem[_1487 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1487 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1643 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1643] = 26
                                                mem[_1643 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1085 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1085] = 26
                                        mem[_1085 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1127 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1127 + 68] = mem[idx + _1085 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1127 + 68] = mem[_1127 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1127 + -mem[64] + 100
                                        _1223 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1223] = 26
                                        mem[_1223 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            _1438 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1438] = 26
                                            mem[_1438 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1484 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1484 + 68] = mem[idx + _1438 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1484 + 68] = mem[_1484 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1484 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1642 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1642] = 26
                                                mem[_1642 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1458 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1458] = 26
                                            mem[_1458 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1512 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1512 + 68] = mem[idx + _1458 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1512 + 68] = mem[_1512 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1512 + -mem[64] + 100
                                            if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1646 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1646] = 26
                                                mem[_1646 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
        idx = idx + 1
        continue 
}

function updateMultiplier(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number > poolInfo[idx].field_512:
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
            else:
                if block.number <= bonusEndBlock:
                    _853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_853] = 30
                    mem[_853 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _853 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _910 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_910] = 26
                        mem[_910 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _922 + 68] = mem[idx + _910 + 32]
                                idx = idx + 32
                                continue 
                            mem[_922 + 68] = mem[_922 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _922 + -mem[64] + 100
                        _956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_956] = 26
                        mem[_956 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_41f55b11Address)
                        call sub_41f55b11Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1054 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1054] = 26
                            mem[_1054 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                _1086 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1086 + 68] = mem[idx + _1054 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1086 + 68] = mem[_1086 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1086 + -mem[64] + 100
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            if block.number > bonusEndBlock:
                                _1259 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1259] = 26
                                mem[_1259 + 32] = 'SafeMath: division by zero'
                                BONUS_MULTIPLIER = stor5
                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                bonusEndBlock += blocksPerYear
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1070 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1070] = 26
                            mem[_1070 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                _1107 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1107 + 68] = mem[idx + _1070 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1107 + 68] = mem[_1107 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1107 + -mem[64] + 100
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            if block.number > bonusEndBlock:
                                _1275 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1275] = 26
                                mem[_1275 + 32] = 'SafeMath: division by zero'
                                BONUS_MULTIPLIER = stor5
                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                bonusEndBlock += blocksPerYear
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            _916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_916] = 26
                            mem[_916 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _932 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _932 + 68] = mem[idx + _916 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_932 + 68] = mem[_932 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _932 + -mem[64] + 100
                            _962 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_962] = 26
                            mem[_962 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1069 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1069] = 26
                                mem[_1069 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1104 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1104 + 68] = mem[idx + _1069 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1104 + 68] = mem[_1104 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1104 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1274 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1274] = 26
                                    mem[_1274 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1085 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1085] = 26
                                mem[_1085 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1127 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1127 + 68] = mem[idx + _1085 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1127 + 68] = mem[_1127 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1127 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1295 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1295] = 26
                                    mem[_1295 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                _921 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_921] = 26
                                mem[_921 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _938 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _938 + 68] = mem[idx + _921 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_938 + 68] = mem[_938 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _938 + -mem[64] + 100
                                _973 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_973] = 26
                                mem[_973 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1084 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1084] = 26
                                    mem[_1084 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1124 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1124 + 68] = mem[idx + _1084 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1124 + 68] = mem[_1124 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1124 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1294 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1294] = 26
                                        mem[_1294 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1103 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1103] = 26
                                    mem[_1103 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1146 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1146 + 68] = mem[idx + _1103 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1146 + 68] = mem[_1146 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1146 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1317 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1317] = 26
                                        mem[_1317 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _931 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_931] = 26
                                mem[_931 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _945 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _945 + 68] = mem[idx + _931 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_945 + 68] = mem[_945 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _945 + -mem[64] + 100
                                _981 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_981] = 26
                                mem[_981 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1102 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1102] = 26
                                    mem[_1102 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1143 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1143 + 68] = mem[idx + _1102 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1143 + 68] = mem[_1143 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1143 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1316 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1316] = 26
                                        mem[_1316 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1123 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1123] = 26
                                    mem[_1123 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1168 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1168 + 68] = mem[idx + _1123 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1168 + 68] = mem[_1168 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1168 + -mem[64] + 100
                                    if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1336 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1336] = 26
                                        mem[_1336 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        _855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_855] = 30
                        mem[_855 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _855 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            _896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_896] = 26
                            mem[_896 + 32] = 'SafeMath: division by zero'
                            _958 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_958] = 26
                            mem[_958 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _978 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _978 + 68] = mem[idx + _958 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_978 + 68] = mem[_978 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _978 + -mem[64] + 100
                            _1004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1004] = 26
                            mem[_1004 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1193 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1193] = 26
                                mem[_1193 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1233 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1233 + 68] = mem[idx + _1193 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1233 + 68] = mem[_1233 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1233 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1369 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1369] = 26
                                    mem[_1369 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1215 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1215] = 26
                                mem[_1215 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1251 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1251 + 68] = mem[idx + _1215 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1251 + 68] = mem[_1251 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1251 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1377 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1377] = 26
                                    mem[_1377 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_898] = 26
                            mem[_898 + 32] = 'SafeMath: division by zero'
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                _970 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_970] = 26
                                mem[_970 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _984 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _984 + 68] = mem[idx + _970 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_984 + 68] = mem[_984 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _984 + -mem[64] + 100
                                _1013 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1013] = 26
                                mem[_1013 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1214 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1214] = 26
                                    mem[_1214 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1248 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1248 + 68] = mem[idx + _1214 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1248 + 68] = mem[_1248 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1248 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1376 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1376] = 26
                                        mem[_1376 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1232 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1232] = 26
                                    mem[_1232 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1268 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1268 + 68] = mem[idx + _1232 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1268 + 68] = mem[_1268 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1268 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1388 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1388] = 26
                                        mem[_1388 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                    _977 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_977] = 26
                                    mem[_977 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _987 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _987 + 68] = mem[idx + _977 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_987 + 68] = mem[_987 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _987 + -mem[64] + 100
                                    _1025 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1025] = 26
                                    mem[_1025 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1231 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1231] = 26
                                        mem[_1231 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1265 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1265 + 68] = mem[idx + _1231 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1265 + 68] = mem[_1265 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1265 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1387 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1387] = 26
                                            mem[_1387 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1247 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1247] = 26
                                        mem[_1247 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1287 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1287 + 68] = mem[idx + _1247 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1287 + 68] = mem[_1287 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1287 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1403 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1403] = 26
                                            mem[_1403 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _983 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_983] = 26
                                    mem[_983 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _993 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _993 + 68] = mem[idx + _983 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_993 + 68] = mem[_993 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _993 + -mem[64] + 100
                                    _1031 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1031] = 26
                                    mem[_1031 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                        _1246 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1246] = 26
                                        mem[_1246 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1284 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1284 + 68] = mem[idx + _1246 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1284 + 68] = mem[_1284 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1284 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1402] = 26
                                            mem[_1402 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1264 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1264] = 26
                                        mem[_1264 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1306 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1306 + 68] = mem[idx + _1264 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1306 + 68] = mem[_1306 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1306 + -mem[64] + 100
                                        if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1422 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1422] = 26
                                            mem[_1422 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                    else:
                        _854 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_854] = 30
                        mem[_854 + 32] = 'SafeMath: subtraction overflow'
                        if bonusEndBlock > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _854 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - bonusEndBlock:
                            _895 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_895] = 26
                            mem[_895 + 32] = 'SafeMath: division by zero'
                            _901 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_901] = 30
                            mem[_901 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _901 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - poolInfo[idx].field_512:
                                _1037 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1037] = 26
                                mem[_1037 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _1060 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1060 + 68] = mem[idx + _1037 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1060 + 68] = mem[_1060 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1060 + -mem[64] + 100
                                _1141 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1141] = 26
                                mem[_1141 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1386 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1386] = 26
                                    mem[_1386 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1419 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1419 + 68] = mem[idx + _1386 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1419 + 68] = mem[_1419 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1419 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1620 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1620] = 26
                                        mem[_1620 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1401 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1401] = 26
                                    mem[_1401 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1439 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1439 + 68] = mem[idx + _1401 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1439 + 68] = mem[_1439 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1439 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1632 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1632] = 26
                                        mem[_1632 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    _1047 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1047] = 26
                                    mem[_1047 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1077 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1077 + 68] = mem[idx + _1047 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1077 + 68] = mem[_1077 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1077 + -mem[64] + 100
                                    _1164 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1164] = 26
                                    mem[_1164 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1400 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1400] = 26
                                        mem[_1400 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1436 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1436 + 68] = mem[idx + _1400 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1436 + 68] = mem[_1436 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1436 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1631 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1631] = 26
                                            mem[_1631 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1418 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1418] = 26
                                        mem[_1418 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1458 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1458 + 68] = mem[idx + _1418 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1458 + 68] = mem[_1458 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1458 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1639 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1639] = 26
                                            mem[_1639 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                        _1059 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1059] = 26
                                        mem[_1059 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1096 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1096 + 68] = mem[idx + _1059 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1096 + 68] = mem[_1096 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1096 + -mem[64] + 100
                                        _1189 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1189] = 26
                                        mem[_1189 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1417 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1417] = 26
                                            mem[_1417 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1455 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1455 + 68] = mem[idx + _1417 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1455 + 68] = mem[_1455 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1455 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1638 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1638] = 26
                                                mem[_1638 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1435 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1435] = 26
                                            mem[_1435 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1479 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1479 + 68] = mem[idx + _1435 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1479 + 68] = mem[_1479 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1479 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1645 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1645] = 26
                                                mem[_1645 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1076 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1076] = 26
                                        mem[_1076 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1117 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1117 + 68] = mem[idx + _1076 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1117 + 68] = mem[_1117 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1117 + -mem[64] + 100
                                        _1210 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1210] = 26
                                        mem[_1210 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            _1434 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1434] = 26
                                            mem[_1434 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1476 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1476 + 68] = mem[idx + _1434 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1476 + 68] = mem[_1476 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1476 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1644 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1644] = 26
                                                mem[_1644 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1454 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1454] = 26
                                            mem[_1454 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1502 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1502 + 68] = mem[idx + _1454 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1502 + 68] = mem[_1502 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1502 + -mem[64] + 100
                                            if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1649 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1649] = 26
                                                mem[_1649 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / block.number - bonusEndBlock != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_897] = 26
                            mem[_897 + 32] = 'SafeMath: division by zero'
                            _902 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_902] = 30
                            mem[_902 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _902 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - poolInfo[idx].field_512:
                                if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                    _1044 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1044] = 26
                                    mem[_1044 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1073 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1073 + 68] = mem[idx + _1044 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1073 + 68] = mem[_1073 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1073 + -mem[64] + 100
                                    _1159 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1159] = 26
                                    mem[_1159 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1397 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1397] = 26
                                        mem[_1397 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1431 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1431 + 68] = mem[idx + _1397 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1431 + 68] = mem[_1431 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1431 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1628 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1628] = 26
                                            mem[_1628 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1414 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1414] = 26
                                        mem[_1414 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1451 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1451 + 68] = mem[idx + _1414 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1451 + 68] = mem[_1451 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1451 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1637 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1637] = 26
                                            mem[_1637 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                        _1058 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1058] = 26
                                        mem[_1058 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1093 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1093 + 68] = mem[idx + _1058 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1093 + 68] = mem[_1093 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1093 + -mem[64] + 100
                                        _1185 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1185] = 26
                                        mem[_1185 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1413 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1413] = 26
                                            mem[_1413 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1448 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1448 + 68] = mem[idx + _1413 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1448 + 68] = mem[_1448 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1448 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1636 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1636] = 26
                                                mem[_1636 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1430 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1430] = 26
                                            mem[_1430 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1472 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1472 + 68] = mem[idx + _1430 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1472 + 68] = mem[_1472 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1472 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1643 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1643] = 26
                                                mem[_1643 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1072 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1072] = 26
                                        mem[_1072 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1113 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1113 + 68] = mem[idx + _1072 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1113 + 68] = mem[_1113 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1113 + -mem[64] + 100
                                        _1208 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1208] = 26
                                        mem[_1208 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                            _1429 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1429] = 26
                                            mem[_1429 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1469 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1469 + 68] = mem[idx + _1429 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1469 + 68] = mem[_1469 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1469 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1642 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1642] = 26
                                                mem[_1642 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1447 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1447] = 26
                                            mem[_1447 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1495 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1495 + 68] = mem[idx + _1447 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1495 + 68] = mem[_1495 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1495 + -mem[64] + 100
                                            if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1648 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1648] = 26
                                                mem[_1648 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    _1057 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1057] = 26
                                    mem[_1057 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1090 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1090 + 68] = mem[idx + _1057 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1090 + 68] = mem[_1090 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1090 + -mem[64] + 100
                                    _1181 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1181] = 26
                                    mem[_1181 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1410] = 26
                                        mem[_1410 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1444 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1444 + 68] = mem[idx + _1410 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1444 + 68] = mem[_1444 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1444 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1635 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1635] = 26
                                            mem[_1635 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1428 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1428] = 26
                                        mem[_1428 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1466 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1466 + 68] = mem[idx + _1428 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1466 + 68] = mem[_1466 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1466 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1641 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1641] = 26
                                            mem[_1641 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                        _1071 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1071] = 26
                                        mem[_1071 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1110 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1110 + 68] = mem[idx + _1071 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1110 + 68] = mem[_1110 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1110 + -mem[64] + 100
                                        _1206 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1206] = 26
                                        mem[_1206 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1427 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1427] = 26
                                            mem[_1427 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1463 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1463 + 68] = mem[idx + _1427 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1463 + 68] = mem[_1463 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1463 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1640 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1640] = 26
                                                mem[_1640 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1443 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1443] = 26
                                            mem[_1443 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1491 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1491 + 68] = mem[idx + _1443 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1491 + 68] = mem[_1491 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1491 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1647 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1647] = 26
                                                mem[_1647 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1089 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1089] = 26
                                        mem[_1089 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1131 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1131 + 68] = mem[idx + _1089 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1131 + 68] = mem[_1131 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1131 + -mem[64] + 100
                                        _1227 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1227] = 26
                                        mem[_1227 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            _1442 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1442] = 26
                                            mem[_1442 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1488 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1488 + 68] = mem[idx + _1442 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1488 + 68] = mem[_1488 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1488 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1646 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1646] = 26
                                                mem[_1646 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1462 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1462] = 26
                                            mem[_1462 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1516 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1516 + 68] = mem[idx + _1462 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1516 + 68] = mem[_1516 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1516 + -mem[64] + 100
                                            if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1650 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1650] = 26
                                                mem[_1650 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
        idx = idx + 1
        continue 
    BONUS_MULTIPLIER = arg1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
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
                else:
                    if block.number <= bonusEndBlock:
                        _904 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_904] = 30
                        mem[_904 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _904 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            _962 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_962] = 26
                            mem[_962 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _974 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _974 + 68] = mem[idx + _962 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_974 + 68] = mem[_974 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _974 + -mem[64] + 100
                            _1008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1008] = 26
                            mem[_1008 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1106 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1106] = 26
                                mem[_1106 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1138 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1138 + 68] = mem[idx + _1106 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1138 + 68] = mem[_1138 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1138 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1311 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1311] = 26
                                    mem[_1311 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1122 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1122] = 26
                                mem[_1122 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1159 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1159 + 68] = mem[idx + _1122 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1159 + 68] = mem[_1159 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1159 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1327 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1327] = 26
                                    mem[_1327 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                _968 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_968] = 26
                                mem[_968 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _984 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _984 + 68] = mem[idx + _968 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_984 + 68] = mem[_984 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _984 + -mem[64] + 100
                                _1014 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1014] = 26
                                mem[_1014 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1121 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1121] = 26
                                    mem[_1121 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1156 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1156 + 68] = mem[idx + _1121 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1156 + 68] = mem[_1156 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1156 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1326 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1326] = 26
                                        mem[_1326 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1137 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1137] = 26
                                    mem[_1137 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1179 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1179 + 68] = mem[idx + _1137 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1179 + 68] = mem[_1179 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1179 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1347 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1347] = 26
                                        mem[_1347 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                    _973 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_973] = 26
                                    mem[_973 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _990 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _990 + 68] = mem[idx + _973 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_990 + 68] = mem[_990 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _990 + -mem[64] + 100
                                    _1025 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1025] = 26
                                    mem[_1025 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1136 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1136] = 26
                                        mem[_1136 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1176 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1176 + 68] = mem[idx + _1136 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1176 + 68] = mem[_1176 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1176 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1346 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1346] = 26
                                            mem[_1346 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1155 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1155] = 26
                                        mem[_1155 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1198 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1198 + 68] = mem[idx + _1155 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1198 + 68] = mem[_1198 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1198 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1369 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1369] = 26
                                            mem[_1369 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _983 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_983] = 26
                                    mem[_983 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _997 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _997 + 68] = mem[idx + _983 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_997 + 68] = mem[_997 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _997 + -mem[64] + 100
                                    _1033 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1033] = 26
                                    mem[_1033 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1154 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1154] = 26
                                        mem[_1154 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1195 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1195 + 68] = mem[idx + _1154 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1195 + 68] = mem[_1195 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1195 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1368 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1368] = 26
                                            mem[_1368 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1175 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1175] = 26
                                        mem[_1175 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1220 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1220 + 68] = mem[idx + _1175 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1220 + 68] = mem[_1220 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1220 + -mem[64] + 100
                                        if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1388] = 26
                                            mem[_1388 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            _907 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_907] = 30
                            mem[_907 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _907 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                _948 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_948] = 26
                                mem[_948 + 32] = 'SafeMath: division by zero'
                                _1010 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1010] = 26
                                mem[_1010 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _1030 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1030 + 68] = mem[idx + _1010 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1030 + 68] = mem[_1030 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1030 + -mem[64] + 100
                                _1056 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1056] = 26
                                mem[_1056 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1245 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1245] = 26
                                    mem[_1245 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1285 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1285 + 68] = mem[idx + _1245 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1285 + 68] = mem[_1285 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1285 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1421 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1421] = 26
                                        mem[_1421 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1267 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1267] = 26
                                    mem[_1267 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1303 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1303 + 68] = mem[idx + _1267 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1303 + 68] = mem[_1303 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1303 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1429 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1429] = 26
                                        mem[_1429 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _950 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_950] = 26
                                mem[_950 + 32] = 'SafeMath: division by zero'
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                    _1022 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1022] = 26
                                    mem[_1022 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1036 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1036 + 68] = mem[idx + _1022 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1036 + 68] = mem[_1036 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1036 + -mem[64] + 100
                                    _1065 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1065] = 26
                                    mem[_1065 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1266 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1266] = 26
                                        mem[_1266 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1300 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1300 + 68] = mem[idx + _1266 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1300 + 68] = mem[_1300 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1300 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1428 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1428] = 26
                                            mem[_1428 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1284 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1284] = 26
                                        mem[_1284 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1320 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1320 + 68] = mem[idx + _1284 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1320 + 68] = mem[_1320 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1320 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1440 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1440] = 26
                                            mem[_1440 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                        _1029 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1029] = 26
                                        mem[_1029 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1039 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1039 + 68] = mem[idx + _1029 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1039 + 68] = mem[_1039 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1039 + -mem[64] + 100
                                        _1077 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1077] = 26
                                        mem[_1077 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1283 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1283] = 26
                                            mem[_1283 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1317 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1317 + 68] = mem[idx + _1283 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1317 + 68] = mem[_1317 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1317 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1439 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1439] = 26
                                                mem[_1439 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1299 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1299] = 26
                                            mem[_1299 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1339 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1339 + 68] = mem[idx + _1299 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1339 + 68] = mem[_1339 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1339 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1455 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1455] = 26
                                                mem[_1455 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1035 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1035] = 26
                                        mem[_1035 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1045 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1045 + 68] = mem[idx + _1035 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1045 + 68] = mem[_1045 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1045 + -mem[64] + 100
                                        _1083 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1083] = 26
                                        mem[_1083 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                            _1298 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1298] = 26
                                            mem[_1298 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1336 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1336 + 68] = mem[idx + _1298 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1336 + 68] = mem[_1336 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1336 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1454 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1454] = 26
                                                mem[_1454 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1316 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1316] = 26
                                            mem[_1316 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1358 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1358 + 68] = mem[idx + _1316 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1358 + 68] = mem[_1358 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1358 + -mem[64] + 100
                                            if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1474 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1474] = 26
                                                mem[_1474 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                        else:
                            _906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_906] = 30
                            mem[_906 + 32] = 'SafeMath: subtraction overflow'
                            if bonusEndBlock > block.number:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _906 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - bonusEndBlock:
                                _947 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_947] = 26
                                mem[_947 + 32] = 'SafeMath: division by zero'
                                _953 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_953] = 30
                                mem[_953 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > bonusEndBlock:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _953 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not bonusEndBlock - poolInfo[idx].field_512:
                                    _1089 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1089] = 26
                                    mem[_1089 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1112 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1112 + 68] = mem[idx + _1089 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1112 + 68] = mem[_1112 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1112 + -mem[64] + 100
                                    _1193 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1193] = 26
                                    mem[_1193 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1438 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1438] = 26
                                        mem[_1438 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1471 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1471 + 68] = mem[idx + _1438 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1471 + 68] = mem[_1471 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1471 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1672 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1672] = 26
                                            mem[_1672 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1453 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1453] = 26
                                        mem[_1453 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1491 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1491 + 68] = mem[idx + _1453 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1491 + 68] = mem[_1491 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1491 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1684 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1684] = 26
                                            mem[_1684 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        _1099 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1099] = 26
                                        mem[_1099 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1129 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1129 + 68] = mem[idx + _1099 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1129 + 68] = mem[_1129 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1129 + -mem[64] + 100
                                        _1216 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1216] = 26
                                        mem[_1216 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1452 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1452] = 26
                                            mem[_1452 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1488 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1488 + 68] = mem[idx + _1452 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1488 + 68] = mem[_1488 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1488 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1683 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1683] = 26
                                                mem[_1683 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1470 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1470] = 26
                                            mem[_1470 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1510 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1510 + 68] = mem[idx + _1470 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1510 + 68] = mem[_1510 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1510 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1691 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1691] = 26
                                                mem[_1691 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                            _1111 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1111] = 26
                                            mem[_1111 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1148 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1148 + 68] = mem[idx + _1111 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1148 + 68] = mem[_1148 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1148 + -mem[64] + 100
                                            _1241 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1241] = 26
                                            mem[_1241 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1469 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1469] = 26
                                                mem[_1469 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1507 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1507 + 68] = mem[idx + _1469 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1507 + 68] = mem[_1507 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1507 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1690 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1690] = 26
                                                    mem[_1690 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1487 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1487] = 26
                                                mem[_1487 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1531 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1531 + 68] = mem[idx + _1487 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1531 + 68] = mem[_1531 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1531 + -mem[64] + 100
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1697 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1697] = 26
                                                    mem[_1697 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                        else:
                                            if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1128 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1128] = 26
                                            mem[_1128 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1169 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1169 + 68] = mem[idx + _1128 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1169 + 68] = mem[_1169 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1169 + -mem[64] + 100
                                            _1262 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1262] = 26
                                            mem[_1262 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                _1486 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1486] = 26
                                                mem[_1486 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1528 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1528 + 68] = mem[idx + _1486 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1528 + 68] = mem[_1528 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1528 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1696 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1696] = 26
                                                    mem[_1696 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1506 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1506] = 26
                                                mem[_1506 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1554 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1554 + 68] = mem[idx + _1506 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1554 + 68] = mem[_1554 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1554 + -mem[64] + 100
                                                if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1701 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1701] = 26
                                                    mem[_1701 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / block.number - bonusEndBlock != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _949 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_949] = 26
                                mem[_949 + 32] = 'SafeMath: division by zero'
                                _954 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_954] = 30
                                mem[_954 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > bonusEndBlock:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _954 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not bonusEndBlock - poolInfo[idx].field_512:
                                    if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                        _1096 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1096] = 26
                                        mem[_1096 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1125 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1125 + 68] = mem[idx + _1096 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1125 + 68] = mem[_1125 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1125 + -mem[64] + 100
                                        _1211 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1211] = 26
                                        mem[_1211 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1449 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1449] = 26
                                            mem[_1449 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1483 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1483 + 68] = mem[idx + _1449 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1483 + 68] = mem[_1483 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1483 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1680 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1680] = 26
                                                mem[_1680 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1466 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1466] = 26
                                            mem[_1466 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1503 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1503 + 68] = mem[idx + _1466 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1503 + 68] = mem[_1503 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1503 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1689 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1689] = 26
                                                mem[_1689 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                            _1110 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1110] = 26
                                            mem[_1110 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1145 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1145 + 68] = mem[idx + _1110 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1145 + 68] = mem[_1145 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1145 + -mem[64] + 100
                                            _1237 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1237] = 26
                                            mem[_1237 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1465 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1465] = 26
                                                mem[_1465 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1500 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1500 + 68] = mem[idx + _1465 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1500 + 68] = mem[_1500 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1500 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1688 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1688] = 26
                                                    mem[_1688 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1482 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1482] = 26
                                                mem[_1482 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1524 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1524 + 68] = mem[idx + _1482 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1524 + 68] = mem[_1524 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1524 + -mem[64] + 100
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1695 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1695] = 26
                                                    mem[_1695 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                        else:
                                            if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1124 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1124] = 26
                                            mem[_1124 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1165 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1165 + 68] = mem[idx + _1124 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1165 + 68] = mem[_1165 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1165 + -mem[64] + 100
                                            _1260 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1260] = 26
                                            mem[_1260 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                                _1481 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1481] = 26
                                                mem[_1481 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1521 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1521 + 68] = mem[idx + _1481 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1521 + 68] = mem[_1521 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1521 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1694 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1694] = 26
                                                    mem[_1694 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1499 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1499] = 26
                                                mem[_1499 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1547 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1547 + 68] = mem[idx + _1499 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1547 + 68] = mem[_1547 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1547 + -mem[64] + 100
                                                if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1700 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1700] = 26
                                                    mem[_1700 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        _1109 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1109] = 26
                                        mem[_1109 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1142 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1142 + 68] = mem[idx + _1109 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1142 + 68] = mem[_1142 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1142 + -mem[64] + 100
                                        _1233 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1233] = 26
                                        mem[_1233 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1462 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1462] = 26
                                            mem[_1462 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1496 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1496 + 68] = mem[idx + _1462 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1496 + 68] = mem[_1496 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1496 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1687 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1687] = 26
                                                mem[_1687 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1480 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1480] = 26
                                            mem[_1480 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1518 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1518 + 68] = mem[idx + _1480 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1518 + 68] = mem[_1518 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1518 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1693 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1693] = 26
                                                mem[_1693 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                            _1123 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1123] = 26
                                            mem[_1123 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1162 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1162 + 68] = mem[idx + _1123 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1162 + 68] = mem[_1162 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1162 + -mem[64] + 100
                                            _1258 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1258] = 26
                                            mem[_1258 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1479 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1479] = 26
                                                mem[_1479 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1515 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1515 + 68] = mem[idx + _1479 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1515 + 68] = mem[_1515 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1515 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1692 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1692] = 26
                                                    mem[_1692 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1495 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1495] = 26
                                                mem[_1495 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1543 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1543 + 68] = mem[idx + _1495 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1543 + 68] = mem[_1543 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1543 + -mem[64] + 100
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1699 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1699] = 26
                                                    mem[_1699 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                        else:
                                            if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1141 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1141] = 26
                                            mem[_1141 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1183 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1183 + 68] = mem[idx + _1141 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1183 + 68] = mem[_1183 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1183 + -mem[64] + 100
                                            _1279 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1279] = 26
                                            mem[_1279 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                _1494 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1494] = 26
                                                mem[_1494 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1540 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1540 + 68] = mem[idx + _1494 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1540 + 68] = mem[_1540 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1540 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1698 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1698] = 26
                                                    mem[_1698 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1514 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1514] = 26
                                                mem[_1514 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1568 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1568 + 68] = mem[idx + _1514 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1568 + 68] = mem[_1568 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1568 + -mem[64] + 100
                                                if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1702 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1702] = 26
                                                    mem[_1702 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
            idx = idx + 1
            continue 
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
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
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
                else:
                    if block.number <= bonusEndBlock:
                        _895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_895] = 30
                        mem[_895 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _895 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            _952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_952] = 26
                            mem[_952 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _964 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _964 + 68] = mem[idx + _952 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_964 + 68] = mem[_964 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _964 + -mem[64] + 100
                            _998 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_998] = 26
                            mem[_998 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_41f55b11Address)
                            call sub_41f55b11Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1096 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1096] = 26
                                mem[_1096 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1128 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1128 + 68] = mem[idx + _1096 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1128 + 68] = mem[_1128 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1128 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1301 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1301] = 26
                                    mem[_1301 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1112 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1112] = 26
                                mem[_1112 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _1149 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1149 + 68] = mem[idx + _1112 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1149 + 68] = mem[_1149 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1149 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if block.number > bonusEndBlock:
                                    _1317 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1317] = 26
                                    mem[_1317 + 32] = 'SafeMath: division by zero'
                                    BONUS_MULTIPLIER = stor5
                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    bonusEndBlock += blocksPerYear
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                _958 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_958] = 26
                                mem[_958 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _974 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _974 + 68] = mem[idx + _958 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_974 + 68] = mem[_974 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _974 + -mem[64] + 100
                                _1004 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1004] = 26
                                mem[_1004 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1111 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1111] = 26
                                    mem[_1111 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1146 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1146 + 68] = mem[idx + _1111 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1146 + 68] = mem[_1146 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1146 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1316 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1316] = 26
                                        mem[_1316 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1127 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1127] = 26
                                    mem[_1127 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1169 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1169 + 68] = mem[idx + _1127 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1169 + 68] = mem[_1169 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1169 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1337 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1337] = 26
                                        mem[_1337 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                    _963 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_963] = 26
                                    mem[_963 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _980 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _980 + 68] = mem[idx + _963 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_980 + 68] = mem[_980 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _980 + -mem[64] + 100
                                    _1015 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1015] = 26
                                    mem[_1015 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1126 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1126] = 26
                                        mem[_1126 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1166 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1166 + 68] = mem[idx + _1126 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1166 + 68] = mem[_1166 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1166 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1336 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1336] = 26
                                            mem[_1336 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1145 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1145] = 26
                                        mem[_1145 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1188 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1188 + 68] = mem[idx + _1145 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1188 + 68] = mem[_1188 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1188 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1359 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1359] = 26
                                            mem[_1359 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _973 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_973] = 26
                                    mem[_973 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _987 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _987 + 68] = mem[idx + _973 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_987 + 68] = mem[_987 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _987 + -mem[64] + 100
                                    _1023 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1023] = 26
                                    mem[_1023 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1144 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1144] = 26
                                        mem[_1144 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1185 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1185 + 68] = mem[idx + _1144 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1185 + 68] = mem[_1185 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1185 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1358 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1358] = 26
                                            mem[_1358 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1165 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1165] = 26
                                        mem[_1165 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1210 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1210 + 68] = mem[idx + _1165 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1210 + 68] = mem[_1210 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1210 + -mem[64] + 100
                                        if (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1378 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1378] = 26
                                            mem[_1378 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            _897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_897] = 30
                            mem[_897 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _897 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                _938 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_938] = 26
                                mem[_938 + 32] = 'SafeMath: division by zero'
                                _1000 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1000] = 26
                                mem[_1000 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _1020 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1020 + 68] = mem[idx + _1000 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1020 + 68] = mem[_1020 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1020 + -mem[64] + 100
                                _1046 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1046] = 26
                                mem[_1046 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1235 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1235] = 26
                                    mem[_1235 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1275 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1275 + 68] = mem[idx + _1235 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1275 + 68] = mem[_1275 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1275 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1411 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1411] = 26
                                        mem[_1411 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1257 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1257] = 26
                                    mem[_1257 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _1293 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1293 + 68] = mem[idx + _1257 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1293 + 68] = mem[_1293 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1293 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if block.number > bonusEndBlock:
                                        _1419 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1419] = 26
                                        mem[_1419 + 32] = 'SafeMath: division by zero'
                                        BONUS_MULTIPLIER = stor5
                                        if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                            revert with 0, 'SafeMath: addition overflow'
                                        bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _940 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_940] = 26
                                mem[_940 + 32] = 'SafeMath: division by zero'
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                    _1012 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1012] = 26
                                    mem[_1012 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1026 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1026 + 68] = mem[idx + _1012 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1026 + 68] = mem[_1026 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1026 + -mem[64] + 100
                                    _1055 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1055] = 26
                                    mem[_1055 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1256 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1256] = 26
                                        mem[_1256 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1290 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1290 + 68] = mem[idx + _1256 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1290 + 68] = mem[_1290 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1290 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1418 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1418] = 26
                                            mem[_1418 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1274 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1274] = 26
                                        mem[_1274 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1310 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1310 + 68] = mem[idx + _1274 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1310 + 68] = mem[_1310 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1310 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1430 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1430] = 26
                                            mem[_1430 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2:
                                        _1019 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1019] = 26
                                        mem[_1019 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1029 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1029 + 68] = mem[idx + _1019 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1029 + 68] = mem[_1029 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1029 + -mem[64] + 100
                                        _1067 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1067] = 26
                                        mem[_1067 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1273 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1273] = 26
                                            mem[_1273 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1307 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1307 + 68] = mem[idx + _1273 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1307 + 68] = mem[_1307 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1307 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1429 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1429] = 26
                                                mem[_1429 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1289 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1289] = 26
                                            mem[_1289 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1329 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1329 + 68] = mem[idx + _1289 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1329 + 68] = mem[_1329 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1329 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1445 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1445] = 26
                                                mem[_1445 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1025 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1025] = 26
                                        mem[_1025 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1035 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1035 + 68] = mem[idx + _1025 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1035 + 68] = mem[_1035 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1035 + -mem[64] + 100
                                        _1073 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1073] = 26
                                        mem[_1073 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                            _1288 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1288] = 26
                                            mem[_1288 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1326 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1326 + 68] = mem[idx + _1288 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1326 + 68] = mem[_1326 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1326 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1444 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1444] = 26
                                                mem[_1444 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1306 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1306] = 26
                                            mem[_1306 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1348 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1348 + 68] = mem[idx + _1306 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1348 + 68] = mem[_1348 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1348 + -mem[64] + 100
                                            if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1464 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1464] = 26
                                                mem[_1464 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                        else:
                            _896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_896] = 30
                            mem[_896 + 32] = 'SafeMath: subtraction overflow'
                            if bonusEndBlock > block.number:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _896 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - bonusEndBlock:
                                _937 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_937] = 26
                                mem[_937 + 32] = 'SafeMath: division by zero'
                                _943 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_943] = 30
                                mem[_943 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > bonusEndBlock:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _943 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not bonusEndBlock - poolInfo[idx].field_512:
                                    _1079 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1079] = 26
                                    mem[_1079 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _1102 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1102 + 68] = mem[idx + _1079 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1102 + 68] = mem[_1102 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1102 + -mem[64] + 100
                                    _1183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1183] = 26
                                    mem[_1183 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_41f55b11Address)
                                    call sub_41f55b11Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1428 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1428] = 26
                                        mem[_1428 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1461 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1461 + 68] = mem[idx + _1428 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1461 + 68] = mem[_1461 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1461 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1662 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1662] = 26
                                            mem[_1662 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1443 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1443] = 26
                                        mem[_1443 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _1481 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1481 + 68] = mem[idx + _1443 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1481 + 68] = mem[_1481 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1481 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if block.number > bonusEndBlock:
                                            _1674 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1674] = 26
                                            mem[_1674 + 32] = 'SafeMath: division by zero'
                                            BONUS_MULTIPLIER = stor5
                                            if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                revert with 0, 'SafeMath: addition overflow'
                                            bonusEndBlock += blocksPerYear
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        _1089 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1089] = 26
                                        mem[_1089 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1119 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1119 + 68] = mem[idx + _1089 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1119 + 68] = mem[_1119 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1119 + -mem[64] + 100
                                        _1206 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1206] = 26
                                        mem[_1206 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1442 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1442] = 26
                                            mem[_1442 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1478 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1478 + 68] = mem[idx + _1442 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1478 + 68] = mem[_1478 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1478 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1673 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1673] = 26
                                                mem[_1673 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1460 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1460] = 26
                                            mem[_1460 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1500 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1500 + 68] = mem[idx + _1460 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1500 + 68] = mem[_1500 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1500 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1681 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1681] = 26
                                                mem[_1681 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                            _1101 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1101] = 26
                                            mem[_1101 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1138 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1138 + 68] = mem[idx + _1101 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1138 + 68] = mem[_1138 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1138 + -mem[64] + 100
                                            _1231 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1231] = 26
                                            mem[_1231 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1459 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1459] = 26
                                                mem[_1459 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1497 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1497 + 68] = mem[idx + _1459 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1497 + 68] = mem[_1497 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1497 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1680 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1680] = 26
                                                    mem[_1680 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1477 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1477] = 26
                                                mem[_1477 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1521 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1521 + 68] = mem[idx + _1477 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1521 + 68] = mem[_1521 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1521 + -mem[64] + 100
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1687 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1687] = 26
                                                    mem[_1687 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                        else:
                                            if (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1118 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1118] = 26
                                            mem[_1118 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1159 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1159 + 68] = mem[idx + _1118 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1159 + 68] = mem[_1159 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1159 + -mem[64] + 100
                                            _1252 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1252] = 26
                                            mem[_1252 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                _1476 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1476] = 26
                                                mem[_1476 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1518 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1518 + 68] = mem[idx + _1476 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1518 + 68] = mem[_1518 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1518 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1686 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1686] = 26
                                                    mem[_1686 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1496 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1496] = 26
                                                mem[_1496 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1544 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1544 + 68] = mem[idx + _1496 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1544 + 68] = mem[_1544 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1544 + -mem[64] + 100
                                                if (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1691 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1691] = 26
                                                    mem[_1691 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / block.number - bonusEndBlock != BONUS_MULTIPLIER:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _939 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_939] = 26
                                mem[_939 + 32] = 'SafeMath: division by zero'
                                _944 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_944] = 30
                                mem[_944 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > bonusEndBlock:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _944 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not bonusEndBlock - poolInfo[idx].field_512:
                                    if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                        _1086 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1086] = 26
                                        mem[_1086 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1115 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1115 + 68] = mem[idx + _1086 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1115 + 68] = mem[_1115 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1115 + -mem[64] + 100
                                        _1201 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1201] = 26
                                        mem[_1201 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1439 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1439] = 26
                                            mem[_1439 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1473 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1473 + 68] = mem[idx + _1439 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1473 + 68] = mem[_1473 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1473 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1670 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1670] = 26
                                                mem[_1670 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1456 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1456] = 26
                                            mem[_1456 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1493 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1493 + 68] = mem[idx + _1456 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1493 + 68] = mem[_1493 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1493 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1679 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1679] = 26
                                                mem[_1679 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != rewardsPerBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2:
                                            _1100 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1100] = 26
                                            mem[_1100 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1135 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1135 + 68] = mem[idx + _1100 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1135 + 68] = mem[_1135 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1135 + -mem[64] + 100
                                            _1227 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1227] = 26
                                            mem[_1227 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1455 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1455] = 26
                                                mem[_1455 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1490 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1490 + 68] = mem[idx + _1455 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1490 + 68] = mem[_1490 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1490 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1678 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1678] = 26
                                                    mem[_1678 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1472 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1472] = 26
                                                mem[_1472 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1514 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1514 + 68] = mem[idx + _1472 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1514 + 68] = mem[_1514 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1514 + -mem[64] + 100
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1685 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1685] = 26
                                                    mem[_1685 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                        else:
                                            if poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1114 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1114] = 26
                                            mem[_1114 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1155 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1155 + 68] = mem[idx + _1114 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1155 + 68] = mem[_1155 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1155 + -mem[64] + 100
                                            _1250 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1250] = 26
                                            mem[_1250 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint:
                                                _1471 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1471] = 26
                                                mem[_1471 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1511 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1511 + 68] = mem[idx + _1471 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1511 + 68] = mem[_1511 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1511 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1684 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1684] = 26
                                                    mem[_1684 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1489 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1489] = 26
                                                mem[_1489 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1537 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1537 + 68] = mem[idx + _1489 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1537 + 68] = mem[_1537 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1537 + -mem[64] + 100
                                                if (10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * rewardsPerBlock * (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1690 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1690] = 26
                                                    mem[_1690 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        _1099 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1099] = 26
                                        mem[_1099 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            _1132 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1132 + 68] = mem[idx + _1099 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1132 + 68] = mem[_1132 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1132 + -mem[64] + 100
                                        _1223 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1223] = 26
                                        mem[_1223 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(sub_41f55b11Address)
                                        call sub_41f55b11Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1452 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1452] = 26
                                            mem[_1452 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1486 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1486 + 68] = mem[idx + _1452 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1486 + 68] = mem[_1486 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1486 + -mem[64] + 100
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1677 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1677] = 26
                                                mem[_1677 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1470 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1470] = 26
                                            mem[_1470 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                _1508 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1508 + 68] = mem[idx + _1470 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1508 + 68] = mem[_1508 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1508 + -mem[64] + 100
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            if block.number > bonusEndBlock:
                                                _1683 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1683] = 26
                                                mem[_1683 + 32] = 'SafeMath: division by zero'
                                                BONUS_MULTIPLIER = stor5
                                                if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                bonusEndBlock += blocksPerYear
                                    else:
                                        if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2) + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardsPerBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                            _1113 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1113] = 26
                                            mem[_1113 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1152 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1152 + 68] = mem[idx + _1113 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1152 + 68] = mem[_1152 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1152 + -mem[64] + 100
                                            _1248 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1248] = 26
                                            mem[_1248 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1469 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1469] = 26
                                                mem[_1469 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1505 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1505 + 68] = mem[idx + _1469 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1505 + 68] = mem[_1505 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1505 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1682 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1682] = 26
                                                    mem[_1682 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1485 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1485] = 26
                                                mem[_1485 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1533 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1533 + 68] = mem[idx + _1485 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1533 + 68] = mem[_1533 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1533 + -mem[64] + 100
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1689 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1689] = 26
                                                    mem[_1689 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                        else:
                                            if ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1131 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1131] = 26
                                            mem[_1131 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                _1173 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1173 + 68] = mem[idx + _1131 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1173 + 68] = mem[_1173 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1173 + -mem[64] + 100
                                            _1269 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1269] = 26
                                            mem[_1269 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(sub_41f55b11Address)
                                            call sub_41f55b11Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                _1484 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1484] = 26
                                                mem[_1484 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1530 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1530 + 68] = mem[idx + _1484 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1530 + 68] = mem[_1530 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1530 + -mem[64] + 100
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1688 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1688] = 26
                                                    mem[_1688 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
                                            else:
                                                if 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1504 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1504] = 26
                                                mem[_1504 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[0]:
                                                    _1558 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1558 + 68] = mem[idx + _1504 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1558 + 68] = mem[_1558 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1558 + -mem[64] + 100
                                                if (10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * ((block.number * BONUS_MULTIPLIER) - (bonusEndBlock * BONUS_MULTIPLIER) / 2 * rewardsPerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                if block.number > bonusEndBlock:
                                                    _1692 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1692] = 26
                                                    mem[_1692 + 32] = 'SafeMath: division by zero'
                                                    BONUS_MULTIPLIER = stor5
                                                    if blocksPerYear + bonusEndBlock < bonusEndBlock:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    bonusEndBlock += blocksPerYear
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



}
