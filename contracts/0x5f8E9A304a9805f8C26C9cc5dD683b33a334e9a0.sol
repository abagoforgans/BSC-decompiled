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
            mem[324 len 0] = 0
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
                        if (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) != block.number - poolInfo[arg1].field_768 % 30000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6:
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1280
                        else:
                            if 10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280
                        poolInfo[arg1].field_768 = block.number
                        if ((ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6) + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_512 += (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6
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
        _106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_106] = 30
        mem[_106 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > ext_call.return_data[0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _106 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - poolInfo[idx].field_512:
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 30
            mem[_120 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _120 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_134] = 24
            mem[_134 + 32] = 'SafeMath: modulo by zero'
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 26
            mem[_148 + 32] = 'SafeMath: division by zero'
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _156 + 68] = mem[idx + _151 + 32]
                idx = idx + 32
                continue 
            mem[_156 + 68] = mem[_156 + 74 len 26]
            revert with memory
              from mem[64]
               len _156 + -mem[64] + 100
        if (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) / ext_call.return_data[0] - poolInfo[idx].field_512 != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_768 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _121 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _137 = mem[64]
        mem[64] = mem[64] + 64
        mem[_137] = 24
        mem[_137 + 32] = 'SafeMath: modulo by zero'
        if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
            _149 = mem[64]
            mem[64] = mem[64] + 64
            mem[_149] = 26
            mem[_149 + 32] = 'SafeMath: division by zero'
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 26
            mem[_154 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _160 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _160 + 68] = mem[idx + _154 + 32]
                idx = idx + 32
                continue 
            mem[_160 + 68] = mem[_160 + 74 len 26]
            revert with memory
              from mem[64]
               len _160 + -mem[64] + 100
        if (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != block.number - poolInfo[idx].field_768 % 30000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _150 = mem[64]
        mem[64] = mem[64] + 64
        mem[_150] = 26
        mem[_150 + 32] = 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6:
            _155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_155] = 26
            mem[_155 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6
                idx = idx + 1
                continue 
            _163 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _163 + 68] = mem[idx + _155 + 32]
                idx = idx + 32
                continue 
            mem[_163 + 68] = mem[_163 + 74 len 26]
            revert with memory
              from mem[64]
               len _163 + -mem[64] + 100
        if 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _159 = mem[64]
        mem[64] = mem[64] + 64
        mem[_159] = 26
        mem[_159 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_1280:
            if (10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / poolInfo[idx].field_1280
            poolInfo[idx].field_768 = block.number
            if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6
            idx = idx + 1
            continue 
        _167 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _167 + 68] = mem[idx + _159 + 32]
            idx = idx + 32
            continue 
        mem[_167 + 68] = mem[_167 + 74 len 26]
        revert with memory
          from mem[64]
           len _167 + -mem[64] + 100
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / ext_call.return_data[0] - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) != block.number - poolInfo[arg1].field_768 % 30000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6:
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (ext_call.return_data[0] * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * block.number - poolInfo[arg1].field_768 % 30000) / 30 * 10^6 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
            _113 = mem[64]
            mem[64] = mem[64] + 64
            mem[_113] = 30
            mem[_113 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _113 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - poolInfo[idx].field_512:
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 30
                mem[_127 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _127 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                _141 = mem[64]
                mem[64] = mem[64] + 64
                mem[_141] = 24
                mem[_141 + 32] = 'SafeMath: modulo by zero'
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = 26
                mem[_155 + 32] = 'SafeMath: division by zero'
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 26
                mem[_158 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _163 + 68] = mem[idx + _158 + 32]
                    idx = idx + 32
                    continue 
                mem[_163 + 68] = mem[_163 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _163 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) / ext_call.return_data[0] - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 30
            mem[_128 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _128 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_144] = 24
            mem[_144 + 32] = 'SafeMath: modulo by zero'
            if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                _161 = mem[64]
                mem[64] = mem[64] + 64
                mem[_161] = 26
                mem[_161 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _167 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _167 + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
                mem[_167 + 68] = mem[_167 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _167 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != block.number - poolInfo[idx].field_768 % 30000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 26
            mem[_157 + 32] = 'SafeMath: division by zero'
            if not (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6:
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 26
                mem[_162 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _170 + 68] = mem[idx + _162 + 32]
                    idx = idx + 32
                    continue 
                mem[_170 + 68] = mem[_170 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _170 + -mem[64] + 100
            if 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6
                idx = idx + 1
                continue 
            _174 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _174 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_174 + 68] = mem[_174 + 74 len 26]
            revert with memory
              from mem[64]
               len _174 + -mem[64] + 100
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
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 30
            mem[_131 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _131 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - poolInfo[idx].field_512:
                _145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_145] = 30
                mem[_145 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _145 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                _159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_159] = 24
                mem[_159 + 32] = 'SafeMath: modulo by zero'
                _173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_173] = 26
                mem[_173 + 32] = 'SafeMath: division by zero'
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _181 + 68] = mem[idx + _176 + 32]
                    idx = idx + 32
                    continue 
                mem[_181 + 68] = mem[_181 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _181 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) / ext_call.return_data[0] - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _146 = mem[64]
            mem[64] = mem[64] + 64
            mem[_146] = 30
            mem[_146 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _146 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _162 = mem[64]
            mem[64] = mem[64] + 64
            mem[_162] = 24
            mem[_162 + 32] = 'SafeMath: modulo by zero'
            if not (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256):
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 26
                mem[_174 + 32] = 'SafeMath: division by zero'
                _179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_179] = 26
                mem[_179 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _185 + 68] = mem[idx + _179 + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            if (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / (ext_call.return_data[0] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * poolInfo[idx].field_256) != block.number - poolInfo[idx].field_768 % 30000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = 26
            mem[_175 + 32] = 'SafeMath: division by zero'
            if not (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6:
                _180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_180] = 26
                mem[_180 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6
                    idx = idx + 1
                    continue 
                _188 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _188 + 68] = mem[idx + _180 + 32]
                    idx = idx + 32
                    continue 
                mem[_188 + 68] = mem[_188 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _188 + -mem[64] + 100
            if 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^12 * (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6 / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = block.number
                if ((ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_512 += (ext_call.return_data[0] * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) - (poolInfo[idx].field_512 * poolInfo[idx].field_256 * block.number - poolInfo[idx].field_768 % 30000) / 30 * 10^6
                idx = idx + 1
                continue 
            _192 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _192 + 68] = mem[idx + _184 + 32]
                idx = idx + 32
                continue 
            mem[_192 + 68] = mem[_192 + 74 len 26]
            revert with memory
              from mem[64]
               len _192 + -mem[64] + 100
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = block.number
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
}



}
