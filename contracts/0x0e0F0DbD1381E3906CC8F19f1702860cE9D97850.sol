contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 10


address owner;
address sub_99119d22Address;
address devaddr;
uint256 bonusEndBlock;
uint256 eggPerBlock;
uint32 stor5;
address migratorAddress;
uint256 stor5;
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

function migrator() payable {
    return address(migratorAddress)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_99119d22(?) payable {
    return sub_99119d22Address
}

function eggPerBlock() payable {
    return eggPerBlock
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(migratorAddress) = arg1
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
    require bonusEndBlock - arg1
    if (10 * bonusEndBlock) - (10 * arg1) / bonusEndBlock - arg1 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (9 * bonusEndBlock) + arg2 < 10 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return ((9 * bonusEndBlock) - (10 * arg1) + arg2)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
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
               args address(this.address), address(migratorAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
    call poolInfo[arg1].field_0 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
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
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 50
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
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
                        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
                        if (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != eggPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            require (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock)
                            if (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 50
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
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
                        if (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) / block.number - poolInfo[arg1].field_512 != eggPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            require (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock)
                            if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            if (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) / block.number - bonusEndBlock != eggPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
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
                                require (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock)
                                if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
                            if (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != eggPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
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
                                require (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock)
                                if (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_ad7b0961(?) payable {
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
        if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
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
        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
        if (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != eggPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock):
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
        require (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock)
        if (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) / block.number - poolInfo[arg1].field_512 != eggPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock):
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
        require (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock)
        if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) / block.number - bonusEndBlock != eggPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock):
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
        require (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock)
        if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
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
    require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
    if (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != eggPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock):
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
    require (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock)
    if (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
    require (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
            _574 = mem[64]
            mem[64] = mem[64] + 64
            mem[_574] = 30
            mem[_574 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _577 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_577 + idx + 68] = mem[_574 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_577 + 68] = mem[_577 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _577 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _625 = mem[64]
                mem[64] = mem[64] + 64
                mem[_625] = 26
                mem[_625 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _634 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_634 + idx + 68] = mem[_625 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_634 + 68] = mem[_634 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _634 + -mem[64] + 100
                require totalAllocPoint
                _668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_668] = 26
                mem[_668 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _823 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_823] = 26
                    mem[_823 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _849 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_849 + idx + 68] = mem[_823 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_849 + 68] = mem[_849 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _849 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_848] = 26
                mem[_848 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                    mem[_887 + idx + 68] = mem[_848 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_887 + 68] = mem[_887 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _887 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                _633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_633] = 26
                mem[_633 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _650 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_650 + idx + 68] = mem[_633 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_650 + 68] = mem[_650 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _650 + -mem[64] + 100
                require totalAllocPoint
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 26
                mem[_680 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_847] = 26
                    mem[_847 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_884 + idx + 68] = mem[_847 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_884 + 68] = mem[_884 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _884 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _883 = mem[64]
                mem[64] = mem[64] + 64
                mem[_883] = 26
                mem[_883 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _926 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_926 + idx + 68] = mem[_883 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_926 + 68] = mem[_926 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _926 + -mem[64] + 100
            require (10 * block.number) - (10 * poolInfo[idx].field_512)
            if (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) / (10 * block.number) - (10 * poolInfo[idx].field_512) != eggPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock):
                _649 = mem[64]
                mem[64] = mem[64] + 64
                mem[_649] = 26
                mem[_649 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _664 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_664 + idx + 68] = mem[_649 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_664 + 68] = mem[_664 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _664 + -mem[64] + 100
                require totalAllocPoint
                _691 = mem[64]
                mem[64] = mem[64] + 64
                mem[_691] = 26
                mem[_691 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_882] = 26
                    mem[_882 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _923 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_923 + idx + 68] = mem[_882 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_923 + 68] = mem[_923 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _923 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _922 = mem[64]
                mem[64] = mem[64] + 64
                mem[_922] = 26
                mem[_922 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                    mem[_960 + idx + 68] = mem[_922 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_960 + 68] = mem[_960 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _960 + -mem[64] + 100
            require (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock)
            if (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _663 = mem[64]
            mem[64] = mem[64] + 64
            mem[_663] = 26
            mem[_663 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _676 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_676 + idx + 68] = mem[_663 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_676 + 68] = mem[_676 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _676 + -mem[64] + 100
            require totalAllocPoint
            _710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_710] = 26
            mem[_710 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_921] = 26
                mem[_921 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                    mem[_957 + idx + 68] = mem[_921 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_957 + 68] = mem[_957 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _957 + -mem[64] + 100
            require (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_956] = 26
            mem[_956 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _985 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_985 + idx + 68] = mem[_956 + idx + 32]
                idx = idx + 32
                continue 
            mem[_985 + 68] = mem[_985 + 74 len 26]
            revert with memory
              from mem[64]
               len _985 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _576 = mem[64]
            mem[64] = mem[64] + 64
            mem[_576] = 30
            mem[_576 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_583 + idx + 68] = mem[_576 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_583 + 68] = mem[_583 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _583 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _614 = mem[64]
                mem[64] = mem[64] + 64
                mem[_614] = 26
                mem[_614 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _622 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_622 + idx + 68] = mem[_614 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_622 + 68] = mem[_622 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _622 + -mem[64] + 100
                require totalAllocPoint
                _641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_641] = 26
                mem[_641 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_792] = 26
                    mem[_792 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_809 + idx + 68] = mem[_792 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_809 + 68] = mem[_809 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _809 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_808] = 26
                mem[_808 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _832 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_832 + idx + 68] = mem[_808 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_832 + 68] = mem[_832 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _832 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) / block.number - poolInfo[idx].field_512 != eggPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock):
                _621 = mem[64]
                mem[64] = mem[64] + 64
                mem[_621] = 26
                mem[_621 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_627 + idx + 68] = mem[_621 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_627 + 68] = mem[_627 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _627 + -mem[64] + 100
                require totalAllocPoint
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 26
                mem[_655 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_807] = 26
                    mem[_807 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _829 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_829 + idx + 68] = mem[_807 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_829 + 68] = mem[_829 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _829 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _828 = mem[64]
                mem[64] = mem[64] + 64
                mem[_828] = 26
                mem[_828 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _863 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_863 + idx + 68] = mem[_828 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_863 + 68] = mem[_863 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _863 + -mem[64] + 100
            require (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock)
            if (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _626 = mem[64]
            mem[64] = mem[64] + 64
            mem[_626] = 26
            mem[_626 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _637 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_637 + idx + 68] = mem[_626 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_637 + 68] = mem[_637 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _637 + -mem[64] + 100
            require totalAllocPoint
            _670 = mem[64]
            mem[64] = mem[64] + 64
            mem[_670] = 26
            mem[_670 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_827] = 26
                mem[_827 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _860 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_860 + idx + 68] = mem[_827 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_860 + 68] = mem[_860 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _860 + -mem[64] + 100
            require (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_859] = 26
            mem[_859 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _899 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_899 + idx + 68] = mem[_859 + idx + 32]
                idx = idx + 32
                continue 
            mem[_899 + 68] = mem[_899 + 74 len 26]
            revert with memory
              from mem[64]
               len _899 + -mem[64] + 100
        _575 = mem[64]
        mem[64] = mem[64] + 64
        mem[_575] = 30
        mem[_575 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            _580 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_580 + idx + 68] = mem[_575 + idx + 32]
                idx = idx + 32
                continue 
            mem[_580 + 68] = mem[_580 + 70 len 30]
            revert with memory
              from mem[64]
               len _580 + -mem[64] + 100
        _591 = mem[64]
        mem[64] = mem[64] + 64
        mem[_591] = 30
        mem[_591 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _599 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_599 + idx + 68] = mem[_591 + idx + 32]
                idx = idx + 32
                continue 
            mem[_599 + 68] = mem[_599 + 70 len 30]
            revert with memory
              from mem[64]
               len _599 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 26
                mem[_682 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _695 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_695 + idx + 68] = mem[_682 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_695 + 68] = mem[_695 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _695 + -mem[64] + 100
                require totalAllocPoint
                _744 = mem[64]
                mem[64] = mem[64] + 64
                mem[_744] = 26
                mem[_744 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _968 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_968] = 26
                    mem[_968 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_995 + idx + 68] = mem[_968 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_995 + 68] = mem[_995 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _995 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_994] = 26
                mem[_994 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1023 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1023 + idx + 68] = mem[_994 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1023 + 68] = mem[_1023 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1023 + -mem[64] + 100
            require block.number - bonusEndBlock
            if (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) / block.number - bonusEndBlock != eggPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock):
                _694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_694] = 26
                mem[_694 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _717 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_717 + idx + 68] = mem[_694 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_717 + 68] = mem[_717 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _717 + -mem[64] + 100
                require totalAllocPoint
                _769 = mem[64]
                mem[64] = mem[64] + 64
                mem[_769] = 26
                mem[_769 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_993] = 26
                    mem[_993 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1020 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1020 + idx + 68] = mem[_993 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1020 + 68] = mem[_1020 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1020 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1019 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1019] = 26
                mem[_1019 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1051 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1051 + idx + 68] = mem[_1019 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1051 + 68] = mem[_1051 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1051 + -mem[64] + 100
            require (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock)
            if (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _716 = mem[64]
            mem[64] = mem[64] + 64
            mem[_716] = 26
            mem[_716 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _740 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_740 + idx + 68] = mem[_716 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_740 + 68] = mem[_740 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _740 + -mem[64] + 100
            require totalAllocPoint
            _790 = mem[64]
            mem[64] = mem[64] + 64
            mem[_790] = 26
            mem[_790 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1018] = 26
                mem[_1018 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                    mem[_1048 + idx + 68] = mem[_1018 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1048 + 68] = mem[_1048 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1048 + -mem[64] + 100
            require (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1047 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1047] = 26
            mem[_1047 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1077 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1077 + idx + 68] = mem[_1047 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1077 + 68] = mem[_1077 + 74 len 26]
            revert with memory
              from mem[64]
               len _1077 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
            _693 = mem[64]
            mem[64] = mem[64] + 64
            mem[_693] = 26
            mem[_693 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _713 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_713 + idx + 68] = mem[_693 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_713 + 68] = mem[_713 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _713 + -mem[64] + 100
            require totalAllocPoint
            _766 = mem[64]
            mem[64] = mem[64] + 64
            mem[_766] = 26
            mem[_766 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_992] = 26
                mem[_992 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1015 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1015 + idx + 68] = mem[_992 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1015 + 68] = mem[_1015 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1015 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1014] = 26
            mem[_1014 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1043 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1043 + idx + 68] = mem[_1014 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1043 + 68] = mem[_1043 + 74 len 26]
            revert with memory
              from mem[64]
               len _1043 + -mem[64] + 100
        require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
        if (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != eggPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock):
            _712 = mem[64]
            mem[64] = mem[64] + 64
            mem[_712] = 26
            mem[_712 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _736 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_736 + idx + 68] = mem[_712 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_736 + 68] = mem[_736 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _736 + -mem[64] + 100
            require totalAllocPoint
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 26
            mem[_788 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 26
                mem[_1013 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1040 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1040 + idx + 68] = mem[_1013 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1040 + 68] = mem[_1040 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1040 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1039 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1039] = 26
            mem[_1039 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1071 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1071 + idx + 68] = mem[_1039 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1071 + 68] = mem[_1071 + 74 len 26]
            revert with memory
              from mem[64]
               len _1071 + -mem[64] + 100
        require (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock)
        if (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _735 = mem[64]
        mem[64] = mem[64] + 64
        mem[_735] = 26
        mem[_735 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _762 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_762 + idx + 68] = mem[_735 + idx + 32]
                idx = idx + 32
                continue 
            mem[_762 + 68] = mem[_762 + 74 len 26]
            revert with memory
              from mem[64]
               len _762 + -mem[64] + 100
        require totalAllocPoint
        _805 = mem[64]
        mem[64] = mem[64] + 64
        mem[_805] = 26
        mem[_805 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_99119d22Address)
        call sub_99119d22Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_99119d22Address)
        call sub_99119d22Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _1038 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1038] = 26
            mem[_1038 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1068 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1068 + idx + 68] = mem[_1038 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1068 + 68] = mem[_1068 + 74 len 26]
            revert with memory
              from mem[64]
               len _1068 + -mem[64] + 100
        require (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1067 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1067] = 26
        mem[_1067 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1098 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1098 + idx + 68] = mem[_1067 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1098 + 68] = mem[_1098 + 74 len 26]
        revert with memory
          from mem[64]
           len _1098 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
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
                _615 = mem[64]
                mem[64] = mem[64] + 64
                mem[_615] = 30
                mem[_615 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_619 + idx + 68] = mem[_615 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_619 + 68] = mem[_619 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _619 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_667] = 26
                    mem[_667 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _676 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_676 + idx + 68] = mem[_667 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_676 + 68] = mem[_676 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _676 + -mem[64] + 100
                    require totalAllocPoint
                    _710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_710] = 26
                    mem[_710 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_865] = 26
                        mem[_865 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _891 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_891 + idx + 68] = mem[_865 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_891 + 68] = mem[_891 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _891 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_890] = 26
                    mem[_890 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
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
                require block.number - poolInfo[idx].field_512
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_675] = 26
                    mem[_675 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _692 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_692 + idx + 68] = mem[_675 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_692 + 68] = mem[_692 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _692 + -mem[64] + 100
                    require totalAllocPoint
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                    _968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_968 + idx + 68] = mem[_925 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_968 + 68] = mem[_968 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _968 + -mem[64] + 100
                require (10 * block.number) - (10 * poolInfo[idx].field_512)
                if (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) / (10 * block.number) - (10 * poolInfo[idx].field_512) != eggPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock):
                    _691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_691] = 26
                    mem[_691 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_706 + idx + 68] = mem[_691 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_706 + 68] = mem[_706 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _706 + -mem[64] + 100
                    require totalAllocPoint
                    _733 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_733] = 26
                    mem[_733 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        _965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_965 + idx + 68] = mem[_924 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_965 + 68] = mem[_965 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _965 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_964] = 26
                    mem[_964 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1002 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1002 + idx + 68] = mem[_964 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1002 + 68] = mem[_1002 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1002 + -mem[64] + 100
                require (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock)
                if (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 26
                mem[_705 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _718 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_718 + idx + 68] = mem[_705 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_718 + 68] = mem[_718 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _718 + -mem[64] + 100
                require totalAllocPoint
                _752 = mem[64]
                mem[64] = mem[64] + 64
                mem[_752] = 26
                mem[_752 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_963] = 26
                    mem[_963 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _999 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_999 + idx + 68] = mem[_963 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_999 + 68] = mem[_999 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _999 + -mem[64] + 100
                require (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _998 = mem[64]
                mem[64] = mem[64] + 64
                mem[_998] = 26
                mem[_998 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1027 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1027 + idx + 68] = mem[_998 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1027 + 68] = mem[_1027 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1027 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _617 = mem[64]
                mem[64] = mem[64] + 64
                mem[_617] = 30
                mem[_617 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _625 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_625 + idx + 68] = mem[_617 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_625 + 68] = mem[_625 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _625 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_656] = 26
                    mem[_656 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_664 + idx + 68] = mem[_656 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_664 + 68] = mem[_664 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _664 + -mem[64] + 100
                    require totalAllocPoint
                    _683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_683] = 26
                    mem[_683 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _834 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_834] = 26
                        mem[_834 + 32] = 'SafeMath: division by zero'
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
                            mem[_851 + idx + 68] = mem[_834 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_851 + 68] = mem[_851 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _851 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_850] = 26
                    mem[_850 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _874 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_874 + idx + 68] = mem[_850 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_874 + 68] = mem[_874 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _874 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) / block.number - poolInfo[idx].field_512 != eggPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock):
                    _663 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_663] = 26
                    mem[_663 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _669 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_669 + idx + 68] = mem[_663 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_669 + 68] = mem[_669 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _669 + -mem[64] + 100
                    require totalAllocPoint
                    _697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_697] = 26
                    mem[_697 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_849] = 26
                        mem[_849 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _871 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_871 + idx + 68] = mem[_849 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_871 + 68] = mem[_871 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _871 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_870] = 26
                    mem[_870 + 32] = 'SafeMath: division by zero'
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
                        mem[_905 + idx + 68] = mem[_870 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_905 + 68] = mem[_905 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _905 + -mem[64] + 100
                require (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock)
                if (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_668] = 26
                mem[_668 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _679 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_679 + idx + 68] = mem[_668 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_679 + 68] = mem[_679 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _679 + -mem[64] + 100
                require totalAllocPoint
                _712 = mem[64]
                mem[64] = mem[64] + 64
                mem[_712] = 26
                mem[_712 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_869] = 26
                    mem[_869 + 32] = 'SafeMath: division by zero'
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
                        mem[_902 + idx + 68] = mem[_869 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_902 + 68] = mem[_902 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _902 + -mem[64] + 100
                require (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _901 = mem[64]
                mem[64] = mem[64] + 64
                mem[_901] = 26
                mem[_901 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _941 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_941 + idx + 68] = mem[_901 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_941 + 68] = mem[_941 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _941 + -mem[64] + 100
            _616 = mem[64]
            mem[64] = mem[64] + 64
            mem[_616] = 30
            mem[_616 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _622 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_622 + idx + 68] = mem[_616 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_622 + 68] = mem[_622 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _622 + -mem[64] + 100
            _633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_633] = 30
            mem[_633 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _641 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_641 + idx + 68] = mem[_633 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_641 + 68] = mem[_641 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _641 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_724] = 26
                    mem[_724 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_737 + idx + 68] = mem[_724 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_737 + 68] = mem[_737 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _737 + -mem[64] + 100
                    require totalAllocPoint
                    _786 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_786] = 26
                    mem[_786 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1010] = 26
                        mem[_1010 + 32] = 'SafeMath: division by zero'
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
                            mem[_1037 + idx + 68] = mem[_1010 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1037 + 68] = mem[_1037 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1037 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1036] = 26
                    mem[_1036 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1065 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1065 + idx + 68] = mem[_1036 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1065 + 68] = mem[_1065 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1065 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) / block.number - bonusEndBlock != eggPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock):
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 26
                    mem[_736 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _759 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_759 + idx + 68] = mem[_736 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_759 + 68] = mem[_759 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _759 + -mem[64] + 100
                    require totalAllocPoint
                    _811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_811] = 26
                    mem[_811 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1035] = 26
                        mem[_1035 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1062 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1062 + idx + 68] = mem[_1035 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1062 + 68] = mem[_1062 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1062 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1061] = 26
                    mem[_1061 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_1093 + idx + 68] = mem[_1061 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1093 + 68] = mem[_1093 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1093 + -mem[64] + 100
                require (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock)
                if (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _758 = mem[64]
                mem[64] = mem[64] + 64
                mem[_758] = 26
                mem[_758 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_782 + idx + 68] = mem[_758 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_782 + 68] = mem[_782 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _782 + -mem[64] + 100
                require totalAllocPoint
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 26
                mem[_832 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1060] = 26
                    mem[_1060 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_1090 + idx + 68] = mem[_1060 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1090 + 68] = mem[_1090 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1090 + -mem[64] + 100
                require (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1089 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1089] = 26
                mem[_1089 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1119 + idx + 68] = mem[_1089 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1119 + 68] = mem[_1119 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1119 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                _735 = mem[64]
                mem[64] = mem[64] + 64
                mem[_735] = 26
                mem[_735 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _755 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_755 + idx + 68] = mem[_735 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_755 + 68] = mem[_755 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _755 + -mem[64] + 100
                require totalAllocPoint
                _808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_808] = 26
                mem[_808 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1034] = 26
                    mem[_1034 + 32] = 'SafeMath: division by zero'
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
                        mem[_1057 + idx + 68] = mem[_1034 + idx + 32]
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
                _1085 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1085 + idx + 68] = mem[_1056 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1085 + 68] = mem[_1085 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1085 + -mem[64] + 100
            require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
            if (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != eggPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock):
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 26
                mem[_754 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _778 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_778 + idx + 68] = mem[_754 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_778 + 68] = mem[_778 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _778 + -mem[64] + 100
                require totalAllocPoint
                _830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_830] = 26
                mem[_830 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
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
                    _1082 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1082 + idx + 68] = mem[_1055 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1082 + 68] = mem[_1082 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1082 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1081] = 26
                mem[_1081 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1113 + idx + 68] = mem[_1081 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1113 + 68] = mem[_1113 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1113 + -mem[64] + 100
            require (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock)
            if (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_777] = 26
            mem[_777 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
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
            require totalAllocPoint
            _847 = mem[64]
            mem[64] = mem[64] + 64
            mem[_847] = 26
            mem[_847 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1080] = 26
                mem[_1080 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1110 + idx + 68] = mem[_1080 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1110 + 68] = mem[_1110 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1110 + -mem[64] + 100
            require (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1109] = 26
            mem[_1109 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1140 + idx + 68] = mem[_1109 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1140 + 68] = mem[_1140 + 74 len 26]
            revert with memory
              from mem[64]
               len _1140 + -mem[64] + 100
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
            mem[0] = 6
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
                _624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_624] = 30
                mem[_624 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_627 + idx + 68] = mem[_624 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_627 + 68] = mem[_627 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _627 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_675] = 26
                    mem[_675 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _684 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_684 + idx + 68] = mem[_675 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_684 + 68] = mem[_684 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _684 + -mem[64] + 100
                    require totalAllocPoint
                    _718 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_718] = 26
                    mem[_718 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _873 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_873] = 26
                        mem[_873 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _899 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_899 + idx + 68] = mem[_873 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_899 + 68] = mem[_899 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _899 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _898 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_898] = 26
                    mem[_898 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _937 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_937 + idx + 68] = mem[_898 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_937 + 68] = mem[_937 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _937 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_683] = 26
                    mem[_683 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_700 + idx + 68] = mem[_683 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_700 + 68] = mem[_700 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _700 + -mem[64] + 100
                    require totalAllocPoint
                    _730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_730] = 26
                    mem[_730 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_897] = 26
                        mem[_897 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _934 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_934 + idx + 68] = mem[_897 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_934 + 68] = mem[_934 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _934 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_933] = 26
                    mem[_933 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _976 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_976 + idx + 68] = mem[_933 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_976 + 68] = mem[_976 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _976 + -mem[64] + 100
                require (10 * block.number) - (10 * poolInfo[idx].field_512)
                if (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) / (10 * block.number) - (10 * poolInfo[idx].field_512) != eggPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock):
                    _699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_699] = 26
                    mem[_699 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_714 + idx + 68] = mem[_699 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_714 + 68] = mem[_714 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _714 + -mem[64] + 100
                    require totalAllocPoint
                    _741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_741] = 26
                    mem[_741 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_932] = 26
                        mem[_932 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_973 + idx + 68] = mem[_932 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_973 + 68] = mem[_973 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _973 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _972 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_972] = 26
                    mem[_972 + 32] = 'SafeMath: division by zero'
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
                        mem[_1010 + idx + 68] = mem[_972 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1010 + 68] = mem[_1010 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1010 + -mem[64] + 100
                require (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock)
                if (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (10 * block.number * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_713] = 26
                mem[_713 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _726 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_726 + idx + 68] = mem[_713 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_726 + 68] = mem[_726 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _726 + -mem[64] + 100
                require totalAllocPoint
                _760 = mem[64]
                mem[64] = mem[64] + 64
                mem[_760] = 26
                mem[_760 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_971] = 26
                    mem[_971 + 32] = 'SafeMath: division by zero'
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
                        mem[_1007 + idx + 68] = mem[_971 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1007 + 68] = mem[_1007 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1007 + -mem[64] + 100
                require (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1006] = 26
                mem[_1006 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1035 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1035 + idx + 68] = mem[_1006 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1035 + 68] = mem[_1035 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1035 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _626 = mem[64]
                mem[64] = mem[64] + 64
                mem[_626] = 30
                mem[_626 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _633 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_633 + idx + 68] = mem[_626 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_633 + 68] = mem[_633 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _633 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_664] = 26
                    mem[_664 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _672 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_672 + idx + 68] = mem[_664 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_672 + 68] = mem[_672 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _672 + -mem[64] + 100
                    require totalAllocPoint
                    _691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_691] = 26
                    mem[_691 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_842] = 26
                        mem[_842 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _859 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_859 + idx + 68] = mem[_842 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_859 + 68] = mem[_859 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _859 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_858] = 26
                    mem[_858 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_882 + idx + 68] = mem[_858 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_882 + 68] = mem[_882 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _882 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) / block.number - poolInfo[idx].field_512 != eggPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock):
                    _671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_671] = 26
                    mem[_671 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _677 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_677 + idx + 68] = mem[_671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_677 + 68] = mem[_677 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _677 + -mem[64] + 100
                    require totalAllocPoint
                    _705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_705] = 26
                    mem[_705 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_857] = 26
                        mem[_857 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                            mem[_879 + idx + 68] = mem[_857 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_879 + 68] = mem[_879 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _879 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _878 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_878] = 26
                    mem[_878 + 32] = 'SafeMath: division by zero'
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
                        mem[_913 + idx + 68] = mem[_878 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_913 + 68] = mem[_913 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _913 + -mem[64] + 100
                require (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock)
                if (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 26
                mem[_676 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _687 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_687 + idx + 68] = mem[_676 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_687 + 68] = mem[_687 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _687 + -mem[64] + 100
                require totalAllocPoint
                _720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_720] = 26
                mem[_720 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_877] = 26
                    mem[_877 + 32] = 'SafeMath: division by zero'
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
                        mem[_910 + idx + 68] = mem[_877 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_910 + 68] = mem[_910 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _910 + -mem[64] + 100
                require (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _909 = mem[64]
                mem[64] = mem[64] + 64
                mem[_909] = 26
                mem[_909 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _949 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_949 + idx + 68] = mem[_909 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_949 + 68] = mem[_949 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _949 + -mem[64] + 100
            _625 = mem[64]
            mem[64] = mem[64] + 64
            mem[_625] = 30
            mem[_625 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _630 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_630 + idx + 68] = mem[_625 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_630 + 68] = mem[_630 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _630 + -mem[64] + 100
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 30
            mem[_641 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _649 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_649 + idx + 68] = mem[_641 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_649 + 68] = mem[_649 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _649 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_732] = 26
                    mem[_732 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_745 + idx + 68] = mem[_732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_745 + 68] = mem[_745 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _745 + -mem[64] + 100
                    require totalAllocPoint
                    _794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_794] = 26
                    mem[_794 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1018] = 26
                        mem[_1018 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1045 + idx + 68] = mem[_1018 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1045 + 68] = mem[_1045 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1045 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1044 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1044] = 26
                    mem[_1044 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_1073 + idx + 68] = mem[_1044 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) / block.number - bonusEndBlock != eggPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock):
                    _744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_744] = 26
                    mem[_744 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_767 + idx + 68] = mem[_744 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_767 + 68] = mem[_767 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _767 + -mem[64] + 100
                    require totalAllocPoint
                    _819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_819] = 26
                    mem[_819 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1043] = 26
                        mem[_1043 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                            mem[_1070 + idx + 68] = mem[_1043 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1070 + 68] = mem[_1070 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1070 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 26
                    mem[_1069 + 32] = 'SafeMath: division by zero'
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
                        mem[_1101 + idx + 68] = mem[_1069 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1101 + 68] = mem[_1101 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1101 + -mem[64] + 100
                require (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock)
                if (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _766 = mem[64]
                mem[64] = mem[64] + 64
                mem[_766] = 26
                mem[_766 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _790 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_790 + idx + 68] = mem[_766 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_790 + 68] = mem[_790 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _790 + -mem[64] + 100
                require totalAllocPoint
                _840 = mem[64]
                mem[64] = mem[64] + 64
                mem[_840] = 26
                mem[_840 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1068 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1068] = 26
                    mem[_1068 + 32] = 'SafeMath: division by zero'
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
                        mem[_1098 + idx + 68] = mem[_1068 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1098 + 68] = mem[_1098 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1098 + -mem[64] + 100
                require (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1097] = 26
                mem[_1097 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1127 + idx + 68] = mem[_1097 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1127 + 68] = mem[_1127 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1127 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                _743 = mem[64]
                mem[64] = mem[64] + 64
                mem[_743] = 26
                mem[_743 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _763 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_763 + idx + 68] = mem[_743 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_763 + 68] = mem[_763 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _763 + -mem[64] + 100
                require totalAllocPoint
                _816 = mem[64]
                mem[64] = mem[64] + 64
                mem[_816] = 26
                mem[_816 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1042] = 26
                    mem[_1042 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1065 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1065 + idx + 68] = mem[_1042 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1065 + 68] = mem[_1065 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1065 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1064] = 26
                mem[_1064 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                    mem[_1093 + idx + 68] = mem[_1064 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1093 + 68] = mem[_1093 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1093 + -mem[64] + 100
            require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
            if (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != eggPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock):
                _762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_762] = 26
                mem[_762 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _786 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_786 + idx + 68] = mem[_762 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_786 + 68] = mem[_786 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _786 + -mem[64] + 100
                require totalAllocPoint
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 26
                mem[_838 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_99119d22Address)
                call sub_99119d22Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1063 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1063] = 26
                    mem[_1063 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_1090 + idx + 68] = mem[_1063 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1090 + 68] = mem[_1090 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1090 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1089 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1089] = 26
                mem[_1089 + 32] = 'SafeMath: division by zero'
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
                    mem[_1121 + idx + 68] = mem[_1089 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1121 + 68] = mem[_1121 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1121 + -mem[64] + 100
            require (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock)
            if (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[idx].field_512 * eggPerBlock) + (block.number * eggPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _785 = mem[64]
            mem[64] = mem[64] + 64
            mem[_785] = 26
            mem[_785 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _812 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_812 + idx + 68] = mem[_785 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_812 + 68] = mem[_812 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _812 + -mem[64] + 100
            require totalAllocPoint
            _855 = mem[64]
            mem[64] = mem[64] + 64
            mem[_855] = 26
            mem[_855 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_99119d22Address)
            call sub_99119d22Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1088] = 26
                mem[_1088 + 32] = 'SafeMath: division by zero'
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
                    mem[_1118 + idx + 68] = mem[_1088 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1118 + 68] = mem[_1118 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1118 + -mem[64] + 100
            require (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1117] = 26
            mem[_1117 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) + (block.number * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1148 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1148 + idx + 68] = mem[_1117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1148 + 68] = mem[_1148 + 74 len 26]
            revert with memory
              from mem[64]
               len _1148 + -mem[64] + 100
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
                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[352 len 4] = uint32(arg2)
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    uint32(arg2),
                                    mem[356 len 4]
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
                                        mem[329 len 23],
                                        uint32(arg2),
                                        mem[356 len 4]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
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
                                        mem[ceil32(return_data.size) + 330 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_99119d22Address)
                    staticcall sub_99119d22Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_99119d22Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_99119d22Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_99119d22Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                    require ext_code.size(sub_99119d22Address)
                    staticcall sub_99119d22Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_99119d22Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_99119d22Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_99119d22Address.0xa9059cbb with:
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
                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[480 len 4] = uint32(arg2)
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
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
                                    mem[ceil32(return_data.size) + 458 len 31]
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
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[352 len 4] = uint32(arg2)
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[338 len 14],
                                        uint32(arg2),
                                        mem[356 len 4]
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
                                            mem[329 len 23],
                                            uint32(arg2),
                                            mem[356 len 4]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[260]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 339 len 22]
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
                                            mem[ceil32(return_data.size) + 330 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_99119d22Address)
                        staticcall sub_99119d22Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_99119d22Address)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_99119d22Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_99119d22Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
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
                        require ext_code.size(sub_99119d22Address)
                        staticcall sub_99119d22Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_99119d22Address)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_99119d22Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_99119d22Address.0xa9059cbb with:
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
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[480 len 4] = uint32(arg2)
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
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
                                        mem[ceil32(return_data.size) + 458 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_99119d22Address)
                    call sub_99119d22Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 50
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
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
                        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
                        if (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != eggPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            require (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock)
                            if (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (10 * block.number * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[608 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
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
                            require ext_code.size(sub_99119d22Address)
                            staticcall sub_99119d22Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_99119d22Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_99119d22Address.0xa9059cbb with:
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
                            require ext_code.size(sub_99119d22Address)
                            staticcall sub_99119d22Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_99119d22Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_99119d22Address.0xa9059cbb with:
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
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[736 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
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
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 50
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_99119d22Address)
                        call sub_99119d22Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
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
                        if (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) / block.number - poolInfo[arg1].field_512 != eggPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            require (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock)
                            if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[608 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
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
                                require ext_code.size(sub_99119d22Address)
                                staticcall sub_99119d22Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_99119d22Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_99119d22Address.0xa9059cbb with:
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
                                require ext_code.size(sub_99119d22Address)
                                staticcall sub_99119d22Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_99119d22Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_99119d22Address.0xa9059cbb with:
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
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[736 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
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
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            if (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) / block.number - bonusEndBlock != eggPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
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
                                require (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock)
                                if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (bonusEndBlock * eggPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 50
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_99119d22Address)
                            call sub_99119d22Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
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
                            require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
                            if (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != eggPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
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
                                require (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock)
                                if (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / (9 * bonusEndBlock * eggPerBlock) - (10 * poolInfo[arg1].field_512 * eggPerBlock) + (block.number * eggPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 50
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                call sub_99119d22Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * eggPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) + (block.number * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[672 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
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
                                require ext_code.size(sub_99119d22Address)
                                staticcall sub_99119d22Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_99119d22Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_99119d22Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(sub_99119d22Address)
                                staticcall sub_99119d22Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_99119d22Address)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_99119d22Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_99119d22Address.0xa9059cbb with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[800 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
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
