contract main {




// =====================  Runtime code  =====================


#
#  - add(uint256 arg1, address arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address bambooAddress;
address devaddr;
uint256 sub_ce7410bd;
uint32 stor4;
address migratorAddress;
uint256 stor4;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of struct periodInfo;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bamboo() payable {
    return bambooAddress
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

function periodInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < periodInfo.length
    return periodInfo[arg1].field_0, periodInfo[arg1].field_256
}

function sub_ce7410bd(?) payable {
    return sub_ce7410bd
}

function periodLength() payable {
    return periodInfo.length
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

function setPeriod(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < periodInfo.length
    periodInfo[arg1].field_0 = arg2
    periodInfo[arg1].field_256 = arg3
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

function addPeriod(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not periodInfo.length:
        if arg1 <= startBlock:
            revert with 0, 'addPeriod: endBlock error2'
    else:
        require periodInfo.length - 1 < periodInfo.length
        if arg1 <= periodInfo[periodInfo.length - 1].field_0:
            revert with 0, 'addPeriod: endBlock error1'
    periodInfo.length++
    periodInfo[periodInfo.length].field_0 = arg1
    stor6E15[stor9.length] = arg2
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if not ext_code.size(address(poolInfo[arg1].field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, userInfo[arg1][msg.sender].field_32)
    mem[324 len 0] = 0
    call address(poolInfo[arg1].field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, userInfo[arg1][msg.sender].field_0), mem[324 len 4]
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

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(migratorAddress):
        revert with 0, 'migrate: no migrator'
    require arg1 < poolInfo.length
    require ext_code.size(address(poolInfo[arg1].field_0))
    staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0xdd62ed3e with:
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
    if not ext_code.size(address(poolInfo[arg1].field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call address(poolInfo[arg1].field_0) with:
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
        args address(poolInfo[arg1].field_0)
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
    address(poolInfo[arg1].field_0) = address(ext_call.return_data[0])
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if not periodInfo.length:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    require periodInfo.length - 1 < periodInfo.length
    if arg1 >= periodInfo[periodInfo.length - 1].field_0:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    require periodInfo.length - 1 < periodInfo.length
    mem[0] = 9
    idx = 0
    s = 2 * periodInfo.length - 1
    while idx < periodInfo.length:
        mem[0] = 9
        if arg1 >= periodInfo[idx].field_0:
            idx = idx + 1
            s = (2 * idx) + sha3(9)
            continue 
        if arg1 > startBlock:
            _115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_115] = 20
            mem[_115 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
            if arg2 < periodInfo[idx].field_0:
                if arg1 <= arg2:
                    if not arg2 - arg1:
                        if arg2 > periodInfo[idx].field_0:
                            idx = idx + 1
                            s = (2 * idx) + sha3(9)
                            continue 
                        else:
                            return 0
                    if (arg2 * periodInfo[idx].field_256) - (arg1 * periodInfo[idx].field_256) / arg2 - arg1 != periodInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (arg2 * periodInfo[idx].field_256) - (arg1 * periodInfo[idx].field_256) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 > periodInfo[idx].field_0:
                        idx = idx + 1
                        s = (2 * idx) + sha3(9)
                        continue 
                    return ((arg2 * periodInfo[idx].field_256) - (arg1 * periodInfo[idx].field_256))
                _123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _123 + 68] = mem[idx + _115 + 32]
                    idx = idx + 32
                    continue 
                mem[_123 + 68] = mem[_123 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _123 + -mem[64] + 100
            if arg1 <= periodInfo[idx].field_0:
                if not periodInfo[idx].field_0 - arg1:
                    if arg2 > periodInfo[idx].field_0:
                        idx = idx + 1
                        s = (2 * idx) + sha3(9)
                        continue 
                    else:
                        return 0
                if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (arg1 * periodInfo[idx].field_256) / periodInfo[idx].field_0 - arg1 != periodInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (arg1 * periodInfo[idx].field_256) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 > periodInfo[idx].field_0:
                    idx = idx + 1
                    s = (2 * idx) + sha3(9)
                    continue 
                return ((periodInfo[idx].field_0 * periodInfo[idx].field_256) - (arg1 * periodInfo[idx].field_256))
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _126 + 68] = mem[idx + _115 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 68] = mem[_126 + 80 len 20]
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        _117 = mem[64]
        mem[64] = mem[64] + 64
        mem[_117] = 20
        mem[_117 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
        if arg2 < periodInfo[idx].field_0:
            if startBlock <= arg2:
                if not arg2 - startBlock:
                    if arg2 > periodInfo[idx].field_0:
                        idx = idx + 1
                        s = (2 * idx) + sha3(9)
                        continue 
                    else:
                        return 0
                if (arg2 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) / arg2 - startBlock != periodInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (arg2 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 > periodInfo[idx].field_0:
                    idx = idx + 1
                    s = (2 * idx) + sha3(9)
                    continue 
                return ((arg2 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256))
            _129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _129 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_129 + 68] = mem[_129 + 80 len 20]
            revert with memory
              from mem[64]
               len _129 + -mem[64] + 100
        if startBlock <= periodInfo[idx].field_0:
            if not periodInfo[idx].field_0 - startBlock:
                if arg2 > periodInfo[idx].field_0:
                    idx = idx + 1
                    s = (2 * idx) + sha3(9)
                    continue 
                else:
                    return 0
            if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) / periodInfo[idx].field_0 - startBlock != periodInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 > periodInfo[idx].field_0:
                idx = idx + 1
                s = (2 * idx) + sha3(9)
                continue 
            return ((periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256))
        _133 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 20
        idx = 0
        while idx < 20:
            mem[idx + _133 + 68] = mem[idx + _117 + 32]
            idx = idx + 32
            continue 
        mem[_133 + 68] = mem[_133 + 80 len 20]
        revert with memory
          from mem[64]
           len _133 + -mem[64] + 100
    if arg2 <= stor[s]:
        return 0
    if stor[s] > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 - stor[s] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - stor[s])
}

function updatePool(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        mem[100] = this.address
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not periodInfo.length:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(bambooAddress)
                    call bambooAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(bambooAddress)
                    call bambooAddress.0x40c10f19 with:
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
                    if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
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
                        if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                require periodInfo.length - 1 < periodInfo.length
                if poolInfo[arg1].field_512 >= periodInfo[periodInfo.length - 1].field_0:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
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
                        if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
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
                            if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    require periodInfo.length - 1 < periodInfo.length
                    mem[0] = 9
                    idx = 0
                    s = 2 * periodInfo.length - 1
                    while idx < periodInfo.length:
                        mem[0] = 9
                        if poolInfo[arg1].field_512 >= periodInfo[idx].field_0:
                            idx = idx + 1
                            s = (2 * idx) + sha3(9)
                            continue 
                        if poolInfo[arg1].field_512 > startBlock:
                            _1416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1416] = 20
                            mem[_1416 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
                            if block.number < periodInfo[idx].field_0:
                                if poolInfo[arg1].field_512 > block.number:
                                    _1424 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _1424 + 68] = mem[idx + _1416 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1424 + 68] = mem[_1424 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _1424 + -mem[64] + 100
                                if not block.number - poolInfo[arg1].field_512:
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    _1541 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1541] = 26
                                    mem[_1541 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1541 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _1653 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1653] = 26
                                        mem[_1653 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1952 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1952] = 26
                                            mem[_1952 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1952 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1960 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1960] = 26
                                            mem[_1960 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1960 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) / block.number - poolInfo[arg1].field_512 != periodInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    if not (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256):
                                        _1547 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1547] = 26
                                        mem[_1547 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1547 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _1687 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1687] = 26
                                            mem[_1687 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1959 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1959] = 26
                                                mem[_1959 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1959 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1972 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1972] = 26
                                                mem[_1972 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1972 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) / (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd):
                                            _1557 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1557] = 26
                                            mem[_1557 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1557 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1722 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1722] = 26
                                                mem[_1722 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _1971 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1971] = 26
                                                    mem[_1971 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1971 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1988 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1988] = 26
                                                    mem[_1988 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1988 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1574 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1574] = 26
                                            mem[_1574 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1574 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1753 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1753] = 26
                                                mem[_1753 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                                    _1987 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1987] = 26
                                                    mem[_1987 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1987 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2014 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2014] = 26
                                                    mem[_2014 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2014 + 32]
                                                        idx = idx + 32
                                                        continue 
                            else:
                                if poolInfo[arg1].field_512 > periodInfo[idx].field_0:
                                    _1427 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _1427 + 68] = mem[idx + _1416 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1427 + 68] = mem[_1427 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _1427 + -mem[64] + 100
                                if not periodInfo[idx].field_0 - poolInfo[arg1].field_512:
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    _1548 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1548] = 26
                                    mem[_1548 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1548 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _1696 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1696] = 26
                                        mem[_1696 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1963 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1963] = 26
                                            mem[_1963 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1963 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1979 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1979] = 26
                                            mem[_1979 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1979 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) / periodInfo[idx].field_0 - poolInfo[arg1].field_512 != periodInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    if not (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256):
                                        _1563 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1563] = 26
                                        mem[_1563 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1563 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _1730 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1730] = 26
                                            mem[_1730 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1978 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1978] = 26
                                                mem[_1978 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1978 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1999 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1999] = 26
                                                mem[_1999 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1999 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) / (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd):
                                            _1579 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1579] = 26
                                            mem[_1579 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1579 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1759 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1759] = 26
                                                mem[_1759 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _1998 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1998] = 26
                                                    mem[_1998 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1998 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2026 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2026] = 26
                                                    mem[_2026 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2026 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1601 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1601] = 26
                                            mem[_1601 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1601 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1782 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1782] = 26
                                                mem[_1782 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                                    _2025 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2025] = 26
                                                    mem[_2025 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2025 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2064 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2064] = 26
                                                    mem[_2064 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2064 + 32]
                                                        idx = idx + 32
                                                        continue 
                        else:
                            _1418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1418] = 20
                            mem[_1418 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
                            if block.number < periodInfo[idx].field_0:
                                if startBlock > block.number:
                                    _1430 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _1430 + 68] = mem[idx + _1418 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1430 + 68] = mem[_1430 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _1430 + -mem[64] + 100
                                if not block.number - startBlock:
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    _1549 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1549] = 26
                                    mem[_1549 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1549 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _1704 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1704] = 26
                                        mem[_1704 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1966 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1966] = 26
                                            mem[_1966 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1966 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1983 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1983] = 26
                                            mem[_1983 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1983 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) / block.number - startBlock != periodInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    if not (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256):
                                        _1566 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1566] = 26
                                        mem[_1566 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1566 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _1738 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1738] = 26
                                            mem[_1738 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _1982 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1982] = 26
                                                mem[_1982 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1982 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2006 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2006] = 26
                                                mem[_2006 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2006 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) / (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd):
                                            _1583 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1583] = 26
                                            mem[_1583 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1583 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1765 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1765] = 26
                                                mem[_1765 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _2005 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2005] = 26
                                                    mem[_2005 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2005 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2035 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2035] = 26
                                                    mem[_2035 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2035 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1606 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1606] = 26
                                            mem[_1606 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1606 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1786 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1786] = 26
                                                mem[_1786 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                                    _2034 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2034] = 26
                                                    mem[_2034 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2034 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2075 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2075] = 26
                                                    mem[_2075 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2075 + 32]
                                                        idx = idx + 32
                                                        continue 
                            else:
                                if startBlock > periodInfo[idx].field_0:
                                    _1434 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _1434 + 68] = mem[idx + _1418 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1434 + 68] = mem[_1434 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _1434 + -mem[64] + 100
                                if not periodInfo[idx].field_0 - startBlock:
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    _1567 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1567] = 26
                                    mem[_1567 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1567 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _1747 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1747] = 26
                                        mem[_1747 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _1986 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1986] = 26
                                            mem[_1986 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1986 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2013 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2013] = 26
                                            mem[_2013 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[arg1].field_512 = block.number
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2013 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) / periodInfo[idx].field_0 - startBlock != periodInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[idx].field_0:
                                        idx = idx + 1
                                        s = (2 * idx) + sha3(9)
                                        continue 
                                    if not (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256):
                                        _1589 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1589] = 26
                                        mem[_1589 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1589 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _1773 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1773] = 26
                                            mem[_1773 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _2012 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2012] = 26
                                                mem[_2012 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2012 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2046 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2046] = 26
                                                mem[_2046 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[arg1].field_512 = block.number
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2046 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) / (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd):
                                            _1611 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1611] = 26
                                            mem[_1611 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1611 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1792 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1792] = 26
                                                mem[_1792 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _2045 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2045] = 26
                                                    mem[_2045 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2045 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2087 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2087] = 26
                                                    mem[_2087 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2087 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1639 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1639] = 26
                                            mem[_1639 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1639 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _1805 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1805] = 26
                                                mem[_1805 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                                    _2086 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2086] = 26
                                                    mem[_2086 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2086 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2138 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2138] = 26
                                                    mem[_2138 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[arg1].field_768 += 10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[arg1].field_512 = block.number
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _2138 + 32]
                                                        idx = idx + 32
                                                        continue 
                        revert with 0, 'SafeMath: division by zero'
                    if block.number <= stor[s]:
                        _1437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1437] = 26
                        mem[_1437 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        _1473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1473] = 26
                        mem[_1473 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        _1402 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1402] = 30
                        mem[_1402 + 32] = 'SafeMath: subtraction overflow'
                        if stor[s] > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number - stor[s] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - stor[s]:
                            _1485 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1485] = 26
                            mem[_1485 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            _1514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1514] = 26
                            mem[_1514 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_ce7410bd) - (stor[s] * sub_ce7410bd) / block.number - stor[s] != sub_ce7410bd:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * sub_ce7410bd) - (stor[s] * sub_ce7410bd):
                                _1486 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1486] = 26
                                mem[_1486 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                _1519 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1519] = 26
                                mem[_1519 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (stor[s] * sub_ce7410bd) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1489 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1489] = 26
                                mem[_1489 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                _1525 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1525] = 26
                                mem[_1525 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
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
        require ext_code.size(address(poolInfo[idx].field_0))
        staticcall address(poolInfo[idx].field_0).0x70a08231 with:
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
        if not periodInfo.length:
            _1336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1336] = 30
            mem[_1336 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _1338 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1338 + 68] = mem[idx + _1336 + 32]
                    idx = idx + 32
                    continue 
                mem[_1338 + 68] = mem[_1338 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1338 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _1382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1382] = 26
                mem[_1382 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1382 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _1461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1461] = 26
                    mem[_1461 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(bambooAddress)
                    call bambooAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(bambooAddress)
                    call bambooAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1593] = 26
                        mem[_1593 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1593 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1601] = 26
                        mem[_1601 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1601 + 32]
                            idx = idx + 32
                            continue 
            else:
                if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                    _1387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1387] = 26
                    mem[_1387 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1387 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _1475 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1475] = 26
                        mem[_1475 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1600 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1600] = 26
                            mem[_1600 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1600 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1610 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1610] = 26
                            mem[_1610 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1610 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1396] = 26
                    mem[_1396 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1396 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _1493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1493] = 26
                        mem[_1493 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                            _1609 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1609] = 26
                            mem[_1609 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1609 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1626 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1626] = 26
                            mem[_1626 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1626 + 32]
                                idx = idx + 32
                                continue 
        else:
            require periodInfo.length - 1 < periodInfo.length
            mem[0] = 9
            if poolInfo[idx].field_512 >= periodInfo[periodInfo.length - 1].field_0:
                _1342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1342] = 30
                mem[_1342 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _1344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1344 + 68] = mem[idx + _1342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1344 + 68] = mem[_1344 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1344 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _1395 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1395] = 26
                    mem[_1395 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1395 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _1490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1490] = 26
                        mem[_1490 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1608 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1608] = 26
                            mem[_1608 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1608 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1625 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1625] = 26
                            mem[_1625 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1625 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                        _1406 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1406] = 26
                        mem[_1406 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1406 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _1502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1502] = 26
                            mem[_1502 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1624 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1624] = 26
                                mem[_1624 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1624 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1653 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1653] = 26
                                mem[_1653 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1653 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1420 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1420] = 26
                        mem[_1420 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1420 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _1507 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1507] = 26
                            mem[_1507 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                _1652 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1652] = 26
                                mem[_1652 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1652 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1689 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1689] = 26
                                mem[_1689 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1689 + 32]
                                    idx = idx + 32
                                    continue 
            else:
                require periodInfo.length - 1 < periodInfo.length
                mem[0] = 9
                s = 0
                t = (2 * periodInfo.length - 1) + sha3(mem[0])
                while s < periodInfo.length:
                    mem[0] = 9
                    if poolInfo[idx].field_512 >= periodInfo[s].field_0:
                        s = s + 1
                        t = (2 * s) + sha3(9)
                        continue 
                    if poolInfo[idx].field_512 > startBlock:
                        _2746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2746] = 20
                        mem[_2746 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
                        if block.number < periodInfo[s].field_0:
                            if poolInfo[idx].field_512 > block.number:
                                _2754 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 20
                                idx = 0
                                while idx < 20:
                                    mem[idx + _2754 + 68] = mem[idx + _2746 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2754 + 68] = mem[_2754 + 80 len 20]
                                revert with memory
                                  from mem[64]
                                   len _2754 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                _2871 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2871] = 26
                                mem[_2871 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2871 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _2983 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2983] = 26
                                    mem[_2983 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _3282 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3282] = 26
                                        mem[_3282 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3282 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3290 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3290] = 26
                                        mem[_3290 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3290 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) / block.number - poolInfo[idx].field_512 != periodInfo[s].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                if not (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256):
                                    _2877 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2877] = 26
                                    mem[_2877 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2877 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3017 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3017] = 26
                                        mem[_3017 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3289 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3289] = 26
                                            mem[_3289 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3289 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3302 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3302] = 26
                                            mem[_3302 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3302 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) / (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) != sub_ce7410bd:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd):
                                        _2887 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2887] = 26
                                        mem[_2887 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2887 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3052 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3052] = 26
                                            mem[_3052 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3301 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3301] = 26
                                                mem[_3301 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3301 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3318 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3318] = 26
                                                mem[_3318 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3318 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2904 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2904] = 26
                                        mem[_2904 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2904 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3083 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3083] = 26
                                            mem[_3083 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3317 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3317] = 26
                                                mem[_3317 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3317 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3344 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3344] = 26
                                                mem[_3344 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3344 + 32]
                                                    idx = idx + 32
                                                    continue 
                        else:
                            if poolInfo[idx].field_512 > periodInfo[s].field_0:
                                _2757 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 20
                                idx = 0
                                while idx < 20:
                                    mem[idx + _2757 + 68] = mem[idx + _2746 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2757 + 68] = mem[_2757 + 80 len 20]
                                revert with memory
                                  from mem[64]
                                   len _2757 + -mem[64] + 100
                            if not periodInfo[s].field_0 - poolInfo[idx].field_512:
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                _2878 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2878] = 26
                                mem[_2878 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2878 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _3026 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3026] = 26
                                    mem[_3026 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _3293 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3293] = 26
                                        mem[_3293 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3293 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3309 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3309] = 26
                                        mem[_3309 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3309 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) / periodInfo[s].field_0 - poolInfo[idx].field_512 != periodInfo[s].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                if not (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256):
                                    _2893 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2893] = 26
                                    mem[_2893 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2893 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3060 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3060] = 26
                                        mem[_3060 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3308 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3308] = 26
                                            mem[_3308 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3308 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3329 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3329] = 26
                                            mem[_3329 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3329 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) / (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) != sub_ce7410bd:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd):
                                        _2909 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2909] = 26
                                        mem[_2909 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2909 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3089 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3089] = 26
                                            mem[_3089 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3328 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3328] = 26
                                                mem[_3328 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3328 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3356 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3356] = 26
                                                mem[_3356 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3356 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2931 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2931] = 26
                                        mem[_2931 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2931 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3112 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3112] = 26
                                            mem[_3112 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3355 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3355] = 26
                                                mem[_3355 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3355 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3394 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3394] = 26
                                                mem[_3394 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3394 + 32]
                                                    idx = idx + 32
                                                    continue 
                    else:
                        _2748 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2748] = 20
                        mem[_2748 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
                        if block.number < periodInfo[s].field_0:
                            if startBlock > block.number:
                                _2760 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 20
                                idx = 0
                                while idx < 20:
                                    mem[idx + _2760 + 68] = mem[idx + _2748 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2760 + 68] = mem[_2760 + 80 len 20]
                                revert with memory
                                  from mem[64]
                                   len _2760 + -mem[64] + 100
                            if not block.number - startBlock:
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                _2879 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2879] = 26
                                mem[_2879 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2879 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _3034 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3034] = 26
                                    mem[_3034 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _3296 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3296] = 26
                                        mem[_3296 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3296 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3313 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3313] = 26
                                        mem[_3313 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3313 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) / block.number - startBlock != periodInfo[s].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                if not (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256):
                                    _2896 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2896] = 26
                                    mem[_2896 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2896 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3068 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3068] = 26
                                        mem[_3068 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3312 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3312] = 26
                                            mem[_3312 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3312 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3336 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3336] = 26
                                            mem[_3336 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3336 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) / (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) != sub_ce7410bd:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd):
                                        _2913 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2913] = 26
                                        mem[_2913 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2913 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3095 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3095] = 26
                                            mem[_3095 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3335 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3335] = 26
                                                mem[_3335 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3335 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3365 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3365] = 26
                                                mem[_3365 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3365 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2936 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2936] = 26
                                        mem[_2936 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2936 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3116 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3116] = 26
                                            mem[_3116 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3364 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3364] = 26
                                                mem[_3364 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3364 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3405 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3405] = 26
                                                mem[_3405 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3405 + 32]
                                                    idx = idx + 32
                                                    continue 
                        else:
                            if startBlock > periodInfo[s].field_0:
                                _2764 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 20
                                idx = 0
                                while idx < 20:
                                    mem[idx + _2764 + 68] = mem[idx + _2748 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2764 + 68] = mem[_2764 + 80 len 20]
                                revert with memory
                                  from mem[64]
                                   len _2764 + -mem[64] + 100
                            if not periodInfo[s].field_0 - startBlock:
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                _2897 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2897] = 26
                                mem[_2897 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2897 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _3077 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3077] = 26
                                    mem[_3077 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _3316 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3316] = 26
                                        mem[_3316 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3316 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3343 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3343] = 26
                                        mem[_3343 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3343 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) / periodInfo[s].field_0 - startBlock != periodInfo[s].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number > periodInfo[s].field_0:
                                    s = s + 1
                                    t = (2 * s) + sha3(9)
                                    continue 
                                if not (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256):
                                    _2919 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2919] = 26
                                    mem[_2919 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2919 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3103 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3103] = 26
                                        mem[_3103 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3342 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3342] = 26
                                            mem[_3342 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3342 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3376 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3376] = 26
                                            mem[_3376 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3376 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) / (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) != sub_ce7410bd:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd):
                                        _2941 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2941] = 26
                                        mem[_2941 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2941 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3122 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3122] = 26
                                            mem[_3122 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3375 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3375] = 26
                                                mem[_3375 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3375 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3417 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3417] = 26
                                                mem[_3417 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3417 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2969 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2969] = 26
                                        mem[_2969 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2969 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3135 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3135] = 26
                                            mem[_3135 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3416 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3416] = 26
                                                mem[_3416 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3416 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3468 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3468] = 26
                                                mem[_3468 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3468 + 32]
                                                    idx = idx + 32
                                                    continue 
                    revert with 0, 'SafeMath: division by zero'
                if block.number <= stor[t]:
                    _2767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2767] = 26
                    mem[_2767 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2767 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _2803 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2803] = 26
                        mem[_2803 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _2868 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2868] = 26
                            mem[_2868 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2868 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2872 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2872] = 26
                            mem[_2872 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2872 + 32]
                                idx = idx + 32
                                continue 
                else:
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor[t] > block.number:
                        _2743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2743 + 68] = mem[idx + _2732 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2743 + 68] = mem[_2743 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2743 + -mem[64] + 100
                    if block.number - stor[t] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not block.number - stor[t]:
                        _2815 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2815] = 26
                        mem[_2815 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2815 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _2844 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2844] = 26
                            mem[_2844 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _3082 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3082] = 26
                                mem[_3082 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3082 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3110 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3110] = 26
                                mem[_3110 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3110 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_ce7410bd) - (stor[t] * sub_ce7410bd) / block.number - stor[t] != sub_ce7410bd:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * sub_ce7410bd) - (stor[t] * sub_ce7410bd):
                            _2816 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2816] = 26
                            mem[_2816 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2816 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                _2849 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2849] = 26
                                mem[_2849 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _3109 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3109] = 26
                                    mem[_3109 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3109 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3127 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3127] = 26
                                    mem[_3127 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3127 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (stor[t] * sub_ce7410bd) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2819 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2819] = 26
                            mem[_2819 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2819 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                _2855 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2855] = 26
                                mem[_2855 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    _3126 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3126] = 26
                                    mem[_3126 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3126 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3139] = 26
                                    mem[_3139 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3139 + 32]
                                        idx = idx + 32
                                        continue 
        revert with 0, 'SafeMath: division by zero'
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
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
            if not periodInfo.length:
                _1379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1379] = 30
                mem[_1379 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _1382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1382 + 68] = mem[idx + _1379 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1382 + 68] = mem[_1382 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1382 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _1426 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1426] = 26
                    mem[_1426 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1426 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _1505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1505] = 26
                        mem[_1505 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(bambooAddress)
                        call bambooAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1637 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1637] = 26
                            mem[_1637 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1637 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1645 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1645] = 26
                            mem[_1645 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1645 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                        _1431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1431] = 26
                        mem[_1431 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1431 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _1519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1519] = 26
                            mem[_1519 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1644 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1644] = 26
                                mem[_1644 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1644 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1654 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1654] = 26
                                mem[_1654 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1654 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1440] = 26
                        mem[_1440 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1440 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _1537 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1537] = 26
                            mem[_1537 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                _1653 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1653] = 26
                                mem[_1653 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1653 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1670 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1670] = 26
                                mem[_1670 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1670 + 32]
                                    idx = idx + 32
                                    continue 
            else:
                require periodInfo.length - 1 < periodInfo.length
                mem[0] = 9
                if poolInfo[idx].field_512 >= periodInfo[periodInfo.length - 1].field_0:
                    _1386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1386] = 30
                    mem[_1386 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        _1388 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1388 + 68] = mem[idx + _1386 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1388 + 68] = mem[_1388 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1388 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_512:
                        _1439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1439] = 26
                        mem[_1439 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1439 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _1534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1534] = 26
                            mem[_1534 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1652 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1652] = 26
                                mem[_1652 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1652 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1669 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1669] = 26
                                mem[_1669 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1669 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                            _1450 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1450] = 26
                            mem[_1450 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1450 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                _1546 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1546] = 26
                                mem[_1546 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1668 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1668] = 26
                                    mem[_1668 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1668 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1697 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1697] = 26
                                    mem[_1697 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1697 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1464 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1464] = 26
                            mem[_1464 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1464 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                _1551 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1551] = 26
                                mem[_1551 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1696 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1696] = 26
                                    mem[_1696 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1696 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1733 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1733] = 26
                                    mem[_1733 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1733 + 32]
                                        idx = idx + 32
                                        continue 
                else:
                    require periodInfo.length - 1 < periodInfo.length
                    mem[0] = 9
                    s = 0
                    t = (2 * periodInfo.length - 1) + sha3(mem[0])
                    while s < periodInfo.length:
                        mem[0] = 9
                        if poolInfo[idx].field_512 >= periodInfo[s].field_0:
                            s = s + 1
                            t = (2 * s) + sha3(9)
                            continue 
                        if poolInfo[idx].field_512 > startBlock:
                            _2794 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2794] = 20
                            mem[_2794 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
                            if block.number < periodInfo[s].field_0:
                                if poolInfo[idx].field_512 > block.number:
                                    _2802 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _2802 + 68] = mem[idx + _2794 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2802 + 68] = mem[_2802 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _2802 + -mem[64] + 100
                                if not block.number - poolInfo[idx].field_512:
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    _2919 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2919] = 26
                                    mem[_2919 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2919 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3031 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3031] = 26
                                        mem[_3031 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3330 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3330] = 26
                                            mem[_3330 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3330 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3338 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3338] = 26
                                            mem[_3338 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3338 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) / block.number - poolInfo[idx].field_512 != periodInfo[s].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    if not (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256):
                                        _2925 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2925] = 26
                                        mem[_2925 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2925 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3065 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3065] = 26
                                            mem[_3065 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3337 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3337] = 26
                                                mem[_3337 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3337 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3350 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3350] = 26
                                                mem[_3350 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3350 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) / (block.number * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd):
                                            _2935 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2935] = 26
                                            mem[_2935 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2935 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3100 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3100] = 26
                                                mem[_3100 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _3349 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3349] = 26
                                                    mem[_3349 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3349 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3366 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3366] = 26
                                                    mem[_3366 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3366 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2952 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2952] = 26
                                            mem[_2952 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2952 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3131 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3131] = 26
                                                mem[_3131 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                    _3365 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3365] = 26
                                                    mem[_3365 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3365 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3392 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3392] = 26
                                                    mem[_3392 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3392 + 32]
                                                        idx = idx + 32
                                                        continue 
                            else:
                                if poolInfo[idx].field_512 > periodInfo[s].field_0:
                                    _2805 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _2805 + 68] = mem[idx + _2794 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2805 + 68] = mem[_2805 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _2805 + -mem[64] + 100
                                if not periodInfo[s].field_0 - poolInfo[idx].field_512:
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    _2926 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2926] = 26
                                    mem[_2926 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2926 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3074 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3074] = 26
                                        mem[_3074 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3341 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3341] = 26
                                            mem[_3341 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3341 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3357 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3357] = 26
                                            mem[_3357 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3357 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) / periodInfo[s].field_0 - poolInfo[idx].field_512 != periodInfo[s].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    if not (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256):
                                        _2941 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2941] = 26
                                        mem[_2941 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2941 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3108 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3108] = 26
                                            mem[_3108 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3356 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3356] = 26
                                                mem[_3356 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3356 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3377 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3377] = 26
                                                mem[_3377 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3377 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) / (periodInfo[s].field_0 * periodInfo[s].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd):
                                            _2957 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2957] = 26
                                            mem[_2957 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2957 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3137 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3137] = 26
                                                mem[_3137 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _3376 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3376] = 26
                                                    mem[_3376 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3376 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3404 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3404] = 26
                                                    mem[_3404 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3404 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2979 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2979] = 26
                                            mem[_2979 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2979 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3160 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3160] = 26
                                                mem[_3160 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                    _3403 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3403] = 26
                                                    mem[_3403 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3403 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3442 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3442] = 26
                                                    mem[_3442 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3442 + 32]
                                                        idx = idx + 32
                                                        continue 
                        else:
                            _2796 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2796] = 20
                            mem[_2796 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
                            if block.number < periodInfo[s].field_0:
                                if startBlock > block.number:
                                    _2808 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _2808 + 68] = mem[idx + _2796 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2808 + 68] = mem[_2808 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _2808 + -mem[64] + 100
                                if not block.number - startBlock:
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    _2927 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2927] = 26
                                    mem[_2927 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2927 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3082 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3082] = 26
                                        mem[_3082 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3344 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3344] = 26
                                            mem[_3344 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3344 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3361 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3361] = 26
                                            mem[_3361 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3361 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) / block.number - startBlock != periodInfo[s].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    if not (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256):
                                        _2944 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2944] = 26
                                        mem[_2944 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2944 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3116 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3116] = 26
                                            mem[_3116 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3360 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3360] = 26
                                                mem[_3360 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3360 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3384 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3384] = 26
                                                mem[_3384 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3384 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) / (block.number * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd):
                                            _2961 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2961] = 26
                                            mem[_2961 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2961 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3143 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3143] = 26
                                                mem[_3143 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _3383 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3383] = 26
                                                    mem[_3383 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3383 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3413 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3413] = 26
                                                    mem[_3413 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3413 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2984 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2984] = 26
                                            mem[_2984 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2984 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3164 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3164] = 26
                                                mem[_3164 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                    _3412 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3412] = 26
                                                    mem[_3412 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3412 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3453 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3453] = 26
                                                    mem[_3453 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * (block.number * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3453 + 32]
                                                        idx = idx + 32
                                                        continue 
                            else:
                                if startBlock > periodInfo[s].field_0:
                                    _2812 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 20
                                    idx = 0
                                    while idx < 20:
                                        mem[idx + _2812 + 68] = mem[idx + _2796 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2812 + 68] = mem[_2812 + 80 len 20]
                                    revert with memory
                                      from mem[64]
                                       len _2812 + -mem[64] + 100
                                if not periodInfo[s].field_0 - startBlock:
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    _2945 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2945] = 26
                                    mem[_2945 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2945 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _3125 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3125] = 26
                                        mem[_3125 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _3364 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3364] = 26
                                            mem[_3364 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3364 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3391 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3391] = 26
                                            mem[_3391 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3391 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) / periodInfo[s].field_0 - startBlock != periodInfo[s].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number > periodInfo[s].field_0:
                                        s = s + 1
                                        t = (2 * s) + sha3(9)
                                        continue 
                                    if not (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256):
                                        _2967 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2967] = 26
                                        mem[_2967 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2967 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            _3151 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3151] = 26
                                            mem[_3151 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _3390 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3390] = 26
                                                mem[_3390 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3390 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3424 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3424] = 26
                                                mem[_3424 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3424 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) / (periodInfo[s].field_0 * periodInfo[s].field_256) - (startBlock * periodInfo[s].field_256) != sub_ce7410bd:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd):
                                            _2989 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2989] = 26
                                            mem[_2989 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _2989 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3170 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3170] = 26
                                                mem[_3170 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _3423 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3423] = 26
                                                    mem[_3423 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3423 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3465 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3465] = 26
                                                    mem[_3465 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3465 + 32]
                                                        idx = idx + 32
                                                        continue 
                                        else:
                                            if (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3017 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3017] = 26
                                            mem[_3017 + 32] = 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3017 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                _3183 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3183] = 26
                                                mem[_3183 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(bambooAddress)
                                                call bambooAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                                    _3464 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3464] = 26
                                                    mem[_3464 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3464 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                else:
                                                    if 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _3516 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3516] = 26
                                                    mem[_3516 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        if (10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * (periodInfo[s].field_0 * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) - (startBlock * periodInfo[s].field_256 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                        poolInfo[idx].field_512 = block.number
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _3516 + 32]
                                                        idx = idx + 32
                                                        continue 
                        revert with 0, 'SafeMath: division by zero'
                    if block.number <= stor[t]:
                        _2815 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2815] = 26
                        mem[_2815 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2815 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _2851 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2851] = 26
                            mem[_2851 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _2916 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2916] = 26
                                mem[_2916 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2916 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2920 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2920] = 26
                                mem[_2920 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2920 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        _2780 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2780] = 30
                        mem[_2780 + 32] = 'SafeMath: subtraction overflow'
                        if stor[t] > block.number:
                            _2791 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2791 + 68] = mem[idx + _2780 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2791 + 68] = mem[_2791 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2791 + -mem[64] + 100
                        if block.number - stor[t] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - stor[t]:
                            _2863 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2863] = 26
                            mem[_2863 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2863 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                _2892 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2892] = 26
                                mem[_2892 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _3130 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3130] = 26
                                    mem[_3130 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3130 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3158 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3158] = 26
                                    mem[_3158 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3158 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_ce7410bd) - (stor[t] * sub_ce7410bd) / block.number - stor[t] != sub_ce7410bd:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * sub_ce7410bd) - (stor[t] * sub_ce7410bd):
                                _2864 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2864] = 26
                                mem[_2864 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2864 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _2897 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2897] = 26
                                    mem[_2897 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _3157 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3157] = 26
                                        mem[_3157 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3157 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3175 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3175] = 26
                                        mem[_3175 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3175 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (stor[t] * sub_ce7410bd) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2867 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2867] = 26
                                mem[_2867 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2867 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _2903 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2903] = 26
                                    mem[_2903 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        _3174 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3174] = 26
                                        mem[_3174 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3174 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3187 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3187] = 26
                                        mem[_3187 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (stor[t] * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3187 + 32]
                                            idx = idx + 32
                                            continue 
            revert with 0, 'SafeMath: division by zero'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function pendingBamboo(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[32] = sha3(arg1, 6)
    mem[100] = this.address
    require ext_code.size(address(poolInfo[arg1].field_0))
    staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
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
    if not periodInfo.length:
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
        if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
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
        if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require periodInfo.length - 1 < periodInfo.length
    if poolInfo[arg1].field_512 >= periodInfo[periodInfo.length - 1].field_0:
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
        if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
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
        if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require periodInfo.length - 1 < periodInfo.length
    mem[0] = 9
    idx = 0
    s = 2 * periodInfo.length - 1
    while idx < periodInfo.length:
        mem[0] = 9
        if poolInfo[arg1].field_512 >= periodInfo[idx].field_0:
            idx = idx + 1
            s = (2 * idx) + sha3(9)
            continue 
        if poolInfo[arg1].field_512 > startBlock:
            _2696 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2696] = 20
            mem[_2696 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
            if block.number < periodInfo[idx].field_0:
                if poolInfo[arg1].field_512 > block.number:
                    _2704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _2704 + 68] = mem[idx + _2696 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2704 + 68] = mem[_2704 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _2704 + -mem[64] + 100
                if not block.number - poolInfo[arg1].field_512:
                    if block.number > periodInfo[idx].field_0:
                        idx = idx + 1
                        s = (2 * idx) + sha3(9)
                        continue 
                    _2847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2847] = 26
                    mem[_2847 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2847 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        _3124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3124] = 26
                        mem[_3124 + 32] = 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3124 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            _3739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3739] = 26
                            mem[_3739 + 32] = 'SafeMath: division by zero'
                            _3922 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3922] = 30
                            mem[_3922 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[arg1][address(arg2)].field_256 <= 0:
                                return -userInfo[arg1][address(arg2)].field_256
                            _3938 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3938 + 68] = mem[idx + _3922 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3938 + 68] = mem[_3938 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3938 + -mem[64] + 100
                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3770 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3770] = 26
                        mem[_3770 + 32] = 'SafeMath: division by zero'
                        _3930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3930] = 30
                        mem[_3930 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        _3958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3958 + 68] = mem[idx + _3930 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3958 + 68] = mem[_3958 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3958 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3145 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3145] = 26
                    mem[_3145 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3145 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3769] = 26
                        mem[_3769 + 32] = 'SafeMath: division by zero'
                        _3929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3929] = 30
                        mem[_3929 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _3955 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3955 + 68] = mem[idx + _3929 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3955 + 68] = mem[_3955 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3955 + -mem[64] + 100
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 26
                    mem[_3812 + 32] = 'SafeMath: division by zero'
                    _3937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3937] = 30
                    mem[_3937 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _3990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3990 + 68] = mem[idx + _3937 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3990 + 68] = mem[_3990 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3990 + -mem[64] + 100
                if (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) / block.number - poolInfo[arg1].field_512 != periodInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number > periodInfo[idx].field_0:
                    idx = idx + 1
                    s = (2 * idx) + sha3(9)
                    continue 
                if not (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256):
                    _2855 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2855] = 26
                    mem[_2855 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2855 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        _3144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3144] = 26
                        mem[_3144 + 32] = 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3144 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            _3768 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3768] = 26
                            mem[_3768 + 32] = 'SafeMath: division by zero'
                            _3928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3928] = 30
                            mem[_3928 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[arg1][address(arg2)].field_256 <= 0:
                                return -userInfo[arg1][address(arg2)].field_256
                            _3952 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3952 + 68] = mem[idx + _3928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3952 + 68] = mem[_3952 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3952 + -mem[64] + 100
                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3811 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3811] = 26
                        mem[_3811 + 32] = 'SafeMath: division by zero'
                        _3936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3936] = 30
                        mem[_3936 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        _3987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3987 + 68] = mem[idx + _3936 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3987 + 68] = mem[_3987 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3987 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3168] = 26
                    mem[_3168 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3168 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3810 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3810] = 26
                        mem[_3810 + 32] = 'SafeMath: division by zero'
                        _3935 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3935] = 30
                        mem[_3935 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _3984 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3984 + 68] = mem[idx + _3935 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3984 + 68] = mem[_3984 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3984 + -mem[64] + 100
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3854] = 26
                    mem[_3854 + 32] = 'SafeMath: division by zero'
                    _3951 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3951] = 30
                    mem[_3951 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4037 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4037 + 68] = mem[idx + _3951 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4037 + 68] = mem[_4037 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4037 + -mem[64] + 100
                if (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) / (block.number * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) != sub_ce7410bd:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd):
                    _2866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2866] = 26
                    mem[_2866 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2866 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        _3167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3167] = 26
                        mem[_3167 + 32] = 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3167 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            _3809 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3809] = 26
                            mem[_3809 + 32] = 'SafeMath: division by zero'
                            _3934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3934] = 30
                            mem[_3934 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[arg1][address(arg2)].field_256 <= 0:
                                return -userInfo[arg1][address(arg2)].field_256
                            _3981 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3981 + 68] = mem[idx + _3934 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3981 + 68] = mem[_3981 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3981 + -mem[64] + 100
                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3853] = 26
                        mem[_3853 + 32] = 'SafeMath: division by zero'
                        _3950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3950] = 30
                        mem[_3950 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        _4034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4034 + 68] = mem[idx + _3950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4034 + 68] = mem[_4034 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4034 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3196 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3196] = 26
                    mem[_3196 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3196 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3852 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3852] = 26
                        mem[_3852 + 32] = 'SafeMath: division by zero'
                        _3949 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3949] = 30
                        mem[_3949 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _4031 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4031 + 68] = mem[idx + _3949 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4031 + 68] = mem[_4031 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4031 + -mem[64] + 100
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3887] = 26
                    mem[_3887 + 32] = 'SafeMath: division by zero'
                    _3980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3980] = 30
                    mem[_3980 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4098 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4098 + 68] = mem[idx + _3980 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4098 + 68] = mem[_4098 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4098 + -mem[64] + 100
                if (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2889 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2889] = 26
                mem[_2889 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2889 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                    _3195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3195] = 26
                    mem[_3195 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3195 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3851] = 26
                        mem[_3851 + 32] = 'SafeMath: division by zero'
                        _3948 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3948] = 30
                        mem[_3948 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _4028 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4028 + 68] = mem[idx + _3948 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4028 + 68] = mem[_4028 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4028 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3886 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3886] = 26
                    mem[_3886 + 32] = 'SafeMath: division by zero'
                    _3979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3979] = 30
                    mem[_3979 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4095 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4095 + 68] = mem[idx + _3979 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4095 + 68] = mem[_4095 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4095 + -mem[64] + 100
                if 10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3233] = 26
                mem[_3233 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3233 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3885] = 26
                    mem[_3885 + 32] = 'SafeMath: division by zero'
                    _3978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3978] = 30
                    mem[_3978 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4092 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4092 + 68] = mem[idx + _3978 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4092 + 68] = mem[_4092 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4092 + -mem[64] + 100
                if (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3909 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3909] = 26
                mem[_3909 + 32] = 'SafeMath: division by zero'
                _4027 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4027] = 30
                mem[_4027 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4174 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4174 + 68] = mem[idx + _4027 + 32]
                    idx = idx + 32
                    continue 
                mem[_4174 + 68] = mem[_4174 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4174 + -mem[64] + 100
            if poolInfo[arg1].field_512 > periodInfo[idx].field_0:
                _2707 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _2707 + 68] = mem[idx + _2696 + 32]
                    idx = idx + 32
                    continue 
                mem[_2707 + 68] = mem[_2707 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _2707 + -mem[64] + 100
            if not periodInfo[idx].field_0 - poolInfo[arg1].field_512:
                if block.number > periodInfo[idx].field_0:
                    idx = idx + 1
                    s = (2 * idx) + sha3(9)
                    continue 
                _2856 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2856] = 26
                mem[_2856 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2856 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    _3149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3149] = 26
                    mem[_3149 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3149 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3775] = 26
                        mem[_3775 + 32] = 'SafeMath: division by zero'
                        _3931 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3931] = 30
                        mem[_3931 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _3965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3965 + 68] = mem[idx + _3931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3965 + 68] = mem[_3965 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3965 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3819] = 26
                    mem[_3819 + 32] = 'SafeMath: division by zero'
                    _3943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3943] = 30
                    mem[_3943 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4004 + 68] = mem[idx + _3943 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4004 + 68] = mem[_4004 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4004 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3175 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3175] = 26
                mem[_3175 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3175 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3818] = 26
                    mem[_3818 + 32] = 'SafeMath: division by zero'
                    _3942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3942] = 30
                    mem[_3942 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4001 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4001 + 68] = mem[idx + _3942 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4001 + 68] = mem[_4001 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4001 + -mem[64] + 100
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3862] = 26
                mem[_3862 + 32] = 'SafeMath: division by zero'
                _3964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3964] = 30
                mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4059 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4059 + 68] = mem[idx + _3964 + 32]
                    idx = idx + 32
                    continue 
                mem[_4059 + 68] = mem[_4059 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4059 + -mem[64] + 100
            if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) / periodInfo[idx].field_0 - poolInfo[arg1].field_512 != periodInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if block.number > periodInfo[idx].field_0:
                idx = idx + 1
                s = (2 * idx) + sha3(9)
                continue 
            if not (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256):
                _2872 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2872] = 26
                mem[_2872 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2872 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    _3174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3174] = 26
                    mem[_3174 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3174 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3817 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3817] = 26
                        mem[_3817 + 32] = 'SafeMath: division by zero'
                        _3941 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3941] = 30
                        mem[_3941 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _3998 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3998 + 68] = mem[idx + _3941 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3998 + 68] = mem[_3998 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3998 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3861 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3861] = 26
                    mem[_3861 + 32] = 'SafeMath: division by zero'
                    _3963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3963] = 30
                    mem[_3963 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4056 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4056 + 68] = mem[idx + _3963 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4056 + 68] = mem[_4056 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4056 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3207] = 26
                mem[_3207 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3207 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3860] = 26
                    mem[_3860 + 32] = 'SafeMath: division by zero'
                    _3962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3962] = 30
                    mem[_3962 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4053 + 68] = mem[idx + _3962 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4053 + 68] = mem[_4053 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4053 + -mem[64] + 100
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3893] = 26
                mem[_3893 + 32] = 'SafeMath: division by zero'
                _3997 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3997] = 30
                mem[_3997 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4128 + 68] = mem[idx + _3997 + 32]
                    idx = idx + 32
                    continue 
                mem[_4128 + 68] = mem[_4128 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4128 + -mem[64] + 100
            if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) / (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256) != sub_ce7410bd:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd):
                _2894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2894] = 26
                mem[_2894 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2894 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    _3206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3206] = 26
                    mem[_3206 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3206 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3859] = 26
                        mem[_3859 + 32] = 'SafeMath: division by zero'
                        _3961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3961] = 30
                        mem[_3961 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _4050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4050 + 68] = mem[idx + _3961 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4050 + 68] = mem[_4050 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4050 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3892 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3892] = 26
                    mem[_3892 + 32] = 'SafeMath: division by zero'
                    _3996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3996] = 30
                    mem[_3996 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4125 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4125 + 68] = mem[idx + _3996 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4125 + 68] = mem[_4125 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4125 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3245] = 26
                mem[_3245 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3245 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3891] = 26
                    mem[_3891 + 32] = 'SafeMath: division by zero'
                    _3995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3995] = 30
                    mem[_3995 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4122 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4122 + 68] = mem[idx + _3995 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4122 + 68] = mem[_4122 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4122 + -mem[64] + 100
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3912 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3912] = 26
                mem[_3912 + 32] = 'SafeMath: division by zero'
                _4049 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4049] = 30
                mem[_4049 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4206 + 68] = mem[idx + _4049 + 32]
                    idx = idx + 32
                    continue 
                mem[_4206 + 68] = mem[_4206 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4206 + -mem[64] + 100
            if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2925] = 26
            mem[_2925 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2925 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                _3244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3244] = 26
                mem[_3244 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3244 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3890] = 26
                    mem[_3890 + 32] = 'SafeMath: division by zero'
                    _3994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3994] = 30
                    mem[_3994 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4119 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4119 + 68] = mem[idx + _3994 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4119 + 68] = mem[_4119 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4119 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3911 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3911] = 26
                mem[_3911 + 32] = 'SafeMath: division by zero'
                _4048 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4048] = 30
                mem[_4048 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4203 + 68] = mem[idx + _4048 + 32]
                    idx = idx + 32
                    continue 
                mem[_4203 + 68] = mem[_4203 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4203 + -mem[64] + 100
            if 10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3295 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3295] = 26
            mem[_3295 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3295 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                _3910 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3910] = 26
                mem[_3910 + 32] = 'SafeMath: division by zero'
                _4047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4047] = 30
                mem[_4047 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= 0:
                    return -userInfo[arg1][address(arg2)].field_256
                _4200 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4200 + 68] = mem[idx + _4047 + 32]
                    idx = idx + 32
                    continue 
                mem[_4200 + 68] = mem[_4200 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4200 + -mem[64] + 100
            if (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3923 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3923] = 26
            mem[_3923 + 32] = 'SafeMath: division by zero'
            _4118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4118] = 30
            mem[_4118 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                return (((10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            _4295 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4295 + 68] = mem[idx + _4118 + 32]
                idx = idx + 32
                continue 
            mem[_4295 + 68] = mem[_4295 + 70 len 30]
            revert with memory
              from mem[64]
               len _4295 + -mem[64] + 100
        _2698 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2698] = 20
        mem[_2698 + 32] = 0x6765744d756c7469706c6965723a206572726f72000000000000000000000000
        if block.number < periodInfo[idx].field_0:
            if startBlock > block.number:
                _2710 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _2710 + 68] = mem[idx + _2698 + 32]
                    idx = idx + 32
                    continue 
                mem[_2710 + 68] = mem[_2710 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _2710 + -mem[64] + 100
            if not block.number - startBlock:
                if block.number > periodInfo[idx].field_0:
                    idx = idx + 1
                    s = (2 * idx) + sha3(9)
                    continue 
                _2857 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2857] = 26
                mem[_2857 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2857 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    _3153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3153] = 26
                    mem[_3153 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3153 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3780 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3780] = 26
                        mem[_3780 + 32] = 'SafeMath: division by zero'
                        _3932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3932] = 30
                        mem[_3932 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _3972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3972 + 68] = mem[idx + _3932 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3972 + 68] = mem[_3972 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3972 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3826] = 26
                    mem[_3826 + 32] = 'SafeMath: division by zero'
                    _3946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3946] = 30
                    mem[_3946 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4017 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4017 + 68] = mem[idx + _3946 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4017 + 68] = mem[_4017 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4017 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3179] = 26
                mem[_3179 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3179 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3825] = 26
                    mem[_3825 + 32] = 'SafeMath: division by zero'
                    _3945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3945] = 30
                    mem[_3945 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4014 + 68] = mem[idx + _3945 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4014 + 68] = mem[_4014 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4014 + -mem[64] + 100
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3870 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3870] = 26
                mem[_3870 + 32] = 'SafeMath: division by zero'
                _3971 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3971] = 30
                mem[_3971 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4075 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4075 + 68] = mem[idx + _3971 + 32]
                    idx = idx + 32
                    continue 
                mem[_4075 + 68] = mem[_4075 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4075 + -mem[64] + 100
            if (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) / block.number - startBlock != periodInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if block.number > periodInfo[idx].field_0:
                idx = idx + 1
                s = (2 * idx) + sha3(9)
                continue 
            if not (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256):
                _2875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2875] = 26
                mem[_2875 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2875 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    _3178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3178] = 26
                    mem[_3178 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3178 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3824 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3824] = 26
                        mem[_3824 + 32] = 'SafeMath: division by zero'
                        _3944 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3944] = 30
                        mem[_3944 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _4011 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4011 + 68] = mem[idx + _3944 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4011 + 68] = mem[_4011 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4011 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3869] = 26
                    mem[_3869 + 32] = 'SafeMath: division by zero'
                    _3970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3970] = 30
                    mem[_3970 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4072 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4072 + 68] = mem[idx + _3970 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4072 + 68] = mem[_4072 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4072 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3214 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3214] = 26
                mem[_3214 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3214 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3868] = 26
                    mem[_3868 + 32] = 'SafeMath: division by zero'
                    _3969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3969] = 30
                    mem[_3969 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4069 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4069 + 68] = mem[idx + _3969 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4069 + 68] = mem[_4069 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4069 + -mem[64] + 100
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3899 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3899] = 26
                mem[_3899 + 32] = 'SafeMath: division by zero'
                _4010 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4010] = 30
                mem[_4010 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4148 + 68] = mem[idx + _4010 + 32]
                    idx = idx + 32
                    continue 
                mem[_4148 + 68] = mem[_4148 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4148 + -mem[64] + 100
            if (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) / (block.number * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) != sub_ce7410bd:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd):
                _2898 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2898] = 26
                mem[_2898 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2898 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    _3213 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3213] = 26
                    mem[_3213 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3213 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        _3867 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3867] = 26
                        mem[_3867 + 32] = 'SafeMath: division by zero'
                        _3968 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3968] = 30
                        mem[_3968 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                        _4066 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4066 + 68] = mem[idx + _3968 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4066 + 68] = mem[_4066 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4066 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3898 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3898] = 26
                    mem[_3898 + 32] = 'SafeMath: division by zero'
                    _4009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4009] = 30
                    mem[_4009 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    _4145 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4145 + 68] = mem[idx + _4009 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4145 + 68] = mem[_4145 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4145 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3254 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3254] = 26
                mem[_3254 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3254 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3897] = 26
                    mem[_3897 + 32] = 'SafeMath: division by zero'
                    _4008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4008] = 30
                    mem[_4008 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4142 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4142 + 68] = mem[idx + _4008 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4142 + 68] = mem[_4142 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4142 + -mem[64] + 100
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3915] = 26
                mem[_3915 + 32] = 'SafeMath: division by zero'
                _4065 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4065] = 30
                mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4232 + 68] = mem[idx + _4065 + 32]
                    idx = idx + 32
                    continue 
                mem[_4232 + 68] = mem[_4232 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4232 + -mem[64] + 100
            if (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2930 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2930] = 26
            mem[_2930 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2930 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                _3253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3253] = 26
                mem[_3253 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3253 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3896] = 26
                    mem[_3896 + 32] = 'SafeMath: division by zero'
                    _4007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4007] = 30
                    mem[_4007 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4139 + 68] = mem[idx + _4007 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4139 + 68] = mem[_4139 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4139 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3914 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3914] = 26
                mem[_3914 + 32] = 'SafeMath: division by zero'
                _4064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4064] = 30
                mem[_4064 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4229 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4229 + 68] = mem[idx + _4064 + 32]
                    idx = idx + 32
                    continue 
                mem[_4229 + 68] = mem[_4229 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4229 + -mem[64] + 100
            if 10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3306] = 26
            mem[_3306 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3306 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                _3913 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3913] = 26
                mem[_3913 + 32] = 'SafeMath: division by zero'
                _4063 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4063] = 30
                mem[_4063 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= 0:
                    return -userInfo[arg1][address(arg2)].field_256
                _4226 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4226 + 68] = mem[idx + _4063 + 32]
                    idx = idx + 32
                    continue 
                mem[_4226 + 68] = mem[_4226 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4226 + -mem[64] + 100
            if (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3924 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3924] = 26
            mem[_3924 + 32] = 'SafeMath: division by zero'
            _4138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4138] = 30
            mem[_4138 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= (10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                return (((10^12 * (block.number * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            _4321 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4321 + 68] = mem[idx + _4138 + 32]
                idx = idx + 32
                continue 
            mem[_4321 + 68] = mem[_4321 + 70 len 30]
            revert with memory
              from mem[64]
               len _4321 + -mem[64] + 100
        if startBlock > periodInfo[idx].field_0:
            _2714 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _2714 + 68] = mem[idx + _2698 + 32]
                idx = idx + 32
                continue 
            mem[_2714 + 68] = mem[_2714 + 80 len 20]
            revert with memory
              from mem[64]
               len _2714 + -mem[64] + 100
        if not periodInfo[idx].field_0 - startBlock:
            if block.number > periodInfo[idx].field_0:
                idx = idx + 1
                s = (2 * idx) + sha3(9)
                continue 
            _2876 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2876] = 26
            mem[_2876 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2876 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                _3183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3183] = 26
                mem[_3183 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3183 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3831] = 26
                    mem[_3831 + 32] = 'SafeMath: division by zero'
                    _3947 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3947] = 30
                    mem[_3947 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4024 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4024 + 68] = mem[idx + _3947 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4024 + 68] = mem[_4024 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4024 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3877 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3877] = 26
                mem[_3877 + 32] = 'SafeMath: division by zero'
                _3977 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3977] = 30
                mem[_3977 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4089 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4089 + 68] = mem[idx + _3977 + 32]
                    idx = idx + 32
                    continue 
                mem[_4089 + 68] = mem[_4089 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4089 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3221 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3221] = 26
            mem[_3221 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3221 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                _3876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3876] = 26
                mem[_3876 + 32] = 'SafeMath: division by zero'
                _3976 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3976] = 30
                mem[_3976 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= 0:
                    return -userInfo[arg1][address(arg2)].field_256
                _4086 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4086 + 68] = mem[idx + _3976 + 32]
                    idx = idx + 32
                    continue 
                mem[_4086 + 68] = mem[_4086 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4086 + -mem[64] + 100
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3907 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3907] = 26
            mem[_3907 + 32] = 'SafeMath: division by zero'
            _4023 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4023] = 30
            mem[_4023 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            _4170 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4170 + 68] = mem[idx + _4023 + 32]
                idx = idx + 32
                continue 
            mem[_4170 + 68] = mem[_4170 + 70 len 30]
            revert with memory
              from mem[64]
               len _4170 + -mem[64] + 100
        if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) / periodInfo[idx].field_0 - startBlock != periodInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if block.number > periodInfo[idx].field_0:
            idx = idx + 1
            s = (2 * idx) + sha3(9)
            continue 
        if not (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256):
            _2904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2904] = 26
            mem[_2904 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2904 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                _3220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3220] = 26
                mem[_3220 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3220 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3875] = 26
                    mem[_3875 + 32] = 'SafeMath: division by zero'
                    _3975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3975] = 30
                    mem[_3975 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4083 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4083 + 68] = mem[idx + _3975 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4083 + 68] = mem[_4083 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4083 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3906 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3906] = 26
                mem[_3906 + 32] = 'SafeMath: division by zero'
                _4022 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4022] = 30
                mem[_4022 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4167 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4167 + 68] = mem[idx + _4022 + 32]
                    idx = idx + 32
                    continue 
                mem[_4167 + 68] = mem[_4167 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4167 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3265] = 26
            mem[_3265 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3265 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                _3905 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3905] = 26
                mem[_3905 + 32] = 'SafeMath: division by zero'
                _4021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4021] = 30
                mem[_4021 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= 0:
                    return -userInfo[arg1][address(arg2)].field_256
                _4164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4164 + 68] = mem[idx + _4021 + 32]
                    idx = idx + 32
                    continue 
                mem[_4164 + 68] = mem[_4164 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4164 + -mem[64] + 100
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3921 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3921] = 26
            mem[_3921 + 32] = 'SafeMath: division by zero'
            _4082 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4082] = 30
            mem[_4082 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            _4262 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4262 + 68] = mem[idx + _4082 + 32]
                idx = idx + 32
                continue 
            mem[_4262 + 68] = mem[_4262 + 70 len 30]
            revert with memory
              from mem[64]
               len _4262 + -mem[64] + 100
        if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) / (periodInfo[idx].field_0 * periodInfo[idx].field_256) - (startBlock * periodInfo[idx].field_256) != sub_ce7410bd:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd):
            _2935 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2935] = 26
            mem[_2935 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2935 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                _3264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3264] = 26
                mem[_3264 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3264 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    _3904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3904] = 26
                    mem[_3904 + 32] = 'SafeMath: division by zero'
                    _4020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4020] = 30
                    mem[_4020 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                    _4161 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4161 + 68] = mem[idx + _4020 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4161 + 68] = mem[_4161 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4161 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3920 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3920] = 26
                mem[_3920 + 32] = 'SafeMath: division by zero'
                _4081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4081] = 30
                mem[_4081 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                _4259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4259 + 68] = mem[idx + _4081 + 32]
                    idx = idx + 32
                    continue 
                mem[_4259 + 68] = mem[_4259 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4259 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3318 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3318] = 26
            mem[_3318 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3318 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                _3919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3919] = 26
                mem[_3919 + 32] = 'SafeMath: division by zero'
                _4080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4080] = 30
                mem[_4080 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= 0:
                    return -userInfo[arg1][address(arg2)].field_256
                _4256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4256 + 68] = mem[idx + _4080 + 32]
                    idx = idx + 32
                    continue 
                mem[_4256 + 68] = mem[_4256 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4256 + -mem[64] + 100
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3927 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3927] = 26
            mem[_3927 + 32] = 'SafeMath: division by zero'
            _4160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4160] = 30
            mem[_4160 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            _4353 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4353 + 68] = mem[idx + _4160 + 32]
                idx = idx + 32
                continue 
            mem[_4353 + 68] = mem[_4353 + 70 len 30]
            revert with memory
              from mem[64]
               len _4353 + -mem[64] + 100
        if (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2972 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2972] = 26
        mem[_2972 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _2972 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if not (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
            _3317 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3317] = 26
            mem[_3317 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3317 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                _3918 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3918] = 26
                mem[_3918 + 32] = 'SafeMath: division by zero'
                _4079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4079] = 30
                mem[_4079 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_256 <= 0:
                    return -userInfo[arg1][address(arg2)].field_256
                _4253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4253 + 68] = mem[idx + _4079 + 32]
                    idx = idx + 32
                    continue 
                mem[_4253 + 68] = mem[_4253 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4253 + -mem[64] + 100
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3926 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3926] = 26
            mem[_3926 + 32] = 'SafeMath: division by zero'
            _4159 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4159] = 30
            mem[_4159 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            _4350 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4350 + 68] = mem[idx + _4159 + 32]
                idx = idx + 32
                continue 
            mem[_4350 + 68] = mem[_4350 + 70 len 30]
            revert with memory
              from mem[64]
               len _4350 + -mem[64] + 100
        if 10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _3382 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3382] = 26
        mem[_3382 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _3382 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            _3925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3925] = 26
            mem[_3925 + 32] = 'SafeMath: division by zero'
            _4158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4158] = 30
            mem[_4158 + 32] = 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_256 <= 0:
                return -userInfo[arg1][address(arg2)].field_256
            _4347 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4347 + 68] = mem[idx + _4158 + 32]
                idx = idx + 32
                continue 
            mem[_4347 + 68] = mem[_4347 + 70 len 30]
            revert with memory
              from mem[64]
               len _4347 + -mem[64] + 100
        if (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _3933 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3933] = 26
        mem[_3933 + 32] = 'SafeMath: division by zero'
        _4252 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4252] = 30
        mem[_4252 + 32] = 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_256 <= (10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            return (((10^12 * (periodInfo[idx].field_0 * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) - (startBlock * periodInfo[idx].field_256 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        _4436 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _4436 + 68] = mem[idx + _4252 + 32]
            idx = idx + 32
            continue 
        mem[_4436 + 68] = mem[_4436 + 70 len 30]
        revert with memory
          from mem[64]
           len _4436 + -mem[64] + 100
    if block.number <= stor[s]:
        _2717 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2717] = 26
        mem[_2717 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            _2767 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2767] = 26
            mem[_2767 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2769 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2769] = 26
        mem[_2769 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    _2670 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2670] = 30
    mem[_2670 + 32] = 'SafeMath: subtraction overflow'
    if stor[s] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - stor[s] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - stor[s]:
        _2766 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2766] = 26
        mem[_2766 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            _2842 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2842] = 26
            mem[_2842 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2846 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2846] = 26
        mem[_2846 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_ce7410bd) - (stor[s] * sub_ce7410bd) / block.number - stor[s] != sub_ce7410bd:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not (block.number * sub_ce7410bd) - (stor[s] * sub_ce7410bd):
        _2768 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2768] = 26
        mem[_2768 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            _2845 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2845] = 26
            mem[_2845 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2849 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2849] = 26
        mem[_2849 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (stor[s] * sub_ce7410bd) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _2770 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2770] = 26
    mem[_2770 + 32] = 'SafeMath: division by zero'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
        _2848 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2848] = 26
        mem[_2848 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _2858 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2858] = 26
    mem[_2858 + 32] = 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (stor[s] * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
