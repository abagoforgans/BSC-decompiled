contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 10


address owner;
address sub_60a7f301Address;
uint256 bonusEndBlock;
uint256 sub_ec68076c;
uint32 stor4;
address migratorAddress;
uint256 stor4;
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

function sub_60a7f301(?) payable {
    return sub_60a7f301Address
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

function sub_ec68076c(?) payable {
    return sub_ec68076c
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
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
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
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
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
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_60a7f301Address)
                        call sub_60a7f301Address.0x40c10f19 with:
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
                        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
                        if (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sub_ec68076c:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                            require (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c)
                            if (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_60a7f301Address)
                        call sub_60a7f301Address.0x40c10f19 with:
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
                        if (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c) / block.number - poolInfo[arg1].field_512 != sub_ec68076c:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                            require (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c)
                            if (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                            if (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) / block.number - bonusEndBlock != sub_ec68076c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
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
                                require (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c)
                                if (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                            require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
                            if (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != sub_ec68076c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
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
                                require (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c)
                                if (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_327ccf86(?) payable {
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
        if (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sub_ec68076c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c):
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
        require (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c)
        if (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c) / block.number - poolInfo[arg1].field_512 != sub_ec68076c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c):
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
        require (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c)
        if (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) / block.number - bonusEndBlock != sub_ec68076c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c):
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
        require (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c)
        if (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
    if (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != sub_ec68076c:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c):
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
    require (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c)
    if (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
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
    require (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number) - (10 * poolInfo[idx].field_512):
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            require (10 * block.number) - (10 * poolInfo[idx].field_512)
            if (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sub_ec68076c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c):
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            require (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c)
            if (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) != poolInfo[idx].field_256:
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
            mem[mem[64] + 36] = (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
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
            require (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_775] = 26
            mem[_775 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            if (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c) / block.number - poolInfo[idx].field_512 != sub_ec68076c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c):
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            require (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c)
            if (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c) != poolInfo[idx].field_256:
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
            mem[mem[64] + 36] = (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
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
            require (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _671 = mem[64]
            mem[64] = mem[64] + 64
            mem[_671] = 26
            mem[_671 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            if (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) / block.number - bonusEndBlock != sub_ec68076c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c):
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
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
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
            require (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c)
            if (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) != poolInfo[idx].field_256:
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
            mem[mem[64] + 36] = (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
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
            require (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _865 = mem[64]
            mem[64] = mem[64] + 64
            mem[_865] = 26
            mem[_865 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
        if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
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
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
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
        require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
        if (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != sub_ec68076c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c):
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
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
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
        require (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c)
        if (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) != poolInfo[idx].field_256:
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
        mem[mem[64] + 36] = (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_60a7f301Address)
        call sub_60a7f301Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
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
        require (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _885 = mem[64]
        mem[64] = mem[64] + 64
        mem[_885] = 26
        mem[_885 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
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
                _524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_524] = 30
                mem[_524 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _528 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_528 + idx + 68] = mem[_524 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_528 + 68] = mem[_528 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _528 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _576 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_576] = 26
                    mem[_576 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_587 + idx + 68] = mem[_576 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_587 + 68] = mem[_587 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _587 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_671] = 26
                        mem[_671 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_700 + idx + 68] = mem[_671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_700 + 68] = mem[_700 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _700 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_699] = 26
                    mem[_699 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_744 + idx + 68] = mem[_699 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_744 + 68] = mem[_744 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _744 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_586] = 26
                    mem[_586 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_604 + idx + 68] = mem[_586 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_604 + 68] = mem[_604 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _604 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _698 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_698] = 26
                        mem[_698 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_741 + idx + 68] = mem[_698 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_741 + 68] = mem[_741 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _741 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _740 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_740] = 26
                    mem[_740 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _787 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_787 + idx + 68] = mem[_740 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_787 + 68] = mem[_787 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _787 + -mem[64] + 100
                require (10 * block.number) - (10 * poolInfo[idx].field_512)
                if (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sub_ec68076c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c):
                    _603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_603] = 26
                    mem[_603 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_621 + idx + 68] = mem[_603 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_621 + 68] = mem[_621 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _621 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _739 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_739] = 26
                        mem[_739 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_784 + idx + 68] = mem[_739 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_784 + 68] = mem[_784 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _784 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_783] = 26
                    mem[_783 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _821 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_821 + idx + 68] = mem[_783 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_821 + 68] = mem[_821 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _821 + -mem[64] + 100
                require (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c)
                if (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _620 = mem[64]
                mem[64] = mem[64] + 64
                mem[_620] = 26
                mem[_620 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _633 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_633 + idx + 68] = mem[_620 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_633 + 68] = mem[_633 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _633 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
                    _782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_782] = 26
                    mem[_782 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _818 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_818 + idx + 68] = mem[_782 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_818 + 68] = mem[_818 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _818 + -mem[64] + 100
                require (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _817 = mem[64]
                mem[64] = mem[64] + 64
                mem[_817] = 26
                mem[_817 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _845 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_845 + idx + 68] = mem[_817 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_845 + 68] = mem[_845 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _845 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 30
                mem[_526 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _534 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_534 + idx + 68] = mem[_526 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_534 + 68] = mem[_534 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _534 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _565 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_565] = 26
                    mem[_565 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _573 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_573 + idx + 68] = mem[_565 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_573 + 68] = mem[_573 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _573 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
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
                        _657 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_657 + idx + 68] = mem[_639 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_657 + 68] = mem[_657 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _657 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_656] = 26
                    mem[_656 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_686 + idx + 68] = mem[_656 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_686 + 68] = mem[_686 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _686 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c) / block.number - poolInfo[idx].field_512 != sub_ec68076c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c):
                    _572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_572] = 26
                    mem[_572 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_578 + idx + 68] = mem[_572 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_578 + 68] = mem[_578 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _578 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _655 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_655] = 26
                        mem[_655 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _683 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_683 + idx + 68] = mem[_655 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_683 + 68] = mem[_683 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _683 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_682] = 26
                    mem[_682 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _717 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_717 + idx + 68] = mem[_682 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_717 + 68] = mem[_717 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _717 + -mem[64] + 100
                require (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c)
                if (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _577 = mem[64]
                mem[64] = mem[64] + 64
                mem[_577] = 26
                mem[_577 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _590 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_590 + idx + 68] = mem[_577 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_590 + 68] = mem[_590 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _590 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
                    _681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_681] = 26
                    mem[_681 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _714 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_714 + idx + 68] = mem[_681 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_714 + 68] = mem[_714 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _714 + -mem[64] + 100
                require (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_713] = 26
                mem[_713 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _755 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_755 + idx + 68] = mem[_713 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_755 + 68] = mem[_755 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _755 + -mem[64] + 100
            _525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_525] = 30
            mem[_525 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _531 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_531 + idx + 68] = mem[_525 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_531 + 68] = mem[_531 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _531 + -mem[64] + 100
            _542 = mem[64]
            mem[64] = mem[64] + 64
            mem[_542] = 30
            mem[_542 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _550 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_550 + idx + 68] = mem[_542 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_550 + 68] = mem[_550 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _550 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_638] = 26
                    mem[_638 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_652 + idx + 68] = mem[_638 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_652 + 68] = mem[_652 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _652 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _829 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_829] = 26
                        mem[_829 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _855 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_855 + idx + 68] = mem[_829 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_855 + 68] = mem[_855 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _855 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_854] = 26
                    mem[_854 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _883 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_883 + idx + 68] = mem[_854 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_883 + 68] = mem[_883 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _883 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) / block.number - bonusEndBlock != sub_ec68076c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c):
                    _651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_651] = 26
                    mem[_651 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _677 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_677 + idx + 68] = mem[_651 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_677 + 68] = mem[_677 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _677 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_853] = 26
                        mem[_853 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _880 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_880 + idx + 68] = mem[_853 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_880 + 68] = mem[_880 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _880 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_879] = 26
                    mem[_879 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _911 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_911 + idx + 68] = mem[_879 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_911 + 68] = mem[_911 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _911 + -mem[64] + 100
                require (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c)
                if (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 26
                mem[_676 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_708 + idx + 68] = mem[_676 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_708 + 68] = mem[_708 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _708 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
                    _878 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_878] = 26
                    mem[_878 + 32] = 'SafeMath: division by zero'
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
                        mem[_908 + idx + 68] = mem[_878 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_908 + 68] = mem[_908 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _908 + -mem[64] + 100
                require (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _907 = mem[64]
                mem[64] = mem[64] + 64
                mem[_907] = 26
                mem[_907 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _937 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_937 + idx + 68] = mem[_907 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_937 + 68] = mem[_937 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _937 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                _650 = mem[64]
                mem[64] = mem[64] + 64
                mem[_650] = 26
                mem[_650 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_673 + idx + 68] = mem[_650 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_673 + 68] = mem[_673 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _673 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_852] = 26
                    mem[_852 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _875 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_875 + idx + 68] = mem[_852 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_875 + 68] = mem[_875 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _875 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_874] = 26
                mem[_874 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _903 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_903 + idx + 68] = mem[_874 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_903 + 68] = mem[_903 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _903 + -mem[64] + 100
            require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
            if (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != sub_ec68076c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c):
                _672 = mem[64]
                mem[64] = mem[64] + 64
                mem[_672] = 26
                mem[_672 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_704 + idx + 68] = mem[_672 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_704 + 68] = mem[_704 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _704 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                    _900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_900 + idx + 68] = mem[_873 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_900 + 68] = mem[_900 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _900 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _899 = mem[64]
                mem[64] = mem[64] + 64
                mem[_899] = 26
                mem[_899 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _931 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_931 + idx + 68] = mem[_899 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_931 + 68] = mem[_931 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _931 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c)
            if (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _703 = mem[64]
            mem[64] = mem[64] + 64
            mem[_703] = 26
            mem[_703 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _748 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_748 + idx + 68] = mem[_703 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_748 + 68] = mem[_748 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _748 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
                _898 = mem[64]
                mem[64] = mem[64] + 64
                mem[_898] = 26
                mem[_898 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _928 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_928 + idx + 68] = mem[_898 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_928 + 68] = mem[_928 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _928 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _927 = mem[64]
            mem[64] = mem[64] + 64
            mem[_927] = 26
            mem[_927 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _958 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_958 + idx + 68] = mem[_927 + idx + 32]
                idx = idx + 32
                continue 
            mem[_958 + 68] = mem[_958 + 74 len 26]
            revert with memory
              from mem[64]
               len _958 + -mem[64] + 100
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
            mem[0] = 5
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
                _533 = mem[64]
                mem[64] = mem[64] + 64
                mem[_533] = 30
                mem[_533 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_536 + idx + 68] = mem[_533 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_536 + 68] = mem[_536 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _536 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_584] = 26
                    mem[_584 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_595 + idx + 68] = mem[_584 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_595 + 68] = mem[_595 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _595 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _679 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_679] = 26
                        mem[_679 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _708 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_708 + idx + 68] = mem[_679 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_708 + 68] = mem[_708 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _708 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_707] = 26
                    mem[_707 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _752 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_752 + idx + 68] = mem[_707 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_752 + 68] = mem[_752 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _752 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_594] = 26
                    mem[_594 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_612 + idx + 68] = mem[_594 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_612 + 68] = mem[_612 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _612 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _706 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_706] = 26
                        mem[_706 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_749 + idx + 68] = mem[_706 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_749 + 68] = mem[_749 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _749 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_748] = 26
                    mem[_748 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_795 + idx + 68] = mem[_748 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_795 + 68] = mem[_795 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _795 + -mem[64] + 100
                require (10 * block.number) - (10 * poolInfo[idx].field_512)
                if (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sub_ec68076c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c):
                    _611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_611] = 26
                    mem[_611 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _629 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_629 + idx + 68] = mem[_611 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_629 + 68] = mem[_629 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _629 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _747 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_747] = 26
                        mem[_747 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _792 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_792 + idx + 68] = mem[_747 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_792 + 68] = mem[_792 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _792 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _791 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_791] = 26
                    mem[_791 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _829 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_829 + idx + 68] = mem[_791 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_829 + 68] = mem[_829 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _829 + -mem[64] + 100
                require (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c)
                if (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / (10 * block.number * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_628] = 26
                mem[_628 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _641 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_641 + idx + 68] = mem[_628 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_641 + 68] = mem[_641 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _641 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
                    _790 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_790] = 26
                    mem[_790 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _826 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_826 + idx + 68] = mem[_790 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_826 + 68] = mem[_826 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _826 + -mem[64] + 100
                require (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_825] = 26
                mem[_825 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _853 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_853 + idx + 68] = mem[_825 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_853 + 68] = mem[_853 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _853 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_535] = 30
                mem[_535 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _542 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_542 + idx + 68] = mem[_535 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_542 + 68] = mem[_542 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _542 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_573] = 26
                    mem[_573 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_581 + idx + 68] = mem[_573 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_581 + 68] = mem[_581 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _581 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_647] = 26
                        mem[_647 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _665 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_665 + idx + 68] = mem[_647 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_665 + 68] = mem[_665 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _665 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_664] = 26
                    mem[_664 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _694 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_694 + idx + 68] = mem[_664 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_694 + 68] = mem[_694 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _694 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c) / block.number - poolInfo[idx].field_512 != sub_ec68076c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c):
                    _580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_580] = 26
                    mem[_580 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _586 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_586 + idx + 68] = mem[_580 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_586 + 68] = mem[_586 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _586 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _663 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_663] = 26
                        mem[_663 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_691 + idx + 68] = mem[_663 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_691 + 68] = mem[_691 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _691 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _690 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_690] = 26
                    mem[_690 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _725 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_725 + idx + 68] = mem[_690 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_725 + 68] = mem[_725 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _725 + -mem[64] + 100
                require (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c)
                if (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / (block.number * sub_ec68076c) - (poolInfo[idx].field_512 * sub_ec68076c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _585 = mem[64]
                mem[64] = mem[64] + 64
                mem[_585] = 26
                mem[_585 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _598 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_598 + idx + 68] = mem[_585 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_598 + 68] = mem[_598 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _598 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
                    _689 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_689] = 26
                    mem[_689 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _722 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_722 + idx + 68] = mem[_689 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_722 + 68] = mem[_722 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _722 + -mem[64] + 100
                require (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_721] = 26
                mem[_721 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _763 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_763 + idx + 68] = mem[_721 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_763 + 68] = mem[_763 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _763 + -mem[64] + 100
            _534 = mem[64]
            mem[64] = mem[64] + 64
            mem[_534] = 30
            mem[_534 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _539 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_539 + idx + 68] = mem[_534 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_539 + 68] = mem[_539 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _539 + -mem[64] + 100
            _550 = mem[64]
            mem[64] = mem[64] + 64
            mem[_550] = 30
            mem[_550 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _558 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_558 + idx + 68] = mem[_550 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_558 + 68] = mem[_558 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _558 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_646] = 26
                    mem[_646 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _660 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_660 + idx + 68] = mem[_646 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_660 + 68] = mem[_660 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _660 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_837] = 26
                        mem[_837 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _863 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_863 + idx + 68] = mem[_837 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_863 + 68] = mem[_863 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _863 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_862] = 26
                    mem[_862 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_891 + idx + 68] = mem[_862 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_891 + 68] = mem[_891 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _891 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) / block.number - bonusEndBlock != sub_ec68076c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c):
                    _659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_659] = 26
                    mem[_659 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_685 + idx + 68] = mem[_659 + idx + 32]
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
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _861 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_861] = 26
                        mem[_861 + 32] = 'SafeMath: division by zero'
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
                            mem[_888 + idx + 68] = mem[_861 + idx + 32]
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
                    _919 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_919 + idx + 68] = mem[_887 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_919 + 68] = mem[_919 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _919 + -mem[64] + 100
                require (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c)
                if (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_684] = 26
                mem[_684 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _716 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_716 + idx + 68] = mem[_684 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_716 + 68] = mem[_716 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _716 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
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
                    _916 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_916 + idx + 68] = mem[_886 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_916 + 68] = mem[_916 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _916 + -mem[64] + 100
                require (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_915] = 26
                mem[_915 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[idx].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _945 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_945 + idx + 68] = mem[_915 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_945 + 68] = mem[_945 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _945 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                _658 = mem[64]
                mem[64] = mem[64] + 64
                mem[_658] = 26
                mem[_658 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _681 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_681 + idx + 68] = mem[_658 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_681 + 68] = mem[_681 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _681 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _883 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_883 + idx + 68] = mem[_860 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_883 + 68] = mem[_883 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _883 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _882 = mem[64]
                mem[64] = mem[64] + 64
                mem[_882] = 26
                mem[_882 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _911 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_911 + idx + 68] = mem[_882 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_911 + 68] = mem[_911 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _911 + -mem[64] + 100
            require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
            if (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != sub_ec68076c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c):
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 26
                mem[_680 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_712 + idx + 68] = mem[_680 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_712 + 68] = mem[_712 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _712 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_60a7f301Address)
                call sub_60a7f301Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_881] = 26
                    mem[_881 + 32] = 'SafeMath: division by zero'
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
                        mem[_908 + idx + 68] = mem[_881 + idx + 32]
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
                _939 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_939 + idx + 68] = mem[_907 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_939 + 68] = mem[_939 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _939 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c)
            if (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[idx].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _711 = mem[64]
            mem[64] = mem[64] + 64
            mem[_711] = 26
            mem[_711 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _756 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_756 + idx + 68] = mem[_711 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_756 + 68] = mem[_756 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _756 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_60a7f301Address)
            call sub_60a7f301Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint:
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
                _936 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_936 + idx + 68] = mem[_906 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_936 + 68] = mem[_936 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _936 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _935 = mem[64]
            mem[64] = mem[64] + 64
            mem[_935] = 26
            mem[_935 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_ec68076c * poolInfo[idx].field_256) + (block.number * sub_ec68076c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _966 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_966 + idx + 68] = mem[_935 + idx + 32]
                idx = idx + 32
                continue 
            mem[_966 + 68] = mem[_966 + 74 len 26]
            revert with memory
              from mem[64]
               len _966 + -mem[64] + 100
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
                require ext_code.size(sub_60a7f301Address)
                staticcall sub_60a7f301Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_60a7f301Address)
                if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                    call sub_60a7f301Address.0xa9059cbb with:
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
                else:
                    call sub_60a7f301Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
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
                require ext_code.size(sub_60a7f301Address)
                staticcall sub_60a7f301Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_60a7f301Address)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_60a7f301Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call sub_60a7f301Address.0xa9059cbb with:
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
                    require ext_code.size(sub_60a7f301Address)
                    staticcall sub_60a7f301Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_60a7f301Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                        call sub_60a7f301Address.0xa9059cbb with:
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
                    else:
                        call sub_60a7f301Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
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
                    require ext_code.size(sub_60a7f301Address)
                    staticcall sub_60a7f301Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_60a7f301Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_60a7f301Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_60a7f301Address.0xa9059cbb with:
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
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_60a7f301Address)
                    call sub_60a7f301Address.0x40c10f19 with:
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
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
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
                                require ext_code.size(sub_60a7f301Address)
                                staticcall sub_60a7f301Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_60a7f301Address)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[736 len 4] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_60a7f301Address)
                                staticcall sub_60a7f301Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_60a7f301Address)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                else:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
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
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
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
                                require ext_code.size(sub_60a7f301Address)
                                staticcall sub_60a7f301Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_60a7f301Address)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                else:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                    mem[708 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_60a7f301Address)
                                staticcall sub_60a7f301Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_60a7f301Address)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                else:
                                    call sub_60a7f301Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
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
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_60a7f301Address)
                        call sub_60a7f301Address.0x40c10f19 with:
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
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
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
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
                        if (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sub_ec68076c:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
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
                            require (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c)
                            if (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / (10 * block.number * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
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
                                require (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
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
                        require ext_code.size(sub_60a7f301Address)
                        call sub_60a7f301Address.0x40c10f19 with:
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
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
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
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_60a7f301Address)
                                    staticcall sub_60a7f301Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_60a7f301Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_60a7f301Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
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
                        if (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c) / block.number - poolInfo[arg1].field_512 != sub_ec68076c:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
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
                            require (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c)
                            if (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / (block.number * sub_ec68076c) - (poolInfo[arg1].field_512 * sub_ec68076c) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                require (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
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
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                            if (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) / block.number - bonusEndBlock != sub_ec68076c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                require (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c)
                                if (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / (block.number * sub_ec68076c) - (bonusEndBlock * sub_ec68076c) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                    require (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ec68076c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                        if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_60a7f301Address)
                            call sub_60a7f301Address.0x40c10f19 with:
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
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
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_60a7f301Address)
                                        staticcall sub_60a7f301Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_60a7f301Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_60a7f301Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_60a7f301Address.0xa9059cbb with:
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
                            require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
                            if (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != sub_ec68076c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
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
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                require (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c)
                                if (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / (9 * bonusEndBlock * sub_ec68076c) - (10 * poolInfo[arg1].field_512 * sub_ec68076c) + (block.number * sub_ec68076c) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_60a7f301Address)
                                call sub_60a7f301Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
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
                                    require (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * sub_ec68076c * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_ec68076c * poolInfo[arg1].field_256) + (block.number * sub_ec68076c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_60a7f301Address)
                                            staticcall sub_60a7f301Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_60a7f301Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_60a7f301Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_60a7f301Address.0xa9059cbb with:
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
