contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
address owner;
address sub_dd25b795Address;
uint32 stor2;
address devaddr;
uint256 stor2;
address sub_3485c2f3Address;
uint32 stor4;
address migratorAddress;
uint256 stor4;
array of struct poolInfo;
mapping of uint256 userInfo;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function sub_3485c2f3(?) payable {
    return sub_3485c2f3Address
}

function migrator() payable {
    return address(migratorAddress)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2]
}

function devaddr() payable {
    return address(devaddr)
}

function sub_dd25b795(?) payable {
    return sub_dd25b795Address
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

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'devaddr: wut?'
    if msg.sender == this.address:
        revert with 0, 'devaddr: wut?'
    if not msg.sender:
        revert with 0, 'devaddr: wut?'
    address(devaddr) = arg1
}

function setRewardAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if msg.sender == this.address:
        revert with 0, 'rewardaddr: wut?'
    if not msg.sender:
        revert with 0, 'rewardaddr: wut?'
    sub_3485c2f3Address = arg1
}

function canStake(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_1536:
        return block.timestamp <= poolInfo[arg1].field_1536
    if block.timestamp < poolInfo[arg1].field_1280:
        return block.timestamp >= poolInfo[arg1].field_1280
    return (poolInfo[arg1].field_768 < poolInfo[arg1].field_1024)
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if userInfo[arg1][address(arg2)] <= 0:
        return (userInfo[arg1][address(arg2)] > 0)
    if poolInfo[arg1].field_1536 + poolInfo[arg1].field_512 < poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return block.timestamp >= poolInfo[arg1].field_1536 + poolInfo[arg1].field_512
}

function sub_c78b6a7c(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = arg2
    poolInfo[poolInfo.length].field_512 = arg3
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg4
    poolInfo[poolInfo.length].field_1280 = arg5
    poolInfo[poolInfo.length].field_1536 = arg6
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg6 <= arg5:
        revert with 0, 'time set error'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_512 = arg3
    poolInfo[arg1].field_1024 = arg4
    poolInfo[arg1].field_1280 = arg5
    poolInfo[arg1].field_1536 = arg6
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 - arg1 < arg3:
        if not arg2 - arg1:
            return 0
        require arg2 - arg1
        if (10^12 * arg2) - (10^12 * arg1) / arg2 - arg1 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((10^12 * arg2) - (10^12 * arg1) / 8760 * 24 * 3600)
    if not arg3:
        return 0
    require arg3
    if 10^12 * arg3 / arg3 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (10^12 * arg3 / 8760 * 24 * 3600)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'Zero Deposit'
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_1536:
        revert with 0, 'Not Staking Period'
    if block.timestamp < poolInfo[arg1].field_1280:
        revert with 0, 'Not Staking Period'
    if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1024:
        revert with 0, 'Not Staking Period'
    if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if poolInfo[arg1].field_768 + arg2 > poolInfo[arg1].field_1024:
        revert with 0, 'Overflow TotalBalance of Pool'
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
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if userInfo[arg1][address(msg.sender)] + arg2 < userInfo[arg1][address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg1][address(msg.sender)] += arg2
    if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    poolInfo[arg1].field_768 += arg2
    emit Deposit(arg2, msg.sender, arg1);
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
                        0x775361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
    call poolInfo[arg1].field_0 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(migratorAddress))
    call address(migratorAddress).migrate(address arg1) with:
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)] / 100 > userInfo[arg1][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)] - (userInfo[arg1][address(msg.sender)] / 100)) >> 32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, userInfo[arg1][address(msg.sender)] - (userInfo[arg1][address(msg.sender)] / 100)) << 224, mem[452 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[420]:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 499 len 22]
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, userInfo[arg1][address(msg.sender)] / 100) >> 32
    call poolInfo[arg1].field_0 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(224, 32, userInfo[arg1][address(msg.sender)] / 100) << 224, mem[ceil32(return_data.size) + 617 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 585]:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    if userInfo[arg1][address(msg.sender)] > poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_768 -= userInfo[arg1][address(msg.sender)]
    emit EmergencyWithdraw(address arg1, uint256 arg2, uint256 arg3):
                           userInfo[arg1][address(msg.sender)],
                           mem[(2 * ceil32(return_data.size)) + 650 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                           msg.sender,
                           arg1,
    userInfo[arg1][address(msg.sender)] = 0
}

function sub_b74070df(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp < poolInfo[arg1].field_1536:
        return 0
    if poolInfo[arg1].field_1536 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - poolInfo[arg1].field_1536 < poolInfo[arg1].field_512:
        if not block.timestamp - poolInfo[arg1].field_1536:
            if userInfo[arg1][address(arg2)]:
                require userInfo[arg1][address(arg2)]
                if 0 / userInfo[arg1][address(arg2)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                else:
                    return 0
            else:
                return 0
        require block.timestamp - poolInfo[arg1].field_1536
        if (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / block.timestamp - poolInfo[arg1].field_1536 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not userInfo[arg1][address(arg2)]:
            return 0
        require userInfo[arg1][address(arg2)]
        if userInfo[arg1][address(arg2)] * (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600 / userInfo[arg1][address(arg2)] != (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not userInfo[arg1][address(arg2)] * (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600 / 10^12:
            return 0
        require userInfo[arg1][address(arg2)] * (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600 / 10^12
        if userInfo[arg1][address(arg2)] * (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600 / 10^12 * poolInfo[arg1].field_256 / userInfo[arg1][address(arg2)] * (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600 / 10^12 != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (userInfo[arg1][address(arg2)] * (10^12 * block.timestamp) - (10^12 * poolInfo[arg1].field_1536) / 8760 * 24 * 3600 / 10^12 * poolInfo[arg1].field_256 / 100)
    if not poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)]:
            require userInfo[arg1][address(arg2)]
            if 0 / userInfo[arg1][address(arg2)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            else:
                return 0
        else:
            return 0
    require poolInfo[arg1].field_512
    if 10^12 * poolInfo[arg1].field_512 / poolInfo[arg1].field_512 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not userInfo[arg1][address(arg2)]:
        return 0
    require userInfo[arg1][address(arg2)]
    if userInfo[arg1][address(arg2)] * 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600 / userInfo[arg1][address(arg2)] != 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not userInfo[arg1][address(arg2)] * 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600 / 10^12:
        return 0
    require userInfo[arg1][address(arg2)] * 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600 / 10^12
    if userInfo[arg1][address(arg2)] * 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600 / 10^12 * poolInfo[arg1].field_256 / userInfo[arg1][address(arg2)] * 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600 / 10^12 != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return (userInfo[arg1][address(arg2)] * 10^12 * poolInfo[arg1].field_512 / 8760 * 24 * 3600 / 10^12 * poolInfo[arg1].field_256 / 100)
}



}
