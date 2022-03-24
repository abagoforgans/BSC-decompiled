contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address factoryAddress;
address kingAddress;
address wbnbAddress;
uint32 stor4;
address migratorAddress;
uint256 stor4;
array of struct poolInfo;
mapping of struct userInfo;
uint256 lockPeriod;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function lockPeriod() {
    return lockPeriod
}

function migrator() {
    return address(migratorAddress)
}

function wbnb() {
    return wbnbAddress
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function factory() {
    return factoryAddress
}

function king() {
    return kingAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLockPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    lockPeriod = arg1
}

function setMigrator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(migratorAddress) = arg1
}

function transferOwnership(address arg1) {
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

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ext_code.size(kingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call kingAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function sub_c10ad320(?) {
    require calldata.size - 4 >= 32
    if userInfo[arg1][msg.sender].field_512:
        if lockPeriod + userInfo[arg1][msg.sender].field_768 < userInfo[arg1][msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= lockPeriod + userInfo[arg1][msg.sender].field_768:
            if not ext_code.size(kingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_544
            call kingAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args userInfo[arg1][msg.sender].field_512, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_512
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            userInfo[arg1][msg.sender].field_512 = 0
            userInfo[arg1][msg.sender].field_768 = 0
}

function migrate(uint256 arg1) {
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
    if not ext_call.return_data[0]:
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
    else:
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
            revert with 0, 32, 42, 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_768:
        if not poolInfo[arg1].field_1280:
            poolInfo[arg1].field_768 = block.number
        else:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > poolInfo[arg1].field_512:
                if poolInfo[arg1].field_512 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - poolInfo[arg1].field_512:
                    if poolInfo[arg1].field_768 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1280
                    poolInfo[arg1].field_768 = block.number
                    if poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / ext_call.return_data[0] - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if poolInfo[arg1].field_768 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number - poolInfo[arg1].field_768 < 30000:
                        if not (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256):
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_768 = block.number
                            if poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) != block.number - poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6:
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_768 = block.number
                            if ((ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6) + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6
                    else:
                        if not (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256):
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_768 = block.number
                            if poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) != 30000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6:
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_768 = block.number
                            if ((30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6) + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6
}

function pendingReward(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_768:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if ext_call.return_data[0] <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_768 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / ext_call.return_data[0] - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256):
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_768 < 30000:
        if (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) != block.number - poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) + (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolInfo[arg1].field_768) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) != 30000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6:
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (30000 * ext_call.return_data[0] * poolInfo[arg1].field_256) - (30000 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_768:
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_1280:
            poolInfo[idx].field_768 = block.number
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
        if ext_call.return_data[0] <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        _159 = mem[64]
        mem[64] = mem[64] + 64
        mem[_159] = 30
        mem[_159 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > ext_call.return_data[0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _159 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - poolInfo[idx].field_512:
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 30
            mem[_173 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _173 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[idx].field_768 < 30000:
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_199] = 26
                mem[_199 + 32] = 'SafeMath: division by zero'
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 26
                mem[_207 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _216 + 68] = mem[idx + _207 + 32]
                    idx = idx + 32
                    continue 
                mem[_216 + 68] = mem[_216 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _216 + -mem[64] + 100
            _203 = mem[64]
            mem[64] = mem[64] + 64
            mem[_203] = 26
            mem[_203 + 32] = 'SafeMath: division by zero'
            _211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_211] = 26
            mem[_211 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _224 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _224 + 68] = mem[idx + _211 + 32]
                idx = idx + 32
                continue 
            mem[_224 + 68] = mem[_224 + 74 len 26]
            revert with memory
              from mem[64]
               len _224 + -mem[64] + 100
        if (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) / ext_call.return_data[0] - poolInfo[idx].field_512 != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _174 = mem[64]
        mem[64] = mem[64] + 64
        mem[_174] = 30
        mem[_174 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_768 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _174 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number - poolInfo[idx].field_768 < 30000:
            if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                _200 = mem[64]
                mem[64] = mem[64] + 64
                mem[_200] = 26
                mem[_200 + 32] = 'SafeMath: division by zero'
                _210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_210] = 26
                mem[_210 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _220 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _220 + 68] = mem[idx + _210 + 32]
                    idx = idx + 32
                    continue 
                mem[_220 + 68] = mem[_220 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _220 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != block.number - poolInfo[idx].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            if not (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6:
                _212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_212] = 26
                mem[_212 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _227 + 68] = mem[idx + _212 + 32]
                    idx = idx + 32
                    continue 
                mem[_227 + 68] = mem[_227 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _227 + -mem[64] + 100
            if 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _219 = mem[64]
            mem[64] = mem[64] + 64
            mem[_219] = 26
            mem[_219 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6
                idx = idx + 1
                continue 
            _235 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _235 + 68] = mem[idx + _219 + 32]
                idx = idx + 32
                continue 
            mem[_235 + 68] = mem[_235 + 74 len 26]
            revert with memory
              from mem[64]
               len _235 + -mem[64] + 100
        if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 26
            mem[_205 + 32] = 'SafeMath: division by zero'
            _215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_215] = 26
            mem[_215 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _231 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _231 + 68] = mem[idx + _215 + 32]
                idx = idx + 32
                continue 
            mem[_231 + 68] = mem[_231 + 74 len 26]
            revert with memory
              from mem[64]
               len _231 + -mem[64] + 100
        if (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != 30000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 26
        mem[_206 + 32] = 'SafeMath: division by zero'
        if not (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6:
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 26
            mem[_223 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6
                idx = idx + 1
                continue 
            _239 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _239 + 68] = mem[idx + _223 + 32]
                idx = idx + 32
                continue 
            mem[_239 + 68] = mem[_239 + 74 len 26]
            revert with memory
              from mem[64]
               len _239 + -mem[64] + 100
        if 10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _230 = mem[64]
        mem[64] = mem[64] + 64
        mem[_230] = 26
        mem[_230 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_1280:
            if (10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1024 += 10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / poolInfo[idx].field_1280
            poolInfo[idx].field_768 = block.number
            if ((30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_512 += (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6
            idx = idx + 1
            continue 
        _248 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _248 + 68] = mem[idx + _230 + 32]
            idx = idx + 32
            continue 
        mem[_248 + 68] = mem[_248 + 74 len 26]
        revert with memory
          from mem[64]
           len _248 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1280:
                poolInfo[idx].field_768 = block.number
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
            if ext_call.return_data[0] <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 30
            mem[_166 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - poolInfo[idx].field_512:
                _180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_180] = 30
                mem[_180 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _180 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.number - poolInfo[idx].field_768 < 30000:
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = 26
                    mem[_206 + 32] = 'SafeMath: division by zero'
                    _214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_214] = 26
                    mem[_214 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _223 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _223 + 68] = mem[idx + _214 + 32]
                        idx = idx + 32
                        continue 
                    mem[_223 + 68] = mem[_223 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _223 + -mem[64] + 100
                _210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_210] = 26
                mem[_210 + 32] = 'SafeMath: division by zero'
                _218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_218] = 26
                mem[_218 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _231 + 68] = mem[idx + _218 + 32]
                    idx = idx + 32
                    continue 
                mem[_231 + 68] = mem[_231 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _231 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) / ext_call.return_data[0] - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _181 = mem[64]
            mem[64] = mem[64] + 64
            mem[_181] = 30
            mem[_181 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _181 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[idx].field_768 < 30000:
                if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = 26
                    mem[_207 + 32] = 'SafeMath: division by zero'
                    _217 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_217] = 26
                    mem[_217 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _227 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _227 + 68] = mem[idx + _217 + 32]
                        idx = idx + 32
                        continue 
                    mem[_227 + 68] = mem[_227 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _227 + -mem[64] + 100
                if (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != block.number - poolInfo[idx].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if not (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6:
                    _219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_219] = 26
                    mem[_219 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6
                        idx = idx + 1
                        continue 
                    _234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _234 + 68] = mem[idx + _219 + 32]
                        idx = idx + 32
                        continue 
                    mem[_234 + 68] = mem[_234 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _234 + -mem[64] + 100
                if 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = 26
                mem[_226 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _242 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _242 + 68] = mem[idx + _226 + 32]
                    idx = idx + 32
                    continue 
                mem[_242 + 68] = mem[_242 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _242 + -mem[64] + 100
            if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                _212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_212] = 26
                mem[_212 + 32] = 'SafeMath: division by zero'
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _238 + 68] = mem[idx + _222 + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 68] = mem[_238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            if (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != 30000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_213] = 26
            mem[_213 + 32] = 'SafeMath: division by zero'
            if not (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6:
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _246 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _246 + 68] = mem[idx + _230 + 32]
                    idx = idx + 32
                    continue 
                mem[_246 + 68] = mem[_246 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _246 + -mem[64] + 100
            if 10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 26
            mem[_237 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6
                idx = idx + 1
                continue 
            _255 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _255 + 68] = mem[idx + _237 + 32]
                idx = idx + 32
                continue 
            mem[_255 + 68] = mem[_255 + 74 len 26]
            revert with memory
              from mem[64]
               len _255 + -mem[64] + 100
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1280:
                poolInfo[idx].field_768 = block.number
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
            if ext_call.return_data[0] <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 30
            mem[_184 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _184 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - poolInfo[idx].field_512:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 30
                mem[_198 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.number - poolInfo[idx].field_768 < 30000:
                    _224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_224] = 26
                    mem[_224 + 32] = 'SafeMath: division by zero'
                    _232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_232] = 26
                    mem[_232 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _241 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _241 + 68] = mem[idx + _232 + 32]
                        idx = idx + 32
                        continue 
                    mem[_241 + 68] = mem[_241 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _241 + -mem[64] + 100
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _249 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _249 + 68] = mem[idx + _236 + 32]
                    idx = idx + 32
                    continue 
                mem[_249 + 68] = mem[_249 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _249 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) / ext_call.return_data[0] - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_199] = 30
            mem[_199 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _199 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[idx].field_768 < 30000:
                if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                    _225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_225] = 26
                    mem[_225 + 32] = 'SafeMath: division by zero'
                    _235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_235] = 26
                    mem[_235 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _245 + 68] = mem[idx + _235 + 32]
                        idx = idx + 32
                        continue 
                    mem[_245 + 68] = mem[_245 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _245 + -mem[64] + 100
                if (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != block.number - poolInfo[idx].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if not (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6:
                    _237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_237] = 26
                    mem[_237 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6
                        idx = idx + 1
                        continue 
                    _252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _252 + 68] = mem[idx + _237 + 32]
                        idx = idx + 32
                        continue 
                    mem[_252 + 68] = mem[_252 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _252 + -mem[64] + 100
                if 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_244] = 26
                mem[_244 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number) - (ext_call.return_data[0] * poolInfo[idx].field_256 * poolInfo[idx].field_768) + (poolInfo[idx].field_512 * poolInfo[idx].field_256 * poolInfo[idx].field_768) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _260 + 68] = mem[idx + _244 + 32]
                    idx = idx + 32
                    continue 
                mem[_260 + 68] = mem[_260 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _260 + -mem[64] + 100
            if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                _240 = mem[64]
                mem[64] = mem[64] + 64
                mem[_240] = 26
                mem[_240 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _256 + 68] = mem[idx + _240 + 32]
                    idx = idx + 32
                    continue 
                mem[_256 + 68] = mem[_256 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _256 + -mem[64] + 100
            if (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != 30000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 26
            mem[_231 + 32] = 'SafeMath: division by zero'
            if not (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6:
                _248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_248] = 26
                mem[_248 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _264 + 68] = mem[idx + _248 + 32]
                    idx = idx + 32
                    continue 
                mem[_264 + 68] = mem[_264 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _264 + -mem[64] + 100
            if 10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _255 = mem[64]
            mem[64] = mem[64] + 64
            mem[_255] = 26
            mem[_255 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^12 * (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (30000 * ext_call.return_data[0] * poolInfo[idx].field_256) - (30000 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / 30 * 10^6
                idx = idx + 1
                continue 
            _273 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _273 + 68] = mem[idx + _255 + 32]
                idx = idx + 32
                continue 
            mem[_273 + 68] = mem[_273 + 74 len 26]
            revert with memory
              from mem[64]
               len _273 + -mem[64] + 100
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = block.number
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
}



}
