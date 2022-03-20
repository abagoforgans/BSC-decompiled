contract main {




// =====================  Runtime code  =====================


#
#  - getReward(uint256 arg1)
#
const BONUS_MULTIPLIER = 2


address owner;
address farmAddress;
address devAddr;
uint256 bonusEndBlock;
uint256 stor4;
uint256 sub_8b0c2606;
uint32 stor5;
address migratorAddress;
uint256 stor5;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 sub_c467d559;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;

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

function farm() payable {
    return farmAddress
}

function startBlock() payable {
    return startBlock
}

function migrator() payable {
    return address(migratorAddress)
}

function sub_8b0c2606(?) payable {
    return uint256(sub_8b0c2606)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c467d559(?) payable {
    return sub_c467d559
}

function devAddr() payable {
    return devAddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'dev: wut?'
    devAddr = arg1
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

function balanceOf(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < poolInfo.length:
        return userInfo[arg1][address(arg2)].field_0
    else:
        return 0
}

function sub_739d016d(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        return 0
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
        if 2 * arg2 - arg1 / arg2 - arg1 != 2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
    if 2 * bonusEndBlock - arg1 / bonusEndBlock - arg1 != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if arg2 - bonusEndBlock + (2 * bonusEndBlock - arg1) < 2 * bonusEndBlock - arg1:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - bonusEndBlock + (2 * bonusEndBlock - arg1))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
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
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(migratorAddress):
        revert with 0, 'migrate: no migrator'
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.allowance(address rg1, address rg2) with:
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
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
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
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'migrate: bad'
    poolInfo[arg1].field_0 = address(ext_call.return_data[0])
}

function sub_6c03dd35(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        return 0
    if block.number >= bonusEndBlock:
        if not uint256(sub_8b0c2606):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not sub_c467d559:
                revert with 0, 'SafeMath: division by zero'
            return (0 / totalAllocPoint / sub_c467d559)
        if poolInfo[arg1].field_256 * uint256(sub_8b0c2606) / uint256(sub_8b0c2606) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not poolInfo[arg1].field_256 * uint256(sub_8b0c2606):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not sub_c467d559:
                revert with 0, 'SafeMath: division by zero'
            return (0 / totalAllocPoint / sub_c467d559)
        if 24 * 3600 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) / poolInfo[arg1].field_256 * uint256(sub_8b0c2606) != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not sub_c467d559:
            revert with 0, 'SafeMath: division by zero'
        return (24 * 3600 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) / totalAllocPoint / sub_c467d559)
    if uint255(stor4) != uint256(sub_8b0c2606):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 2 * uint256(sub_8b0c2606):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not sub_c467d559:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalAllocPoint / sub_c467d559)
    if poolInfo[arg1].field_256 * 2 * uint256(sub_8b0c2606) / 2 * uint256(sub_8b0c2606) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not poolInfo[arg1].field_256 * 2 * uint256(sub_8b0c2606):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not sub_c467d559:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalAllocPoint / sub_c467d559)
    if 24 * 3600 * poolInfo[arg1].field_256 * 2 * uint256(sub_8b0c2606) / poolInfo[arg1].field_256 * 2 * uint256(sub_8b0c2606) != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not sub_c467d559:
        revert with 0, 'SafeMath: division by zero'
    return (24 * 3600 * poolInfo[arg1].field_256 * 2 * uint256(sub_8b0c2606) / totalAllocPoint / sub_c467d559)
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
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function earned(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        return 0
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
        if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * block.number - poolInfo[arg1].field_512:
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
        if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512:
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
        if poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
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
        if 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
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
        if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
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
        if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
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
    if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != uint256(sub_8b0c2606):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
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
    if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function exit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(farmAddress)
            staticcall farmAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmAddress)
            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][msg.sender].field_256
            else:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(farmAddress)
            staticcall farmAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmAddress)
            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][msg.sender].field_0 = 0
        userInfo[arg1][msg.sender].field_256 = 0
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
        mem[580 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][msg.sender].field_0, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(farmAddress)
                staticcall farmAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmAddress)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(farmAddress)
                staticcall farmAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmAddress)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][msg.sender].field_0 = 0
            userInfo[arg1][msg.sender].field_256 = 0
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
            mem[580 len 0] = 0
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args userInfo[arg1][msg.sender].field_0, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(farmAddress)
                    staticcall farmAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(farmAddress)
                    staticcall farmAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 = 0
                userInfo[arg1][msg.sender].field_256 = 0
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[772 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
                mem[836 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args userInfo[arg1][msg.sender].field_0, mem[836 len 4]
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
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 = 0
                    userInfo[arg1][msg.sender].field_256 = 0
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
                    mem[836 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args userInfo[arg1][msg.sender].field_0, mem[836 len 4]
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
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 = 0
                    userInfo[arg1][msg.sender].field_256 = 0
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
                    mem[900 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args userInfo[arg1][msg.sender].field_0, mem[900 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 947 len 22]
    emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(farmAddress)
            staticcall farmAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmAddress)
            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][msg.sender].field_256
            else:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(farmAddress)
            staticcall farmAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmAddress)
            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                call farmAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > userInfo[arg1][msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][msg.sender].field_0 -= arg2
        if not userInfo[arg1][msg.sender].field_0 - arg2:
            userInfo[arg1][msg.sender].field_256 = 0
        else:
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
        mem[580 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(farmAddress)
                staticcall farmAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmAddress)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(farmAddress)
                staticcall farmAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmAddress)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][msg.sender].field_0 -= arg2
            if not userInfo[arg1][msg.sender].field_0 - arg2:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
            mem[580 len 0] = 0
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(farmAddress)
                    staticcall farmAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(farmAddress)
                    staticcall farmAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not userInfo[arg1][msg.sender].field_0 - arg2:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[772 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[836 len 0] = 0
                call poolInfo[arg1].field_0 with:
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
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[836 len 0] = 0
                    call poolInfo[arg1].field_0 with:
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
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[900 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[900 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 947 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
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
            _564 = mem[64]
            mem[64] = mem[64] + 64
            mem[_564] = 30
            mem[_564 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _564 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _635 = mem[64]
                mem[64] = mem[64] + 64
                mem[_635] = 26
                mem[_635 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _647 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _647 + 68] = mem[idx + _635 + 32]
                        idx = idx + 32
                        continue 
                    mem[_647 + 68] = mem[_647 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _647 + -mem[64] + 100
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 26
                mem[_682 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_831] = 26
                    mem[_831 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _866 + 68] = mem[idx + _831 + 32]
                        idx = idx + 32
                        continue 
                    mem[_866 + 68] = mem[_866 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _866 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_848] = 26
                mem[_848 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _887 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _887 + 68] = mem[idx + _848 + 32]
                    idx = idx + 32
                    continue 
                mem[_887 + 68] = mem[_887 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _887 + -mem[64] + 100
            if 2 * block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * block.number - poolInfo[idx].field_512:
                _642 = mem[64]
                mem[64] = mem[64] + 64
                mem[_642] = 26
                mem[_642 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _656 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _656 + 68] = mem[idx + _642 + 32]
                        idx = idx + 32
                        continue 
                    mem[_656 + 68] = mem[_656 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _656 + -mem[64] + 100
                _687 = mem[64]
                mem[64] = mem[64] + 64
                mem[_687] = 26
                mem[_687 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_847] = 26
                    mem[_847 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _884 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _884 + 68] = mem[idx + _847 + 32]
                        idx = idx + 32
                        continue 
                    mem[_884 + 68] = mem[_884 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _884 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _865 = mem[64]
                mem[64] = mem[64] + 64
                mem[_865] = 26
                mem[_865 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _907 + 68] = mem[idx + _865 + 32]
                    idx = idx + 32
                    continue 
                mem[_907 + 68] = mem[_907 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _907 + -mem[64] + 100
            if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / 2 * block.number - poolInfo[idx].field_512 != uint256(sub_8b0c2606):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512:
                _646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_646] = 26
                mem[_646 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _665 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _665 + 68] = mem[idx + _646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_665 + 68] = mem[_665 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _665 + -mem[64] + 100
                _693 = mem[64]
                mem[64] = mem[64] + 64
                mem[_693] = 26
                mem[_693 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_864] = 26
                    mem[_864 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _904 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _904 + 68] = mem[idx + _864 + 32]
                        idx = idx + 32
                        continue 
                    mem[_904 + 68] = mem[_904 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _904 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _883 = mem[64]
                mem[64] = mem[64] + 64
                mem[_883] = 26
                mem[_883 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _924 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _924 + 68] = mem[idx + _883 + 32]
                    idx = idx + 32
                    continue 
                mem[_924 + 68] = mem[_924 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _924 + -mem[64] + 100
            if poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _655 = mem[64]
            mem[64] = mem[64] + 64
            mem[_655] = 26
            mem[_655 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _673 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _673 + 68] = mem[idx + _655 + 32]
                    idx = idx + 32
                    continue 
                mem[_673 + 68] = mem[_673 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _673 + -mem[64] + 100
            _700 = mem[64]
            mem[64] = mem[64] + 64
            mem[_700] = 26
            mem[_700 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint:
                _882 = mem[64]
                mem[64] = mem[64] + 64
                mem[_882] = 26
                mem[_882 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _921 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _921 + 68] = mem[idx + _882 + 32]
                    idx = idx + 32
                    continue 
                mem[_921 + 68] = mem[_921 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _921 + -mem[64] + 100
            if 10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _903 = mem[64]
            mem[64] = mem[64] + 64
            mem[_903] = 26
            mem[_903 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _937 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _937 + 68] = mem[idx + _903 + 32]
                idx = idx + 32
                continue 
            mem[_937 + 68] = mem[_937 + 74 len 26]
            revert with memory
              from mem[64]
               len _937 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _566 = mem[64]
            mem[64] = mem[64] + 64
            mem[_566] = 30
            mem[_566 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _566 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_624] = 26
                mem[_624 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _629 + 68] = mem[idx + _624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_629 + 68] = mem[_629 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _629 + -mem[64] + 100
                _653 = mem[64]
                mem[64] = mem[64] + 64
                mem[_653] = 26
                mem[_653 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_798] = 26
                    mem[_798 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _812 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _812 + 68] = mem[idx + _798 + 32]
                        idx = idx + 32
                        continue 
                    mem[_812 + 68] = mem[_812 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _812 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_805] = 26
                mem[_805 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _826 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _826 + 68] = mem[idx + _805 + 32]
                    idx = idx + 32
                    continue 
                mem[_826 + 68] = mem[_826 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _826 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[idx].field_512 != uint256(sub_8b0c2606):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)):
                _627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_627] = 26
                mem[_627 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _632 + 68] = mem[idx + _627 + 32]
                        idx = idx + 32
                        continue 
                    mem[_632 + 68] = mem[_632 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _632 + -mem[64] + 100
                _663 = mem[64]
                mem[64] = mem[64] + 64
                mem[_663] = 26
                mem[_663 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _804 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_804] = 26
                    mem[_804 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _823 + 68] = mem[idx + _804 + 32]
                        idx = idx + 32
                        continue 
                    mem[_823 + 68] = mem[_823 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _823 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_811] = 26
                mem[_811 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                    mem[idx + _841 + 68] = mem[idx + _811 + 32]
                    idx = idx + 32
                    continue 
                mem[_841 + 68] = mem[_841 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _841 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _628 = mem[64]
            mem[64] = mem[64] + 64
            mem[_628] = 26
            mem[_628 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _636 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _636 + 68] = mem[idx + _628 + 32]
                    idx = idx + 32
                    continue 
                mem[_636 + 68] = mem[_636 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _636 + -mem[64] + 100
            _671 = mem[64]
            mem[64] = mem[64] + 64
            mem[_671] = 26
            mem[_671 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
                _810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_810] = 26
                mem[_810 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                    mem[idx + _838 + 68] = mem[idx + _810 + 32]
                    idx = idx + 32
                    continue 
                mem[_838 + 68] = mem[_838 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _838 + -mem[64] + 100
            if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _822 = mem[64]
            mem[64] = mem[64] + 64
            mem[_822] = 26
            mem[_822 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _855 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _855 + 68] = mem[idx + _822 + 32]
                idx = idx + 32
                continue 
            mem[_855 + 68] = mem[_855 + 74 len 26]
            revert with memory
              from mem[64]
               len _855 + -mem[64] + 100
        _565 = mem[64]
        mem[64] = mem[64] + 64
        mem[_565] = 30
        mem[_565 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _565 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _587 = mem[64]
        mem[64] = mem[64] + 64
        mem[_587] = 30
        mem[_587 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _587 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_697] = 26
                mem[_697 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _711 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _711 + 68] = mem[idx + _697 + 32]
                        idx = idx + 32
                        continue 
                    mem[_711 + 68] = mem[_711 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _711 + -mem[64] + 100
                _763 = mem[64]
                mem[64] = mem[64] + 64
                mem[_763] = 26
                mem[_763 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
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
                    _1003 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1003 + 68] = mem[idx + _976 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1003 + 68] = mem[_1003 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1003 + -mem[64] + 100
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
                _1017 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1017 + 68] = mem[idx + _991 + 32]
                    idx = idx + 32
                    continue 
                mem[_1017 + 68] = mem[_1017 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1017 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 26
                mem[_705 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _723 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _723 + 68] = mem[idx + _705 + 32]
                        idx = idx + 32
                        continue 
                    mem[_723 + 68] = mem[_723 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _723 + -mem[64] + 100
                _776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_776] = 26
                mem[_776 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1014 + 68] = mem[idx + _990 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 68] = mem[_1014 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1002 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1002] = 26
                mem[_1002 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1030 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1030 + 68] = mem[idx + _1002 + 32]
                    idx = idx + 32
                    continue 
                mem[_1030 + 68] = mem[_1030 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1030 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_710] = 26
            mem[_710 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _734 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _734 + 68] = mem[idx + _710 + 32]
                    idx = idx + 32
                    continue 
                mem[_734 + 68] = mem[_734 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _734 + -mem[64] + 100
            _786 = mem[64]
            mem[64] = mem[64] + 64
            mem[_786] = 26
            mem[_786 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
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
                _1027 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1027 + 68] = mem[idx + _1001 + 32]
                    idx = idx + 32
                    continue 
                mem[_1027 + 68] = mem[_1027 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1027 + -mem[64] + 100
            if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1013 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1013] = 26
            mem[_1013 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1041 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1041 + 68] = mem[idx + _1013 + 32]
                idx = idx + 32
                continue 
            mem[_1041 + 68] = mem[_1041 + 74 len 26]
            revert with memory
              from mem[64]
               len _1041 + -mem[64] + 100
        if 2 * bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) < 2 * bonusEndBlock - poolInfo[idx].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512):
            _704 = mem[64]
            mem[64] = mem[64] + 64
            mem[_704] = 26
            mem[_704 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _720 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _720 + 68] = mem[idx + _704 + 32]
                    idx = idx + 32
                    continue 
                mem[_720 + 68] = mem[_720 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _720 + -mem[64] + 100
            _772 = mem[64]
            mem[64] = mem[64] + 64
            mem[_772] = 26
            mem[_772 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
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
                _1010 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1010 + 68] = mem[idx + _987 + 32]
                    idx = idx + 32
                    continue 
                mem[_1010 + 68] = mem[_1010 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1010 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1000 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1000] = 26
            mem[_1000 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1024 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1024 + 68] = mem[idx + _1000 + 32]
                idx = idx + 32
                continue 
            mem[_1024 + 68] = mem[_1024 + 74 len 26]
            revert with memory
              from mem[64]
               len _1024 + -mem[64] + 100
        if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) != uint256(sub_8b0c2606):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)):
            _709 = mem[64]
            mem[64] = mem[64] + 64
            mem[_709] = 26
            mem[_709 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _731 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _731 + 68] = mem[idx + _709 + 32]
                    idx = idx + 32
                    continue 
                mem[_731 + 68] = mem[_731 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _731 + -mem[64] + 100
            _784 = mem[64]
            mem[64] = mem[64] + 64
            mem[_784] = 26
            mem[_784 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_999] = 26
                mem[_999 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1021 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1021 + 68] = mem[idx + _999 + 32]
                    idx = idx + 32
                    continue 
                mem[_1021 + 68] = mem[_1021 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1021 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1009 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1009] = 26
            mem[_1009 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1037 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1037 + 68] = mem[idx + _1009 + 32]
                idx = idx + 32
                continue 
            mem[_1037 + 68] = mem[_1037 + 74 len 26]
            revert with memory
              from mem[64]
               len _1037 + -mem[64] + 100
        if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _719 = mem[64]
        mem[64] = mem[64] + 64
        mem[_719] = 26
        mem[_719 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _744 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _744 + 68] = mem[idx + _719 + 32]
                idx = idx + 32
                continue 
            mem[_744 + 68] = mem[_744 + 74 len 26]
            revert with memory
              from mem[64]
               len _744 + -mem[64] + 100
        _791 = mem[64]
        mem[64] = mem[64] + 64
        mem[_791] = 26
        mem[_791 + 32] = 'SafeMath: division by zero'
        require ext_code.size(farmAddress)
        call farmAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(farmAddress)
        call farmAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
            _1008 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1008] = 26
            mem[_1008 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1034 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1034 + 68] = mem[idx + _1008 + 32]
                idx = idx + 32
                continue 
            mem[_1034 + 68] = mem[_1034 + 74 len 26]
            revert with memory
              from mem[64]
               len _1034 + -mem[64] + 100
        if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1020 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1020] = 26
        mem[_1020 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1048 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1048 + 68] = mem[idx + _1020 + 32]
            idx = idx + 32
            continue 
        mem[_1048 + 68] = mem[_1048 + 74 len 26]
        revert with memory
          from mem[64]
           len _1048 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
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
                _619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_619] = 30
                mem[_619 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _619 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_691] = 26
                    mem[_691 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _703 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _703 + 68] = mem[idx + _691 + 32]
                            idx = idx + 32
                            continue 
                        mem[_703 + 68] = mem[_703 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _703 + -mem[64] + 100
                    _738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_738] = 26
                    mem[_738 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_887] = 26
                        mem[_887 + 32] = 'SafeMath: division by zero'
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
                            mem[idx + _922 + 68] = mem[idx + _887 + 32]
                            idx = idx + 32
                            continue 
                        mem[_922 + 68] = mem[_922 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _922 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_904] = 26
                    mem[_904 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _943 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _943 + 68] = mem[idx + _904 + 32]
                        idx = idx + 32
                        continue 
                    mem[_943 + 68] = mem[_943 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _943 + -mem[64] + 100
                if 2 * block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * block.number - poolInfo[idx].field_512:
                    _698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_698] = 26
                    mem[_698 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _712 + 68] = mem[idx + _698 + 32]
                            idx = idx + 32
                            continue 
                        mem[_712 + 68] = mem[_712 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _712 + -mem[64] + 100
                    _743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_743] = 26
                    mem[_743 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _903 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_903] = 26
                        mem[_903 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _940 + 68] = mem[idx + _903 + 32]
                            idx = idx + 32
                            continue 
                        mem[_940 + 68] = mem[_940 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _940 + -mem[64] + 100
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
                    _963 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _963 + 68] = mem[idx + _921 + 32]
                        idx = idx + 32
                        continue 
                    mem[_963 + 68] = mem[_963 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _963 + -mem[64] + 100
                if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / 2 * block.number - poolInfo[idx].field_512 != uint256(sub_8b0c2606):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512:
                    _702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_702] = 26
                    mem[_702 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _721 + 68] = mem[idx + _702 + 32]
                            idx = idx + 32
                            continue 
                        mem[_721 + 68] = mem[_721 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _721 + -mem[64] + 100
                    _749 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_749] = 26
                    mem[_749 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
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
                        _960 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _960 + 68] = mem[idx + _920 + 32]
                            idx = idx + 32
                            continue 
                        mem[_960 + 68] = mem[_960 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _960 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_939] = 26
                    mem[_939 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _980 + 68] = mem[idx + _939 + 32]
                        idx = idx + 32
                        continue 
                    mem[_980 + 68] = mem[_980 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _980 + -mem[64] + 100
                if poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_711] = 26
                mem[_711 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _729 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _729 + 68] = mem[idx + _711 + 32]
                        idx = idx + 32
                        continue 
                    mem[_729 + 68] = mem[_729 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _729 + -mem[64] + 100
                _756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_756] = 26
                mem[_756 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint:
                    _938 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_938] = 26
                    mem[_938 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _977 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _977 + 68] = mem[idx + _938 + 32]
                        idx = idx + 32
                        continue 
                    mem[_977 + 68] = mem[_977 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _977 + -mem[64] + 100
                if 10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _959 = mem[64]
                mem[64] = mem[64] + 64
                mem[_959] = 26
                mem[_959 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _993 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _993 + 68] = mem[idx + _959 + 32]
                    idx = idx + 32
                    continue 
                mem[_993 + 68] = mem[_993 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _993 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_622] = 30
                mem[_622 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _622 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _680 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_680] = 26
                    mem[_680 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _685 + 68] = mem[idx + _680 + 32]
                            idx = idx + 32
                            continue 
                        mem[_685 + 68] = mem[_685 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _685 + -mem[64] + 100
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _854 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_854] = 26
                        mem[_854 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _868 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _868 + 68] = mem[idx + _854 + 32]
                            idx = idx + 32
                            continue 
                        mem[_868 + 68] = mem[_868 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _868 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _861 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_861] = 26
                    mem[_861 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _882 + 68] = mem[idx + _861 + 32]
                        idx = idx + 32
                        continue 
                    mem[_882 + 68] = mem[_882 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _882 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[idx].field_512 != uint256(sub_8b0c2606):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)):
                    _683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_683] = 26
                    mem[_683 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _688 + 68] = mem[idx + _683 + 32]
                            idx = idx + 32
                            continue 
                        mem[_688 + 68] = mem[_688 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _688 + -mem[64] + 100
                    _719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_719] = 26
                    mem[_719 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_860] = 26
                        mem[_860 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _879 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _879 + 68] = mem[idx + _860 + 32]
                            idx = idx + 32
                            continue 
                        mem[_879 + 68] = mem[_879 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _879 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_867] = 26
                    mem[_867 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _897 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _897 + 68] = mem[idx + _867 + 32]
                        idx = idx + 32
                        continue 
                    mem[_897 + 68] = mem[_897 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _897 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_684] = 26
                mem[_684 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _692 + 68] = mem[idx + _684 + 32]
                        idx = idx + 32
                        continue 
                    mem[_692 + 68] = mem[_692 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _692 + -mem[64] + 100
                _727 = mem[64]
                mem[64] = mem[64] + 64
                mem[_727] = 26
                mem[_727 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
                    _866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_866] = 26
                    mem[_866 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _894 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _894 + 68] = mem[idx + _866 + 32]
                        idx = idx + 32
                        continue 
                    mem[_894 + 68] = mem[_894 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _894 + -mem[64] + 100
                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_878] = 26
                mem[_878 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _911 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _911 + 68] = mem[idx + _878 + 32]
                    idx = idx + 32
                    continue 
                mem[_911 + 68] = mem[_911 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _911 + -mem[64] + 100
            _621 = mem[64]
            mem[64] = mem[64] + 64
            mem[_621] = 30
            mem[_621 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _621 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _643 = mem[64]
            mem[64] = mem[64] + 64
            mem[_643] = 30
            mem[_643 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _643 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _753 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_753] = 26
                    mem[_753 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _767 + 68] = mem[idx + _753 + 32]
                            idx = idx + 32
                            continue 
                        mem[_767 + 68] = mem[_767 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _767 + -mem[64] + 100
                    _819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_819] = 26
                    mem[_819 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1032 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1032] = 26
                        mem[_1032 + 32] = 'SafeMath: division by zero'
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
                            mem[idx + _1059 + 68] = mem[idx + _1032 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1059 + 68] = mem[_1059 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1059 + -mem[64] + 100
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
                    _1073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1073 + 68] = mem[idx + _1047 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                    _761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_761] = 26
                    mem[_761 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _779 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _779 + 68] = mem[idx + _761 + 32]
                            idx = idx + 32
                            continue 
                        mem[_779 + 68] = mem[_779 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _779 + -mem[64] + 100
                    _832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_832] = 26
                    mem[_832 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        _1070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1070 + 68] = mem[idx + _1046 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1070 + 68] = mem[_1070 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1070 + -mem[64] + 100
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
                    _1086 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1086 + 68] = mem[idx + _1058 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1086 + 68] = mem[_1086 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1086 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _766 = mem[64]
                mem[64] = mem[64] + 64
                mem[_766] = 26
                mem[_766 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _790 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _790 + 68] = mem[idx + _766 + 32]
                        idx = idx + 32
                        continue 
                    mem[_790 + 68] = mem[_790 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _790 + -mem[64] + 100
                _842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_842] = 26
                mem[_842 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
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
                    _1083 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1083 + 68] = mem[idx + _1057 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1083 + 68] = mem[_1083 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1083 + -mem[64] + 100
                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1069] = 26
                mem[_1069 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1097 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1097 + 68] = mem[idx + _1069 + 32]
                    idx = idx + 32
                    continue 
                mem[_1097 + 68] = mem[_1097 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1097 + -mem[64] + 100
            if 2 * bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) < 2 * bonusEndBlock - poolInfo[idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512):
                _760 = mem[64]
                mem[64] = mem[64] + 64
                mem[_760] = 26
                mem[_760 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _776 + 68] = mem[idx + _760 + 32]
                        idx = idx + 32
                        continue 
                    mem[_776 + 68] = mem[_776 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _776 + -mem[64] + 100
                _828 = mem[64]
                mem[64] = mem[64] + 64
                mem[_828] = 26
                mem[_828 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1043] = 26
                    mem[_1043 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1066 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1066 + 68] = mem[idx + _1043 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1066 + 68] = mem[_1066 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1066 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1056 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1056] = 26
                mem[_1056 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1080 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1080 + 68] = mem[idx + _1056 + 32]
                    idx = idx + 32
                    continue 
                mem[_1080 + 68] = mem[_1080 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1080 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) != uint256(sub_8b0c2606):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)):
                _765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_765] = 26
                mem[_765 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _787 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _787 + 68] = mem[idx + _765 + 32]
                        idx = idx + 32
                        continue 
                    mem[_787 + 68] = mem[_787 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _787 + -mem[64] + 100
                _840 = mem[64]
                mem[64] = mem[64] + 64
                mem[_840] = 26
                mem[_840 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1055] = 26
                    mem[_1055 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1077 + 68] = mem[idx + _1055 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1077 + 68] = mem[_1077 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1077 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1065 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1065] = 26
                mem[_1065 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1093 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1093 + 68] = mem[idx + _1065 + 32]
                    idx = idx + 32
                    continue 
                mem[_1093 + 68] = mem[_1093 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1093 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_775] = 26
            mem[_775 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _800 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _800 + 68] = mem[idx + _775 + 32]
                    idx = idx + 32
                    continue 
                mem[_800 + 68] = mem[_800 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _800 + -mem[64] + 100
            _847 = mem[64]
            mem[64] = mem[64] + 64
            mem[_847] = 26
            mem[_847 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
                _1064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1064] = 26
                mem[_1064 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1090 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1090 + 68] = mem[idx + _1064 + 32]
                    idx = idx + 32
                    continue 
                mem[_1090 + 68] = mem[_1090 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1090 + -mem[64] + 100
            if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1076 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1076] = 26
            mem[_1076 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1104 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1104 + 68] = mem[idx + _1076 + 32]
                idx = idx + 32
                continue 
            mem[_1104 + 68] = mem[_1104 + 74 len 26]
            revert with memory
              from mem[64]
               len _1104 + -mem[64] + 100
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
            mem[0] = 6
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
                _610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_610] = 30
                mem[_610 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _610 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_681] = 26
                    mem[_681 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _693 + 68] = mem[idx + _681 + 32]
                            idx = idx + 32
                            continue 
                        mem[_693 + 68] = mem[_693 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _693 + -mem[64] + 100
                    _728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_728] = 26
                    mem[_728 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _877 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_877] = 26
                        mem[_877 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _912 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _912 + 68] = mem[idx + _877 + 32]
                            idx = idx + 32
                            continue 
                        mem[_912 + 68] = mem[_912 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _912 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_894] = 26
                    mem[_894 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _933 + 68] = mem[idx + _894 + 32]
                        idx = idx + 32
                        continue 
                    mem[_933 + 68] = mem[_933 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _933 + -mem[64] + 100
                if 2 * block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * block.number - poolInfo[idx].field_512:
                    _688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_688] = 26
                    mem[_688 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _702 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _702 + 68] = mem[idx + _688 + 32]
                            idx = idx + 32
                            continue 
                        mem[_702 + 68] = mem[_702 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _702 + -mem[64] + 100
                    _733 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_733] = 26
                    mem[_733 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_893] = 26
                        mem[_893 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                            mem[idx + _930 + 68] = mem[idx + _893 + 32]
                            idx = idx + 32
                            continue 
                        mem[_930 + 68] = mem[_930 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _930 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_911] = 26
                    mem[_911 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _953 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _953 + 68] = mem[idx + _911 + 32]
                        idx = idx + 32
                        continue 
                    mem[_953 + 68] = mem[_953 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _953 + -mem[64] + 100
                if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / 2 * block.number - poolInfo[idx].field_512 != uint256(sub_8b0c2606):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512:
                    _692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_692] = 26
                    mem[_692 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _711 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _711 + 68] = mem[idx + _692 + 32]
                            idx = idx + 32
                            continue 
                        mem[_711 + 68] = mem[_711 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _711 + -mem[64] + 100
                    _739 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_739] = 26
                    mem[_739 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _910 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_910] = 26
                        mem[_910 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _950 + 68] = mem[idx + _910 + 32]
                            idx = idx + 32
                            continue 
                        mem[_950 + 68] = mem[_950 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _950 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_929] = 26
                    mem[_929 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _970 + 68] = mem[idx + _929 + 32]
                        idx = idx + 32
                        continue 
                    mem[_970 + 68] = mem[_970 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _970 + -mem[64] + 100
                if poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_701] = 26
                mem[_701 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _719 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _719 + 68] = mem[idx + _701 + 32]
                        idx = idx + 32
                        continue 
                    mem[_719 + 68] = mem[_719 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _719 + -mem[64] + 100
                _746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_746] = 26
                mem[_746 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint:
                    _928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_928] = 26
                    mem[_928 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _967 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _967 + 68] = mem[idx + _928 + 32]
                        idx = idx + 32
                        continue 
                    mem[_967 + 68] = mem[_967 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _967 + -mem[64] + 100
                if 10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_949] = 26
                mem[_949 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _983 + 68] = mem[idx + _949 + 32]
                    idx = idx + 32
                    continue 
                mem[_983 + 68] = mem[_983 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _983 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _612 = mem[64]
                mem[64] = mem[64] + 64
                mem[_612] = 30
                mem[_612 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _612 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_670] = 26
                    mem[_670 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _675 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _675 + 68] = mem[idx + _670 + 32]
                            idx = idx + 32
                            continue 
                        mem[_675 + 68] = mem[_675 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _675 + -mem[64] + 100
                    _699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_699] = 26
                    mem[_699 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _844 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_844] = 26
                        mem[_844 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                            mem[idx + _858 + 68] = mem[idx + _844 + 32]
                            idx = idx + 32
                            continue 
                        mem[_858 + 68] = mem[_858 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _858 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_851] = 26
                    mem[_851 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _872 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _872 + 68] = mem[idx + _851 + 32]
                        idx = idx + 32
                        continue 
                    mem[_872 + 68] = mem[_872 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _872 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[idx].field_512 != uint256(sub_8b0c2606):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)):
                    _673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_673] = 26
                    mem[_673 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _678 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _678 + 68] = mem[idx + _673 + 32]
                            idx = idx + 32
                            continue 
                        mem[_678 + 68] = mem[_678 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _678 + -mem[64] + 100
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_850] = 26
                        mem[_850 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _869 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _869 + 68] = mem[idx + _850 + 32]
                            idx = idx + 32
                            continue 
                        mem[_869 + 68] = mem[_869 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _869 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_857] = 26
                    mem[_857 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _887 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _887 + 68] = mem[idx + _857 + 32]
                        idx = idx + 32
                        continue 
                    mem[_887 + 68] = mem[_887 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _887 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _674 = mem[64]
                mem[64] = mem[64] + 64
                mem[_674] = 26
                mem[_674 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _682 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _682 + 68] = mem[idx + _674 + 32]
                        idx = idx + 32
                        continue 
                    mem[_682 + 68] = mem[_682 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _682 + -mem[64] + 100
                _717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_717] = 26
                mem[_717 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
                    _856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_856] = 26
                    mem[_856 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _884 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _884 + 68] = mem[idx + _856 + 32]
                        idx = idx + 32
                        continue 
                    mem[_884 + 68] = mem[_884 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _884 + -mem[64] + 100
                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_868] = 26
                mem[_868 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _901 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _901 + 68] = mem[idx + _868 + 32]
                    idx = idx + 32
                    continue 
                mem[_901 + 68] = mem[_901 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _901 + -mem[64] + 100
            _611 = mem[64]
            mem[64] = mem[64] + 64
            mem[_611] = 30
            mem[_611 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _611 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_633] = 30
            mem[_633 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _633 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_743] = 26
                    mem[_743 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _757 + 68] = mem[idx + _743 + 32]
                            idx = idx + 32
                            continue 
                        mem[_757 + 68] = mem[_757 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _757 + -mem[64] + 100
                    _809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_809] = 26
                    mem[_809 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        _1049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1049 + 68] = mem[idx + _1022 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1049 + 68] = mem[_1049 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1049 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1037] = 26
                    mem[_1037 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1063 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1063 + 68] = mem[idx + _1037 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1063 + 68] = mem[_1063 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1063 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                    _751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_751] = 26
                    mem[_751 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _769 + 68] = mem[idx + _751 + 32]
                            idx = idx + 32
                            continue 
                        mem[_769 + 68] = mem[_769 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _769 + -mem[64] + 100
                    _822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_822] = 26
                    mem[_822 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1036] = 26
                        mem[_1036 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1060 + 68] = mem[idx + _1036 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1060 + 68] = mem[_1060 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1060 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1048 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1048] = 26
                    mem[_1048 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1076 + 68] = mem[idx + _1048 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1076 + 68] = mem[_1076 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1076 + -mem[64] + 100
                if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_756] = 26
                mem[_756 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _780 + 68] = mem[idx + _756 + 32]
                        idx = idx + 32
                        continue 
                    mem[_780 + 68] = mem[_780 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _780 + -mem[64] + 100
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 26
                mem[_832 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
                    _1047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1047] = 26
                    mem[_1047 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _1073 + 68] = mem[idx + _1047 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1059 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1059] = 26
                mem[_1059 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1087 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1087 + 68] = mem[idx + _1059 + 32]
                    idx = idx + 32
                    continue 
                mem[_1087 + 68] = mem[_1087 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1087 + -mem[64] + 100
            if 2 * bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) < 2 * bonusEndBlock - poolInfo[idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512):
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = 26
                mem[_750 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _766 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _766 + 68] = mem[idx + _750 + 32]
                        idx = idx + 32
                        continue 
                    mem[_766 + 68] = mem[_766 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _766 + -mem[64] + 100
                _818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_818] = 26
                mem[_818 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1046 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1046] = 26
                mem[_1046 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1070 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1070 + 68] = mem[idx + _1046 + 32]
                    idx = idx + 32
                    continue 
                mem[_1070 + 68] = mem[_1070 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1070 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) != uint256(sub_8b0c2606):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)):
                _755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_755] = 26
                mem[_755 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _777 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _777 + 68] = mem[idx + _755 + 32]
                        idx = idx + 32
                        continue 
                    mem[_777 + 68] = mem[_777 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _777 + -mem[64] + 100
                _830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_830] = 26
                mem[_830 + 32] = 'SafeMath: division by zero'
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(farmAddress)
                call farmAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1045] = 26
                    mem[_1045 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1067 + 68] = mem[idx + _1045 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1067 + 68] = mem[_1067 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1067 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1055 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1055] = 26
                mem[_1055 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1083 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1083 + 68] = mem[idx + _1055 + 32]
                    idx = idx + 32
                    continue 
                mem[_1083 + 68] = mem[_1083 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1083 + -mem[64] + 100
            if (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606)) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _765 = mem[64]
            mem[64] = mem[64] + 64
            mem[_765] = 26
            mem[_765 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _790 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _790 + 68] = mem[idx + _765 + 32]
                    idx = idx + 32
                    continue 
                mem[_790 + 68] = mem[_790 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _790 + -mem[64] + 100
            _837 = mem[64]
            mem[64] = mem[64] + 64
            mem[_837] = 26
            mem[_837 + 32] = 'SafeMath: division by zero'
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(farmAddress)
            call farmAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint:
                _1054 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1054] = 26
                mem[_1054 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1080 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1080 + 68] = mem[idx + _1054 + 32]
                    idx = idx + 32
                    continue 
                mem[_1080 + 68] = mem[_1080 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1080 + -mem[64] + 100
            if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1066 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1066] = 26
            mem[_1066 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[idx].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * uint256(sub_8b0c2606) * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1094 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1094 + 68] = mem[idx + _1066 + 32]
                idx = idx + 32
                continue 
            mem[_1094 + 68] = mem[_1094 + 74 len 26]
            revert with memory
              from mem[64]
               len _1094 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
    else:
        storF652[stor6.length] = startBlock
    storF652[stor6.length] = 0
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
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
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
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
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(farmAddress)
                staticcall farmAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmAddress)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(farmAddress)
                staticcall farmAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmAddress)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call farmAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender].field_0 += arg2
            if not arg2 + userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if not userInfo[arg1][msg.sender].field_0:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
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
                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
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
                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(farmAddress)
                    staticcall farmAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(farmAddress)
                    staticcall farmAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call farmAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmAddress)
                    call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * uint256(sub_8b0c2606) * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 650 len 31]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(farmAddress)
                        staticcall farmAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call farmAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[676 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 778 len 31]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(farmAddress)
                        call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - poolInfo[arg1].field_512 != uint256(sub_8b0c2606):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[548 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(farmAddress)
                            staticcall farmAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(farmAddress)
                            staticcall farmAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
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
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) / block.number - bonusEndBlock != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            call farmAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != uint256(sub_8b0c2606):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / (block.number * uint256(sub_8b0c2606)) - (bonusEndBlock * uint256(sub_8b0c2606)) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606)) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(farmAddress)
                                call farmAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) - (bonusEndBlock * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * uint256(sub_8b0c2606) * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[612 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 714 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(farmAddress)
                            staticcall farmAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(farmAddress)
                            staticcall farmAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(farmAddress)
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call farmAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[740 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 842 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
