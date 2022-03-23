contract main {




// =====================  Runtime code  =====================


#
#  - convert(uint256 arg1, uint256 arg2)
#
address owner;
address factoryAddress;
address kingAddress;
address wbnbAddress;
uint32 stor4;
address migratorAddress;
uint256 stor4;
address devaddr;
uint32 sub_2f869274; offset 160
uint32 sub_4aaf2adf; offset 192
uint32 sub_5c78ba13; offset 224
address sub_2d3c901bAddress;
uint32 sub_1954483b;
uint32 sub_e9afcd23; offset 32
array of struct lockInfo;
mapping of struct userLockInfo;
uint256 sub_06764d66;
array of struct poolInfo;
mapping of struct userPoolInfo;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884730;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884731;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884732;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884733;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884734;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function sub_06764d66(?) payable {
    return sub_06764d66
}

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
           poolInfo[arg1].field_1280
}

function sub_1954483b(?) payable {
    return sub_1954483b
}

function sub_2d3c901b(?) payable {
    return sub_2d3c901bAddress
}

function sub_2f869274(?) payable {
    return sub_2f869274
}

function sub_4aaf2adf(?) payable {
    return sub_4aaf2adf
}

function userPoolInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userPoolInfo[arg1][arg2].field_0, userPoolInfo[arg1][arg2].field_256
}

function lockInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lockInfo.length
    return lockInfo[arg1].field_0, lockInfo[arg1].field_256
}

function lockLength() payable {
    return lockInfo.length
}

function sub_5c78ba13(?) payable {
    return sub_5c78ba13
}

function migrator() payable {
    return address(migratorAddress)
}

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
}

function king() payable {
    return kingAddress
}

function devaddr() payable {
    return devaddr
}

function userLockInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userLockInfo[arg1][arg2].field_0, userLockInfo[arg1][arg2].field_256
}

function sub_e9afcd23(?) payable {
    return sub_e9afcd23
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

function sub_1f29071a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_1954483b = arg1
}

function sub_2ba572cd(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_2f869274 = arg1
}

function sub_8f9887dc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_e9afcd23 = arg1
}

function sub_9c4a9671(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_5c78ba13 = arg1
}

function sub_fddfce21(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_4aaf2adf = arg1
}

function setOp(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_2d3c901bAddress != msg.sender:
        revert with 0, 'op: wut?'
    sub_2d3c901bAddress = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(migratorAddress) = arg1
}

function sub_0d71feed(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 + sub_06764d66 < sub_06764d66:
        revert with 0, 'SafeMath: addition overflow'
    sub_06764d66 += arg1
    if 1000 < arg1 + sub_06764d66:
        revert with 0, 'addLock: lock exceed'
    lockInfo.length++
    lockInfo[lockInfo.length].field_0 = arg1
    storF3F7[stor8.length] = arg2
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

function sub_15296aef(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < lockInfo.length
    if lockInfo[arg1].field_0 > sub_06764d66:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_06764d66 = arg2 + sub_06764d66 - lockInfo[arg1].field_0
    require arg1 < lockInfo.length
    lockInfo[arg1].field_0 = arg2
    lockInfo[arg1].field_256 = arg3
}

function sub_d55485e3(?) payable {
    idx = 0
    s = 0
    while idx < lockInfo.length:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 9)
        if not userLockInfo[idx][address(msg.sender)].field_0:
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < userLockInfo[idx][address(msg.sender)].field_256:
            idx = idx + 1
            s = s
            continue 
        if userLockInfo[idx][address(msg.sender)].field_0 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        userLockInfo[idx][address(msg.sender)].field_0 = 0
        userLockInfo[idx][address(msg.sender)].field_256 = 0
        idx = idx + 1
        s = userLockInfo[idx][address(msg.sender)].field_0 + s
        continue 
    if s:
        require ext_code.size(kingAddress)
        call kingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userPoolInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userPoolInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userPoolInfo[arg1][msg.sender].field_0
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
    emit EmergencyWithdraw(userPoolInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userPoolInfo[arg1][msg.sender].field_0 = 0
    userPoolInfo[arg1][msg.sender].field_256 = 0
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
                        0x445361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
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
    if block.number > poolInfo[arg1].field_1024:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_1024 = block.number
        else:
            if poolInfo[arg1].field_512 > poolInfo[arg1].field_768:
                if poolInfo[arg1].field_768 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_512 - poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_1024 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                    if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) / poolInfo[arg1].field_512 - poolInfo[arg1].field_768 != sub_1954483b:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if poolInfo[arg1].field_1024 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) != block.number - poolInfo[arg1].field_1024 % 30000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]
                        if ((poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6
                poolInfo[arg1].field_1024 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 11
        if block.number <= poolInfo[idx].field_1024:
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
            poolInfo[idx].field_1024 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 <= poolInfo[idx].field_768:
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[64] = mem[64] + 64
        mem[_110] = 30
        mem[_110 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_768 > poolInfo[idx].field_512:
            _111 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _111 + 68] = mem[idx + _110 + 32]
                idx = idx + 32
                continue 
            mem[_111 + 68] = mem[_111 + 70 len 30]
            revert with memory
              from mem[64]
               len _111 + -mem[64] + 100
        if not poolInfo[idx].field_512 - poolInfo[idx].field_768:
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 30
            mem[_120 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1024 > block.number:
                _122 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _122 + 68] = mem[idx + _120 + 32]
                    idx = idx + 32
                    continue 
                mem[_122 + 68] = mem[_122 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _122 + -mem[64] + 100
            _130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_130] = 24
            mem[_130 + 32] = 'SafeMath: modulo by zero'
            _140 = mem[64]
            mem[64] = mem[64] + 64
            mem[_140] = 26
            mem[_140 + 32] = 'SafeMath: division by zero'
            _143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_143] = 26
            mem[_143 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 = block.number
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _143 + 32]
                idx = idx + 32
                continue 
        else:
            if (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b) / poolInfo[idx].field_512 - poolInfo[idx].field_768 != sub_1954483b:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_121] = 30
            mem[_121 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1024 > block.number:
                _125 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _125 + 68] = mem[idx + _121 + 32]
                    idx = idx + 32
                    continue 
                mem[_125 + 68] = mem[_125 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _125 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 24
            mem[_133 + 32] = 'SafeMath: modulo by zero'
            if not (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b):
                _141 = mem[64]
                mem[64] = mem[64] + 64
                mem[_141] = 26
                mem[_141 + 32] = 'SafeMath: division by zero'
                _146 = mem[64]
                mem[64] = mem[64] + 64
                mem[_146] = 26
                mem[_146 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _146 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b) != block.number - poolInfo[idx].field_1024 % 30000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_142] = 26
                mem[_142 + 32] = 'SafeMath: division by zero'
                if not (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6:
                    _147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_147] = 26
                    mem[_147 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                        if ((poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6
                        poolInfo[idx].field_1024 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _147 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if 10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _151 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_151] = 26
                    mem[_151 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1280 += 10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]
                        if ((poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6
                        poolInfo[idx].field_1024 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _151 + 32]
                        idx = idx + 32
                        continue 
        revert with 0, 'SafeMath: division by zero'
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_1024:
        if not userPoolInfo[arg1][address(arg2)].field_0:
            if userPoolInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userPoolInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / userPoolInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userPoolInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 <= poolInfo[arg1].field_768:
        if not userPoolInfo[arg1][address(arg2)].field_0:
            if userPoolInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userPoolInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / userPoolInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userPoolInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userPoolInfo[arg1][address(arg2)].field_0:
            if userPoolInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userPoolInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / userPoolInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userPoolInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0 / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_1024 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_768 > poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if not poolInfo[arg1].field_512 - poolInfo[arg1].field_768:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userPoolInfo[arg1][address(arg2)].field_0:
            if userPoolInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userPoolInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / userPoolInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userPoolInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
    if (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) / poolInfo[arg1].field_512 - poolInfo[arg1].field_768 != sub_1954483b:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userPoolInfo[arg1][address(arg2)].field_0:
            if userPoolInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userPoolInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / userPoolInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userPoolInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
    if (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) != block.number - poolInfo[arg1].field_1024 % 30000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userPoolInfo[arg1][address(arg2)].field_0:
            if userPoolInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userPoolInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / userPoolInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if userPoolInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
    if 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if not userPoolInfo[arg1][address(arg2)].field_0:
        if userPoolInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userPoolInfo[arg1][address(arg2)].field_256
    if (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / userPoolInfo[arg1][address(arg2)].field_0 != (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[arg1].field_1280:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if userPoolInfo[arg1][address(arg2)].field_256 > (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0] * userPoolInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userPoolInfo[arg1][address(arg2)].field_0) / 10^12) - userPoolInfo[arg1][address(arg2)].field_256)
}

function setPool(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 11
            if block.number <= poolInfo[idx].field_1024:
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
                poolInfo[idx].field_1024 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 30
            mem[_117 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > poolInfo[idx].field_512:
                _118 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _118 + 68] = mem[idx + _117 + 32]
                    idx = idx + 32
                    continue 
                mem[_118 + 68] = mem[_118 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _118 + -mem[64] + 100
            if not poolInfo[idx].field_512 - poolInfo[idx].field_768:
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 30
                mem[_127 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1024 > block.number:
                    _129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _129 + 68] = mem[idx + _127 + 32]
                        idx = idx + 32
                        continue 
                    mem[_129 + 68] = mem[_129 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _129 + -mem[64] + 100
                _137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_137] = 24
                mem[_137 + 32] = 'SafeMath: modulo by zero'
                _147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_147] = 26
                mem[_147 + 32] = 'SafeMath: division by zero'
                _150 = mem[64]
                mem[64] = mem[64] + 64
                mem[_150] = 26
                mem[_150 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _150 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b) / poolInfo[idx].field_512 - poolInfo[idx].field_768 != sub_1954483b:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_128] = 30
                mem[_128 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1024 > block.number:
                    _132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _132 + 68] = mem[idx + _128 + 32]
                        idx = idx + 32
                        continue 
                    mem[_132 + 68] = mem[_132 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _132 + -mem[64] + 100
                _140 = mem[64]
                mem[64] = mem[64] + 64
                mem[_140] = 24
                mem[_140 + 32] = 'SafeMath: modulo by zero'
                if not (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b):
                    _148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_148] = 26
                    mem[_148 + 32] = 'SafeMath: division by zero'
                    _153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_153] = 26
                    mem[_153 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _153 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b) != block.number - poolInfo[idx].field_1024 % 30000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_149] = 26
                    mem[_149 + 32] = 'SafeMath: division by zero'
                    if not (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6:
                        _154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_154] = 26
                        mem[_154 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                            if ((poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6
                            poolInfo[idx].field_1024 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _154 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _158 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_158] = 26
                        mem[_158 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]
                            if ((poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6
                            poolInfo[idx].field_1024 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _158 + 32]
                            idx = idx + 32
                            continue 
            revert with 0, 'SafeMath: division by zero'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function addPool(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 11
            if block.number <= poolInfo[idx].field_1024:
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
                poolInfo[idx].field_1024 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > poolInfo[idx].field_512:
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _136 + 68] = mem[idx + _135 + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 68] = mem[_136 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if not poolInfo[idx].field_512 - poolInfo[idx].field_768:
                _145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_145] = 30
                mem[_145 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1024 > block.number:
                    _147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _147 + 68] = mem[idx + _145 + 32]
                        idx = idx + 32
                        continue 
                    mem[_147 + 68] = mem[_147 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _147 + -mem[64] + 100
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = 24
                mem[_155 + 32] = 'SafeMath: modulo by zero'
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 26
                mem[_165 + 32] = 'SafeMath: division by zero'
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 26
                mem[_168 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _168 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b) / poolInfo[idx].field_512 - poolInfo[idx].field_768 != sub_1954483b:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _146 = mem[64]
                mem[64] = mem[64] + 64
                mem[_146] = 30
                mem[_146 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1024 > block.number:
                    _150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _150 + 68] = mem[idx + _146 + 32]
                        idx = idx + 32
                        continue 
                    mem[_150 + 68] = mem[_150 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _150 + -mem[64] + 100
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 24
                mem[_158 + 32] = 'SafeMath: modulo by zero'
                if not (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b):
                    _166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_166] = 26
                    mem[_166 + 32] = 'SafeMath: division by zero'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 26
                    mem[_171 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / (poolInfo[idx].field_512 * sub_1954483b) - (poolInfo[idx].field_768 * sub_1954483b) != block.number - poolInfo[idx].field_1024 % 30000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_167] = 26
                    mem[_167 + 32] = 'SafeMath: division by zero'
                    if not (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6:
                        _172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_172] = 26
                        mem[_172 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 0 / ext_call.return_data[0]
                            if ((poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6
                            poolInfo[idx].field_1024 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _172 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_176] = 26
                        mem[_176 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 10^12 * (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]
                            if ((poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (poolInfo[idx].field_512 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) - (poolInfo[idx].field_768 * sub_1954483b * block.number - poolInfo[idx].field_1024 % 30000) / 30 * 10^6
                            poolInfo[idx].field_1024 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                            idx = idx + 32
                            continue 
            revert with 0, 'SafeMath: division by zero'
    poolInfo.length++
    stor175B[stor11.length] = arg2
    stor175B[stor11.length] = arg1
    stor175B[stor11.length] = 0
    stor175B[stor11.length] = 0
    stor175B[stor11.length] = block.number
    stor175B[stor11.length] = 0
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if arg2 > userPoolInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_1024:
        if not userPoolInfo[arg1][msg.sender].field_0:
            if userPoolInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userPoolInfo[arg1][msg.sender].field_256:
                if not arg2:
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userPoolInfo[arg1][msg.sender].field_0 -= arg2
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[516 len 0] = 0
                    call poolInfo[arg1].field_0 with:
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
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                require ext_code.size(kingAddress)
                staticcall kingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(kingAddress)
                if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call kingAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
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
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    call kingAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[516 len 0] = 0
                        call poolInfo[arg1].field_0 with:
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
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                if not arg2:
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userPoolInfo[arg1][msg.sender].field_0 -= arg2
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[516 len 0] = 0
                    call poolInfo[arg1].field_0 with:
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
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                require ext_code.size(kingAddress)
                staticcall kingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(kingAddress)
                if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call kingAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
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
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    call kingAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[516 len 0] = 0
                        call poolInfo[arg1].field_0 with:
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
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_1024 = block.number
            if not userPoolInfo[arg1][msg.sender].field_0:
                if userPoolInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userPoolInfo[arg1][msg.sender].field_256:
                    require ext_code.size(kingAddress)
                    staticcall kingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(kingAddress)
                    if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                    else:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                    require ext_code.size(kingAddress)
                    staticcall kingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(kingAddress)
                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                    else:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not arg2:
                if not userPoolInfo[arg1][msg.sender].field_0:
                    userPoolInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userPoolInfo[arg1][msg.sender].field_0 -= arg2
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[516 len 0] = 0
                call poolInfo[arg1].field_0 with:
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
                if not userPoolInfo[arg1][msg.sender].field_0:
                    userPoolInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if poolInfo[arg1].field_512 <= poolInfo[arg1].field_768:
                if not userPoolInfo[arg1][msg.sender].field_0:
                    if userPoolInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userPoolInfo[arg1][msg.sender].field_256:
                        require ext_code.size(kingAddress)
                        staticcall kingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(kingAddress)
                        if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                        else:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[516 len 0] = 0
                        call poolInfo[arg1].field_0 with:
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
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[516 len 0] = 0
                            call poolInfo[arg1].field_0 with:
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
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(kingAddress)
                        staticcall kingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(kingAddress)
                        if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
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
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[516 len 0] = 0
                                call poolInfo[arg1].field_0 with:
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
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_768 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_512 - poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_1024 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                    if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1024 = block.number
                    if userPoolInfo[arg1][msg.sender].field_0:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 874 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            require ext_code.size(kingAddress)
                            staticcall kingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(kingAddress)
                            if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                            else:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 874 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if userPoolInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userPoolInfo[arg1][msg.sender].field_256:
                            require ext_code.size(kingAddress)
                            staticcall kingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(kingAddress)
                            if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                            else:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 874 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) / poolInfo[arg1].field_512 - poolInfo[arg1].field_768 != sub_1954483b:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if poolInfo[arg1].field_1024 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1024 = block.number
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userPoolInfo[arg1][msg.sender].field_256:
                                require ext_code.size(kingAddress)
                                staticcall kingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(kingAddress)
                                if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                else:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                require ext_code.size(kingAddress)
                                staticcall kingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(kingAddress)
                                if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                else:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 874 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) != block.number - poolInfo[arg1].field_1024 % 30000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                            if ((poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6
                            poolInfo[arg1].field_1024 = block.number
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userPoolInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(kingAddress)
                                    staticcall kingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(kingAddress)
                                    if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                    else:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(kingAddress)
                                    staticcall kingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(kingAddress)
                                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                    else:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 874 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]
                            if ((poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6
                            poolInfo[arg1].field_1024 = block.number
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -userPoolInfo[arg1][msg.sender].field_256:
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 874 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    require ext_code.size(kingAddress)
                                    staticcall kingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(kingAddress)
                                    if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 874 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    require ext_code.size(kingAddress)
                                    staticcall kingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(kingAddress)
                                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if arg2 > userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 -= arg2
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_1024:
        if not userPoolInfo[arg1][msg.sender].field_0:
            if not arg2:
                if not userPoolInfo[arg1][msg.sender].field_0:
                    userPoolInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not userPoolInfo[arg1][msg.sender].field_0:
                if userPoolInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userPoolInfo[arg1][msg.sender].field_256:
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    require ext_code.size(kingAddress)
                    staticcall kingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(kingAddress)
                    if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                    else:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                    require ext_code.size(kingAddress)
                    staticcall kingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(kingAddress)
                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                    else:
                        call kingAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if not arg2:
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_1024 = block.number
            if not userPoolInfo[arg1][msg.sender].field_0:
                if not arg2:
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        userPoolInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not userPoolInfo[arg1][msg.sender].field_0:
                    if userPoolInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userPoolInfo[arg1][msg.sender].field_256:
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(kingAddress)
                        staticcall kingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(kingAddress)
                        if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
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
                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(kingAddress)
                        staticcall kingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(kingAddress)
                        if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                        else:
                            call kingAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if poolInfo[arg1].field_512 <= poolInfo[arg1].field_768:
                if not userPoolInfo[arg1][msg.sender].field_0:
                    if not arg2:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            userPoolInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        if userPoolInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userPoolInfo[arg1][msg.sender].field_256:
                            require ext_code.size(kingAddress)
                            staticcall kingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(kingAddress)
                            if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                            else:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            require ext_code.size(kingAddress)
                            staticcall kingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(kingAddress)
                            if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg2:
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                call kingAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg2:
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_768 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_512 - poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_1024 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                    if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1024 = block.number
                    if not userPoolInfo[arg1][msg.sender].field_0:
                        if not arg2:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                userPoolInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 714 len 31]
                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userPoolInfo[arg1][msg.sender].field_256:
                                if not arg2:
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 851 len 22]
                                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 842 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                require ext_code.size(kingAddress)
                                staticcall kingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(kingAddress)
                                if -userPoolInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[864 len 4] = 0
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
                                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 842 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 851 len 22]
                                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 842 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                require ext_code.size(kingAddress)
                                staticcall kingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(kingAddress)
                                if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                else:
                                    call kingAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 851 len 22]
                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 842 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) / poolInfo[arg1].field_512 - poolInfo[arg1].field_768 != sub_1954483b:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if poolInfo[arg1].field_1024 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1024 = block.number
                        if not userPoolInfo[arg1][msg.sender].field_0:
                            if not arg2:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 714 len 31]
                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -userPoolInfo[arg1][msg.sender].field_256:
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 851 len 22]
                                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 842 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    require ext_code.size(kingAddress)
                                    staticcall kingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(kingAddress)
                                    if -userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[864 len 4] = 0
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
                                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 842 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 851 len 22]
                                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 842 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 851 len 22]
                                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 842 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    require ext_code.size(kingAddress)
                                    staticcall kingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(kingAddress)
                                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[864 len 4] = 0
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
                                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 842 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        call kingAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 851 len 22]
                                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 842 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / (poolInfo[arg1].field_512 * sub_1954483b) - (poolInfo[arg1].field_768 * sub_1954483b) != block.number - poolInfo[arg1].field_1024 % 30000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 0 / ext_call.return_data[0]
                            if ((poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6
                            poolInfo[arg1].field_1024 = block.number
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                if not arg2:
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -userPoolInfo[arg1][msg.sender].field_256:
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 851 len 22]
                                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 842 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        require ext_code.size(kingAddress)
                                        staticcall kingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(kingAddress)
                                        if -userPoolInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not arg2:
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                            else:
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[864 len 4] = 0
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
                                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 842 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not arg2:
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 851 len 22]
                                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 842 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                        require ext_code.size(kingAddress)
                                        staticcall kingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(kingAddress)
                                        if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                        else:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 851 len 22]
                                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 842 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 10^12 * (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6 / ext_call.return_data[0]
                            if ((poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (poolInfo[arg1].field_512 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) - (poolInfo[arg1].field_768 * sub_1954483b * block.number - poolInfo[arg1].field_1024 % 30000) / 30 * 10^6
                            poolInfo[arg1].field_1024 = block.number
                            if not userPoolInfo[arg1][msg.sender].field_0:
                                if not arg2:
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                    if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userPoolInfo[arg1][msg.sender].field_0 += arg2
                                    if not userPoolInfo[arg1][msg.sender].field_0:
                                        userPoolInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if not userPoolInfo[arg1][msg.sender].field_0:
                                    if userPoolInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -userPoolInfo[arg1][msg.sender].field_256:
                                        if not arg2:
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[864 len 4] = 0
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
                                            if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userPoolInfo[arg1][msg.sender].field_0 += arg2
                                            if not userPoolInfo[arg1][msg.sender].field_0:
                                                userPoolInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 842 len 31]
                                                userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        require ext_code.size(kingAddress)
                                        staticcall kingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(kingAddress)
                                        if -userPoolInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not arg2:
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                            else:
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[864 len 4] = 0
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
                                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 842 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                        else:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userPoolInfo[arg1][msg.sender].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not arg2:
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 851 len 22]
                                                if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userPoolInfo[arg1][msg.sender].field_0 += arg2
                                                if not userPoolInfo[arg1][msg.sender].field_0:
                                                    userPoolInfo[arg1][msg.sender].field_256 = 0
                                                else:
                                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 842 len 31]
                                                    userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if userPoolInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256:
                                        require ext_code.size(kingAddress)
                                        staticcall kingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(kingAddress)
                                        if (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12) - userPoolInfo[arg1][msg.sender].field_256
                                        else:
                                            call kingAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if not arg2:
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
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
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 851 len 22]
                                        if arg2 + userPoolInfo[arg1][msg.sender].field_0 < userPoolInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userPoolInfo[arg1][msg.sender].field_0 += arg2
                                        if not userPoolInfo[arg1][msg.sender].field_0:
                                            userPoolInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / userPoolInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 842 len 31]
                                            userPoolInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userPoolInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
