contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2, uint256 arg3)
#  - executeWithdrawal(address arg1, uint256 arg2)
#
const DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801)

const DELEGATION_TYPEHASH = sha3('Delegation(address delegatee,uin', Mask(208, 48, 't256 nonce,uint256 expiry)') >> 48)


address adminAddress;
array of uint256 stor1;
address implementationAddress;
uint8 stor3; offset 160
address pendingXVSVaultImplementationAddress;
address xvsStoreAddress;
address xvsAddress;
mapping of uint256 rewardTokenAmountsPerBlock;
mapping of struct requestedAmount;
array of struct poolInfos;
mapping of uint256 totalAllocPoints;
array of struct stor10;
mapping of uint256 nonces;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;

function getRequestedAmount(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    return requestedAmount[address(arg1)][arg2][address(arg3)].field_512
}

function xvsStore() payable {
    return xvsStoreAddress
}

function pendingAdmin() payable {
    return address(stor1.length)
}

function rewardTokenAmountsPerBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardTokenAmountsPerBlock[arg1]
}

function xvsAddress() payable {
    return xvsAddress
}

function totalAllocPoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalAllocPoints[arg1]
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
}

function implementation() payable {
    return implementationAddress
}

function getAdmin() payable {
    return adminAddress
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function poolInfos(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < poolInfos[arg1].field_0
    return address(poolInfos[arg1][arg2].field_0), 
           poolInfos[arg1][arg2].field_256,
           poolInfos[arg1][arg2].field_512,
           poolInfos[arg1][arg2].field_768,
           poolInfos[arg1][arg2].field_1024
}

function getUserInfo(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    return requestedAmount[address(arg1)][arg2][address(arg3)].field_0, 
           requestedAmount[address(arg1)][arg2][address(arg3)].field_256,
           requestedAmount[address(arg1)][arg2][address(arg3)].field_512
}

function poolLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return poolInfos[address(arg1)].field_0
}

function pendingXVSVaultImplementation() payable {
    return pendingXVSVaultImplementationAddress
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return uint32(checkpoints[arg1][arg2].field_0), Mask(96, 0, checkpoints[arg1][arg2].field_32)
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function burnAdmin() payable {
    if adminAddress != msg.sender:
        revert with 0, 'only admin can'
    emit AdminTransferred(adminAddress, 0);
    adminAddress = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)]:
        return Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)
    else:
        return 0
}

function setXvsStore(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'only admin can'
    xvsAddress = arg1
    xvsStoreAddress = arg2
    stor3 = 1
    emit StoreUpdated(xvsAddress, xvsStoreAddress, address(arg1), arg2);
}

function setWithdrawalLockingPeriod(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if adminAddress != msg.sender:
        revert with 0, 'only admin can'
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    if arg3 <= 0:
        revert with 0, 'Invalid new locking period'
    require arg2 < poolInfos[address(arg1)].field_0
    poolInfos[address(arg1)][arg2].field_1024 = arg3
    emit WithdrawalLockingPeriodUpdated(poolInfos[address(arg1)][arg2].field_1024, arg3, arg1, arg2);
}

function _become(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only proxy admin can change brains'
    require ext_code.size(arg1)
    call arg1._acceptImplementation() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'change not authorized'
}

function getEligibleWithdrawalAmount(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    if var44001 <= 0:
        return var44003
    require var46002 - 1 < stor10[address(arg1)][arg2][address(arg3)].field_0
    if not var52001:
        return var52004
    require var54001 - 1 < stor10[address(arg1)][arg2][address(arg3)].field_0
    s = var54001 - 1
    t = var54001
    u = var54003
    while stor10[address(arg1)][arg2][address(arg3)][s].field_0 + u >= u:
        if t - 1 <= 0:
            return (stor10[address(arg1)][arg2][address(arg3)][s].field_0 + u)
        require t - 2 < stor10[address(arg1)][arg2][address(arg3)].field_0
        if block.timestamp < stor10[address(arg1)][arg2][address(arg3)][t - 2].field_256:
            return (stor10[address(arg1)][arg2][address(arg3)][s].field_0 + u)
        require t - 2 < stor10[address(arg1)][arg2][address(arg3)].field_0
        mem[0] = sha3(address(arg3), sha3(arg2, sha3(address(arg1), 10)))
        s = t - 2
        t = t - 1
        u = stor10[address(arg1)][arg2][address(arg3)][s].field_0 + u
        continue 
    revert with 0, 'SafeMath: addition overflow'
}

function getWithdrawalRequests(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    mem[0] = arg3
    mem[32] = sha3(arg2, sha3(address(arg1), 10))
    mem[64] = (32 * stor10[address(arg1)][arg2][address(arg3)].field_0) + 128
    mem[96] = stor10[address(arg1)][arg2][address(arg3)].field_0
    s = 128
    idx = 0
    while idx < stor10[address(arg1)][arg2][address(arg3)].field_0:
        mem[0] = sha3(address(arg3), sha3(arg2, sha3(address(arg1), 10)))
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = stor10[address(arg1)][arg2][address(arg3)][idx].field_0
        mem[_17 + 32] = stor10[address(arg1)][arg2][address(arg3)][idx].field_256
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    _19 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _19:
        _24 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_24 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _18 + (64 * _19) + -mem[64] + 64
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'XVSVault::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0):
        return Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)
    if arg2 < uint32(checkpoints[address(arg1)][0].field_0):
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 0
        mem[_30 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 16)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = uint32(checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0)
        mem[_34 + 32] = Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32)
        if arg2 == uint32(checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0):
            return Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32)
        if arg2 <= uint32(checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0):
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return Mask(96, 0, checkpoints[address(arg1)][idx << 224].field_32)
}

function updatePool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    require arg2 < poolInfos[address(arg1)].field_0
    if block.number > poolInfos[address(arg1)][arg2].field_512:
        require ext_code.size(address(poolInfos[address(arg1)][arg2].field_0))
        staticcall address(poolInfos[address(arg1)][arg2].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if poolInfos[address(arg1)][arg2].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.number - poolInfos[address(arg1)][arg2].field_512:
                if not totalAllocPoints[address(arg1)]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalAllocPoints[address(arg1)]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][arg2].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][arg2].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]
            else:
                if (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) / block.number - poolInfos[address(arg1)][arg2].field_512 != rewardTokenAmountsPerBlock[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)]):
                    if not totalAllocPoints[address(arg1)]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalAllocPoints[address(arg1)]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfos[address(arg1)][arg2].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfos[address(arg1)][arg2].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]
                else:
                    if (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) != poolInfos[address(arg1)][arg2].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalAllocPoints[address(arg1)]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfos[address(arg1)][arg2].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfos[address(arg1)][arg2].field_768 += 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0]
        poolInfos[address(arg1)][arg2].field_512 = block.number
}

function massUpdatePools(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 8
    idx = 0
    while idx < poolInfos[address(arg1)].field_0:
        mem[32] = 8
        require idx < poolInfos[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        if block.number <= poolInfos[address(arg1)][idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfos[address(arg1)][idx].field_0))
        staticcall address(poolInfos[address(arg1)][idx].field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _97 = mem[_96]
        require mem[_96] == mem[_96]
        if not mem[_96]:
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _98 = mem[64]
        mem[64] = mem[64] + 64
        mem[_98] = 30
        mem[_98 + 32] = 'SafeMath: subtraction overflow'
        if poolInfos[address(arg1)][idx].field_512 > block.number:
            _99 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _99 + 68] = mem[idx + _98 + 32]
                idx = idx + 32
                continue 
            mem[_99 + 98] = 0
            revert with memory
              from mem[64]
               len _99 + -mem[64] + 100
        mem[0] = arg1
        mem[32] = 6
        if not block.number - poolInfos[address(arg1)][idx].field_512:
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = 26
            mem[_106 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _110 + 68] = mem[idx + _106 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 94] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_121] = 26
                mem[_121 + 32] = 'SafeMath: division by zero'
                if _97:
                    if (0 / _97) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _97
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _129 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _129 + 68] = mem[idx + _121 + 32]
                    idx = idx + 32
                    continue 
                mem[_129 + 94] = 0
                revert with memory
                  from mem[64]
                   len _129 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_124] = 26
            mem[_124 + 32] = 'SafeMath: division by zero'
            if _97:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _97) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _97
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _124 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) / block.number - poolInfos[address(arg1)][idx].field_512 != rewardTokenAmountsPerBlock[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]):
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 26
            mem[_107 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _111 + 68] = mem[idx + _107 + 32]
                    idx = idx + 32
                    continue 
                mem[_111 + 94] = 0
                revert with memory
                  from mem[64]
                   len _111 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_123] = 26
                mem[_123 + 32] = 'SafeMath: division by zero'
                if _97:
                    if (0 / _97) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _97
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _132 + 68] = mem[idx + _123 + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 94] = 0
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _127 = mem[64]
            mem[64] = mem[64] + 64
            mem[_127] = 26
            mem[_127 + 32] = 'SafeMath: division by zero'
            if _97:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _97) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _97
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _135 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _135 + 68] = mem[idx + _127 + 32]
                idx = idx + 32
                continue 
            mem[_135 + 94] = 0
            revert with memory
              from mem[64]
               len _135 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) != poolInfos[address(arg1)][idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _109 = mem[64]
        mem[64] = mem[64] + 64
        mem[_109] = 26
        mem[_109 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoints[address(arg1)]:
            _112 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _112 + 68] = mem[idx + _109 + 32]
                idx = idx + 32
                continue 
            mem[_112 + 94] = 0
            revert with memory
              from mem[64]
               len _112 + -mem[64] + 100
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)]:
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 26
            mem[_126 + 32] = 'SafeMath: division by zero'
            if _97:
                if (0 / _97) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 0 / _97
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _134 + 68] = mem[idx + _126 + 32]
                idx = idx + 32
                continue 
            mem[_134 + 94] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _130 = mem[64]
        mem[64] = mem[64] + 64
        mem[_130] = 26
        mem[_130 + 32] = 'SafeMath: division by zero'
        if _97:
            if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _97) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfos[address(arg1)][idx].field_768 += 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _97
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _136 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _136 + 68] = mem[idx + _130 + 32]
            idx = idx + 32
            continue 
        mem[_136 + 94] = 0
        revert with memory
          from mem[64]
           len _136 + -mem[64] + 100
}

function setRewardAmountPerBlock(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'only admin can'
    mem[0] = arg1
    mem[32] = 8
    idx = 0
    while idx < poolInfos[address(arg1)].field_0:
        mem[32] = 8
        require idx < poolInfos[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        if block.number <= poolInfos[address(arg1)][idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfos[address(arg1)][idx].field_0))
        staticcall address(poolInfos[address(arg1)][idx].field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _105 = mem[_104]
        require mem[_104] == mem[_104]
        if not mem[_104]:
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_106] = 30
        mem[_106 + 32] = 'SafeMath: subtraction overflow'
        if poolInfos[address(arg1)][idx].field_512 > block.number:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _106 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        mem[0] = arg1
        mem[32] = 6
        if not block.number - poolInfos[address(arg1)][idx].field_512:
            _114 = mem[64]
            mem[64] = mem[64] + 64
            mem[_114] = 26
            mem[_114 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _118 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _118 + 68] = mem[idx + _114 + 32]
                    idx = idx + 32
                    continue 
                mem[_118 + 94] = 0
                revert with memory
                  from mem[64]
                   len _118 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 26
                mem[_129 + 32] = 'SafeMath: division by zero'
                if _105:
                    if (0 / _105) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _105
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _137 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _137 + 68] = mem[idx + _129 + 32]
                    idx = idx + 32
                    continue 
                mem[_137 + 94] = 0
                revert with memory
                  from mem[64]
                   len _137 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 26
            mem[_132 + 32] = 'SafeMath: division by zero'
            if _105:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _105) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _105
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _141 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _141 + 68] = mem[idx + _132 + 32]
                idx = idx + 32
                continue 
            mem[_141 + 94] = 0
            revert with memory
              from mem[64]
               len _141 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) / block.number - poolInfos[address(arg1)][idx].field_512 != rewardTokenAmountsPerBlock[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]):
            _115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_115] = 26
            mem[_115 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _119 + 68] = mem[idx + _115 + 32]
                    idx = idx + 32
                    continue 
                mem[_119 + 94] = 0
                revert with memory
                  from mem[64]
                   len _119 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                if _105:
                    if (0 / _105) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _105
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _140 + 68] = mem[idx + _131 + 32]
                    idx = idx + 32
                    continue 
                mem[_140 + 94] = 0
                revert with memory
                  from mem[64]
                   len _140 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 26
            mem[_135 + 32] = 'SafeMath: division by zero'
            if _105:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _105) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _105
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _143 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _143 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_143 + 94] = 0
            revert with memory
              from mem[64]
               len _143 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) != poolInfos[address(arg1)][idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _117 = mem[64]
        mem[64] = mem[64] + 64
        mem[_117] = 26
        mem[_117 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoints[address(arg1)]:
            _120 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _120 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_120 + 94] = 0
            revert with memory
              from mem[64]
               len _120 + -mem[64] + 100
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)]:
            _134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_134] = 26
            mem[_134 + 32] = 'SafeMath: division by zero'
            if _105:
                if (0 / _105) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 0 / _105
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _142 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _142 + 68] = mem[idx + _134 + 32]
                idx = idx + 32
                continue 
            mem[_142 + 94] = 0
            revert with memory
              from mem[64]
               len _142 + -mem[64] + 100
        if 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _138 = mem[64]
        mem[64] = mem[64] + 64
        mem[_138] = 26
        mem[_138 + 32] = 'SafeMath: division by zero'
        if _105:
            if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _105) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfos[address(arg1)][idx].field_768 += 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _105
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _144 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _144 + 68] = mem[idx + _138 + 32]
            idx = idx + 32
            continue 
        mem[_144 + 94] = 0
        revert with memory
          from mem[64]
           len _144 + -mem[64] + 100
    rewardTokenAmountsPerBlock[address(arg1)] = arg2
    emit RewardAmountUpdated(rewardTokenAmountsPerBlock[address(arg1)], arg2, arg1);
}

function set(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if adminAddress != msg.sender:
        revert with 0, 'only admin can'
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    mem[0] = arg1
    mem[32] = 8
    idx = 0
    while idx < poolInfos[address(arg1)].field_0:
        mem[32] = 8
        require idx < poolInfos[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        if block.number <= poolInfos[address(arg1)][idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfos[address(arg1)][idx].field_0))
        staticcall address(poolInfos[address(arg1)][idx].field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _131 = mem[_128]
        require mem[_128] == mem[_128]
        if not mem[_128]:
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _135 = mem[64]
        mem[64] = mem[64] + 64
        mem[_135] = 30
        mem[_135 + 32] = 'SafeMath: subtraction overflow'
        if poolInfos[address(arg1)][idx].field_512 > block.number:
            _136 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _136 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_136 + 98] = 0
            revert with memory
              from mem[64]
               len _136 + -mem[64] + 100
        mem[0] = arg1
        mem[32] = 6
        if not block.number - poolInfos[address(arg1)][idx].field_512:
            _143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_143] = 26
            mem[_143 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _147 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _147 + 68] = mem[idx + _143 + 32]
                    idx = idx + 32
                    continue 
                mem[_147 + 94] = 0
                revert with memory
                  from mem[64]
                   len _147 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 26
                mem[_158 + 32] = 'SafeMath: division by zero'
                if _131:
                    if (0 / _131) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _131
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _166 + 68] = mem[idx + _158 + 32]
                    idx = idx + 32
                    continue 
                mem[_166 + 94] = 0
                revert with memory
                  from mem[64]
                   len _166 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if _131:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _131) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _131
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _170 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _170 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_170 + 94] = 0
            revert with memory
              from mem[64]
               len _170 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) / block.number - poolInfos[address(arg1)][idx].field_512 != rewardTokenAmountsPerBlock[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]):
            _144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_144] = 26
            mem[_144 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _148 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_148 + 94] = 0
                revert with memory
                  from mem[64]
                   len _148 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _160 = mem[64]
                mem[64] = mem[64] + 64
                mem[_160] = 26
                mem[_160 + 32] = 'SafeMath: division by zero'
                if _131:
                    if (0 / _131) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _131
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _169 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _169 + 68] = mem[idx + _160 + 32]
                    idx = idx + 32
                    continue 
                mem[_169 + 94] = 0
                revert with memory
                  from mem[64]
                   len _169 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _164 = mem[64]
            mem[64] = mem[64] + 64
            mem[_164] = 26
            mem[_164 + 32] = 'SafeMath: division by zero'
            if _131:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _131) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _131
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _172 + 68] = mem[idx + _164 + 32]
                idx = idx + 32
                continue 
            mem[_172 + 94] = 0
            revert with memory
              from mem[64]
               len _172 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) != poolInfos[address(arg1)][idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _146 = mem[64]
        mem[64] = mem[64] + 64
        mem[_146] = 26
        mem[_146 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoints[address(arg1)]:
            _149 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _149 + 68] = mem[idx + _146 + 32]
                idx = idx + 32
                continue 
            mem[_149 + 94] = 0
            revert with memory
              from mem[64]
               len _149 + -mem[64] + 100
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)]:
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if _131:
                if (0 / _131) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 0 / _131
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _171 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _171 + 68] = mem[idx + _163 + 32]
                idx = idx + 32
                continue 
            mem[_171 + 94] = 0
            revert with memory
              from mem[64]
               len _171 + -mem[64] + 100
        if 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _167 = mem[64]
        mem[64] = mem[64] + 64
        mem[_167] = 26
        mem[_167 + 32] = 'SafeMath: division by zero'
        if _131:
            if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _131) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfos[address(arg1)][idx].field_768 += 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _131
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _173 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _173 + 68] = mem[idx + _167 + 32]
            idx = idx + 32
            continue 
        mem[_173 + 94] = 0
        revert with memory
          from mem[64]
           len _173 + -mem[64] + 100
    require arg2 < poolInfos[address(arg1)].field_0
    if poolInfos[address(arg1)][arg2].field_256 > totalAllocPoints[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoints[address(arg1)] = arg3 + totalAllocPoints[address(arg1)] - poolInfos[address(arg1)][arg2].field_256
    require arg2 < poolInfos[address(arg1)].field_0
    poolInfos[address(arg1)][arg2].field_256 = arg3
    emit PoolUpdated(poolInfos[address(arg1)][arg2].field_256, arg3, arg1, arg2);
}

function add(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if adminAddress != msg.sender:
        revert with 0, 'only admin can'
    if not xvsStoreAddress:
        revert with 0, 'Store contract addres is empty'
    mem[0] = arg1
    mem[32] = 8
    idx = 0
    while idx < poolInfos[address(arg1)].field_0:
        mem[32] = 8
        require idx < poolInfos[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        if block.number <= poolInfos[address(arg1)][idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfos[address(arg1)][idx].field_0))
        staticcall address(poolInfos[address(arg1)][idx].field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _138 = mem[_137]
        require mem[_137] == mem[_137]
        if not mem[_137]:
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _141 = mem[64]
        mem[64] = mem[64] + 64
        mem[_141] = 30
        mem[_141 + 32] = 'SafeMath: subtraction overflow'
        if poolInfos[address(arg1)][idx].field_512 > block.number:
            _142 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _142 + 68] = mem[idx + _141 + 32]
                idx = idx + 32
                continue 
            mem[_142 + 98] = 0
            revert with memory
              from mem[64]
               len _142 + -mem[64] + 100
        mem[0] = arg1
        mem[32] = 6
        if not block.number - poolInfos[address(arg1)][idx].field_512:
            _150 = mem[64]
            mem[64] = mem[64] + 64
            mem[_150] = 26
            mem[_150 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _154 + 68] = mem[idx + _150 + 32]
                    idx = idx + 32
                    continue 
                mem[_154 + 94] = 0
                revert with memory
                  from mem[64]
                   len _154 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 26
                mem[_165 + 32] = 'SafeMath: division by zero'
                if _138:
                    if (0 / _138) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _138
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _173 + 68] = mem[idx + _165 + 32]
                    idx = idx + 32
                    continue 
                mem[_173 + 94] = 0
                revert with memory
                  from mem[64]
                   len _173 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 26
            mem[_168 + 32] = 'SafeMath: division by zero'
            if _138:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _138) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _138
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _177 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _177 + 68] = mem[idx + _168 + 32]
                idx = idx + 32
                continue 
            mem[_177 + 94] = 0
            revert with memory
              from mem[64]
               len _177 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) / block.number - poolInfos[address(arg1)][idx].field_512 != rewardTokenAmountsPerBlock[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]):
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoints[address(arg1)]:
                _155 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _155 + 68] = mem[idx + _151 + 32]
                    idx = idx + 32
                    continue 
                mem[_155 + 94] = 0
                revert with memory
                  from mem[64]
                   len _155 + -mem[64] + 100
            if not 0 / totalAllocPoints[address(arg1)]:
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 26
                mem[_167 + 32] = 'SafeMath: division by zero'
                if _138:
                    if (0 / _138) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfos[address(arg1)][idx].field_768 += 0 / _138
                    poolInfos[address(arg1)][idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _176 + 68] = mem[idx + _167 + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 94] = 0
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if _138:
                if (10^12 * 0 / totalAllocPoints[address(arg1)] / _138) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 10^12 * 0 / totalAllocPoints[address(arg1)] / _138
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _179 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _179 + 68] = mem[idx + _171 + 32]
                idx = idx + 32
                continue 
            mem[_179 + 94] = 0
            revert with memory
              from mem[64]
               len _179 + -mem[64] + 100
        if (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) != poolInfos[address(arg1)][idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _153 = mem[64]
        mem[64] = mem[64] + 64
        mem[_153] = 26
        mem[_153 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoints[address(arg1)]:
            _156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _156 + 68] = mem[idx + _153 + 32]
                idx = idx + 32
                continue 
            mem[_156 + 94] = 0
            revert with memory
              from mem[64]
               len _156 + -mem[64] + 100
        if not (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)]:
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 26
            mem[_170 + 32] = 'SafeMath: division by zero'
            if _138:
                if (0 / _138) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfos[address(arg1)][idx].field_768 += 0 / _138
                poolInfos[address(arg1)][idx].field_512 = block.number
                idx = idx + 1
                continue 
            _178 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _178 + 68] = mem[idx + _170 + 32]
                idx = idx + 32
                continue 
            mem[_178 + 94] = 0
            revert with memory
              from mem[64]
               len _178 + -mem[64] + 100
        if 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _174 = mem[64]
        mem[64] = mem[64] + 64
        mem[_174] = 26
        mem[_174 + 32] = 'SafeMath: division by zero'
        if _138:
            if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _138) + poolInfos[address(arg1)][idx].field_768 < poolInfos[address(arg1)][idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfos[address(arg1)][idx].field_768 += 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) - (poolInfos[address(arg1)][idx].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][idx].field_256) / totalAllocPoints[address(arg1)] / _138
            poolInfos[address(arg1)][idx].field_512 = block.number
            idx = idx + 1
            continue 
        _180 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _180 + 68] = mem[idx + _174 + 32]
            idx = idx + 32
            continue 
        mem[_180 + 94] = 0
        revert with memory
          from mem[64]
           len _180 + -mem[64] + 100
    idx = 0
    while idx < poolInfos[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        if address(poolInfos[address(arg1)][idx].field_0) == arg3:
            revert with 0, 'Error pool already added'
        idx = idx + 1
        continue 
    if arg2 + totalAllocPoints[address(arg1)] < totalAllocPoints[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoints[address(arg1)] += arg2
    rewardTokenAmountsPerBlock[address(arg1)] = arg4
    poolInfos[address(arg1)].field_0++
    address(poolInfos[address(arg1)][poolInfos[address(arg1)].field_0].field_0) = arg3
    poolInfos[address(arg1)][poolInfos[address(arg1)].field_0].field_256 = arg2
    poolInfos[address(arg1)][poolInfos[address(arg1)].field_0].field_512 = block.number
    poolInfos[address(arg1)][poolInfos[address(arg1)].field_0].field_768 = 0
    poolInfos[address(arg1)][poolInfos[address(arg1)].field_0].field_1024 = arg5
    require ext_code.size(xvsStoreAddress)
    call xvsStoreAddress.setRewardToken(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolAdded(arg2, arg4, arg5, arg1, poolInfos[address(arg1)].field_0 - 1, arg3);
}

function pendingReward(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    require arg2 < poolInfos[address(arg1)].field_0
    require ext_code.size(address(poolInfos[address(arg1)][arg2].field_0))
    staticcall address(poolInfos[address(arg1)][arg2].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number <= poolInfos[address(arg1)][arg2].field_512:
        if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
        if poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0 / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0 / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
    if not ext_call.return_data[0]:
        if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
        if poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0 / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0 / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
    if poolInfos[address(arg1)][arg2].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.number - poolInfos[address(arg1)][arg2].field_512:
        if not totalAllocPoints[address(arg1)]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoints[address(arg1)]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
                if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
            if (0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > (0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
        if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
        if (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
    if (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) / block.number - poolInfos[address(arg1)][arg2].field_512 != rewardTokenAmountsPerBlock[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)]):
        if not totalAllocPoints[address(arg1)]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoints[address(arg1)]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
                if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
            if (0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > (0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
        if 10^12 * 0 / totalAllocPoints[address(arg1)] / 0 / totalAllocPoints[address(arg1)] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
        if (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > (10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((10^12 * 0 / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
    if (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / (block.number * rewardTokenAmountsPerBlock[address(arg1)]) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)]) != poolInfos[address(arg1)][arg2].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoints[address(arg1)]:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
            if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
        if (0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != (0 / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > (0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((0 / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
    if 10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768 < poolInfos[address(arg1)][arg2].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not requestedAmount[address(arg1)][arg2][address(arg3)].field_0:
        if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return -requestedAmount[address(arg1)][arg2][address(arg3)].field_256
    if (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / requestedAmount[address(arg1)][arg2][address(arg3)].field_0 != (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0]) + poolInfos[address(arg1)][arg2].field_768:
        revert with 0, 'SafeMath: multiplication overflow'
    if requestedAmount[address(arg1)][arg2][address(arg3)].field_256 > (10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (((10^12 * (block.number * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) - (poolInfos[address(arg1)][arg2].field_512 * rewardTokenAmountsPerBlock[address(arg1)] * poolInfos[address(arg1)][arg2].field_256) / totalAllocPoints[address(arg1)] / ext_call.return_data[0] * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) + (poolInfos[address(arg1)][arg2].field_768 * requestedAmount[address(arg1)][arg2][address(arg3)].field_0) / 10^12) - requestedAmount[address(arg1)][arg2][address(arg3)].field_256)
}

function requestWithdrawal(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3:
        revert with 0, 're-entered'
    stor3 = 0
    if arg2 >= poolInfos[address(arg1)].field_0:
        revert with 0, 'vault: pool exists?'
    if arg3 <= 0:
        revert with 0, 'requested amount cannot be zero'
    if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if requestedAmount[address(arg1)][arg2][msg.sender].field_0 < arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512:
        revert with 0, 'requested amount is invalid'
    require arg2 < poolInfos[address(arg1)].field_0
    if block.timestamp + poolInfos[address(arg1)][arg2].field_1024 < poolInfos[address(arg1)][arg2].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    stor10[address(arg1)][arg2][msg.sender].field_0++
    stor10[address(arg1)][arg2][msg.sender][stor10[address(arg1)][arg2][msg.sender].field_0].field_0 = 0
    stor10[address(arg1)][arg2][msg.sender][stor10[address(arg1)][arg2][msg.sender].field_0].field_256 = 0
    if var50001 <= 0:
        require var50001 < stor10[address(arg1)][arg2][msg.sender].field_0
        stor10[address(arg1)][arg2][msg.sender][var50001].field_0 = arg3
        stor10[address(arg1)][arg2][msg.sender][var50001].field_256 = block.timestamp + poolInfos[address(arg1)][arg2].field_1024
        if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        requestedAmount[address(arg1)][arg2][msg.sender].field_512 += arg3
        if xvsAddress == arg1:
            if delegates[msg.sender]:
                if Mask(96, 0, arg3) > 0:
                    if delegates[msg.sender]:
                        if numCheckpoints[stor15[msg.sender]]:
                            if Mask(96, 0, arg3) > Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32):
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3), delegates[msg.sender]
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, -arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -arg3), delegates[msg.sender]
        emit ReqestedWithdrawal(arg3, msg.sender, arg1, arg2);
        stor3 = 1
    require var52002 - 1 < stor10[address(arg1)][arg2][msg.sender].field_0
    if not var56001:
        require var56002 < stor10[address(arg1)][arg2][msg.sender].field_0
        stor10[address(arg1)][arg2][msg.sender][var56002].field_0 = arg3
        stor10[address(arg1)][arg2][msg.sender][var56002].field_256 = block.timestamp + poolInfos[address(arg1)][arg2].field_1024
        if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        requestedAmount[address(arg1)][arg2][msg.sender].field_512 += arg3
        if xvsAddress == arg1:
            if delegates[msg.sender]:
                if Mask(96, 0, arg3) > 0:
                    if delegates[msg.sender]:
                        if numCheckpoints[stor15[msg.sender]]:
                            if Mask(96, 0, arg3) > Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32):
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3), delegates[msg.sender]
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, -arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -arg3), delegates[msg.sender]
        emit ReqestedWithdrawal(arg3, msg.sender, arg1, arg2);
        stor3 = 1
    require var58001 - 1 < stor10[address(arg1)][arg2][msg.sender].field_0
    require var60003 < stor10[address(arg1)][arg2][msg.sender].field_0
    stor10[address(arg1)][arg2][msg.sender][var62001].field_0 = stor[var62003]
    stor10[address(arg1)][arg2][msg.sender][var62001].field_256 = uint256(stor1[var62003])
    if var64001 <= 0:
        require var64001 < stor10[address(arg1)][arg2][msg.sender].field_0
        stor10[address(arg1)][arg2][msg.sender][var64001].field_0 = arg3
        stor10[address(arg1)][arg2][msg.sender][var64001].field_256 = block.timestamp + poolInfos[address(arg1)][arg2].field_1024
        if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        requestedAmount[address(arg1)][arg2][msg.sender].field_512 += arg3
        if xvsAddress == arg1:
            if delegates[msg.sender]:
                if Mask(96, 0, arg3) > 0:
                    if delegates[msg.sender]:
                        if numCheckpoints[stor15[msg.sender]]:
                            if Mask(96, 0, arg3) > Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32):
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3), delegates[msg.sender]
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, -arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -arg3), delegates[msg.sender]
        emit ReqestedWithdrawal(arg3, msg.sender, arg1, arg2);
        stor3 = 1
    require var66002 - 1 < stor10[address(arg1)][arg2][msg.sender].field_0
    if not var70001:
        require var70002 < stor10[address(arg1)][arg2][msg.sender].field_0
        stor10[address(arg1)][arg2][msg.sender][var70002].field_0 = arg3
        stor10[address(arg1)][arg2][msg.sender][var70002].field_256 = block.timestamp + poolInfos[address(arg1)][arg2].field_1024
        if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        requestedAmount[address(arg1)][arg2][msg.sender].field_512 += arg3
        if xvsAddress == arg1:
            if delegates[msg.sender]:
                if Mask(96, 0, arg3) > 0:
                    if delegates[msg.sender]:
                        if numCheckpoints[stor15[msg.sender]]:
                            if Mask(96, 0, arg3) > Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32):
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3), delegates[msg.sender]
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, -arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -arg3), delegates[msg.sender]
        emit ReqestedWithdrawal(arg3, msg.sender, arg1, arg2);
        stor3 = 1
    require var72001 - 1 < stor10[address(arg1)][arg2][msg.sender].field_0
    require var74003 < stor10[address(arg1)][arg2][msg.sender].field_0
    stor10[address(arg1)][arg2][msg.sender][var76001].field_0 = stor[var76003]
    stor10[address(arg1)][arg2][msg.sender][var76001].field_256 = uint256(stor1[var76003])
    if var78001 <= 0:
        require var78001 < stor10[address(arg1)][arg2][msg.sender].field_0
        stor10[address(arg1)][arg2][msg.sender][var78001].field_0 = arg3
        stor10[address(arg1)][arg2][msg.sender][var78001].field_256 = block.timestamp + poolInfos[address(arg1)][arg2].field_1024
        if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        requestedAmount[address(arg1)][arg2][msg.sender].field_512 += arg3
        if xvsAddress == arg1:
            if delegates[msg.sender]:
                if Mask(96, 0, arg3) > 0:
                    if delegates[msg.sender]:
                        if numCheckpoints[stor15[msg.sender]]:
                            if Mask(96, 0, arg3) > Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32):
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3), delegates[msg.sender]
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, -arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -arg3), delegates[msg.sender]
        emit ReqestedWithdrawal(arg3, msg.sender, arg1, arg2);
        stor3 = 1
    require var80002 - 1 < stor10[address(arg1)][arg2][msg.sender].field_0
    if var84001:
        require var86001 - 1 < stor10[address(arg1)][arg2][msg.sender].field_0
        # nil
    else:
        require var84002 < stor10[address(arg1)][arg2][msg.sender].field_0
        stor10[address(arg1)][arg2][msg.sender][var84002].field_0 = arg3
        stor10[address(arg1)][arg2][msg.sender][var84002].field_256 = block.timestamp + poolInfos[address(arg1)][arg2].field_1024
        if arg3 + requestedAmount[address(arg1)][arg2][msg.sender].field_512 < requestedAmount[address(arg1)][arg2][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        requestedAmount[address(arg1)][arg2][msg.sender].field_512 += arg3
        if xvsAddress == arg1:
            if delegates[msg.sender]:
                if Mask(96, 0, arg3) > 0:
                    if delegates[msg.sender]:
                        if numCheckpoints[stor15[msg.sender]]:
                            if Mask(96, 0, arg3) > Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32):
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) - arg3), delegates[msg.sender]
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[300 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[408 len 8] >> 192,
                                            0
                            if numCheckpoints[stor15[msg.sender]] <= 0:
                                uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            else:
                                if uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]] - 1 << 224].field_32) = Mask(96, 0, -arg3)
                                else:
                                    uint32(checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[stor15[msg.sender]][stor17[stor15[msg.sender]]].field_32) = Mask(96, 0, -arg3)
                                    numCheckpoints[stor15[msg.sender]] = uint32(numCheckpoints[stor15[msg.sender]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -arg3), delegates[msg.sender]
        emit ReqestedWithdrawal(arg3, msg.sender, arg1, arg2);
        stor3 = 1
}

function delegate(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not xvsAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'XVSVault::getStakeAmount: xvs address is not set'
    mem[0] = xvsAddress
    mem[32] = 8
    idx = 0
    while idx < poolInfos[stor5].field_0:
        mem[0] = sha3(xvsAddress, 8)
        if address(poolInfos[stor5][idx].field_0) != xvsAddress:
            idx = idx + 1
            continue 
        mem[128] = 'SafeMath: subtraction overflow'
        if requestedAmount[stor5][idx][address(msg.sender)].field_512 > requestedAmount[stor5][idx][address(msg.sender)].field_0:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 30:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 32, 30, mem[228 len 30], 0
        delegates[address(msg.sender)] = arg1
        emit 0xcc323ffe: msg.sender, delegates[address(msg.sender)], arg1
        if delegates[address(msg.sender)] != arg1:
            if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) > 0:
                if not delegates[address(msg.sender)]:
                    if arg1:
                        mem[192 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                        if numCheckpoints[address(arg1)]:
                            if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 0
                                while idx < 43:
                                    mem[idx + 324] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 43, mem[324 len 43], 0
                            mem[288 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                            if block.number >= 4294967296:
                                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[356] = 32
                                idx = 0
                                while idx < 56:
                                    mem[idx + 420] = mem[idx + 288]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 56, mem[420 len 56], 0
                            if numCheckpoints[address(arg1)] <= 0:
                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                else:
                                    uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                        else:
                            if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 0
                                while idx < 43:
                                    mem[idx + 324] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 43, mem[324 len 43], 0
                            mem[288 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                            if block.number >= 4294967296:
                                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[356] = 32
                                idx = 0
                                while idx < 56:
                                    mem[idx + 420] = mem[idx + 288]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 56, mem[420 len 56], 0
                            if numCheckpoints[address(arg1)] <= 0:
                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                else:
                                    uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
                else:
                    mem[192 len 44] = 0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77
                    if numCheckpoints[stor15[address(msg.sender)]]:
                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) > Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32):
                            mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[260] = 32
                            idx = 0
                            while idx < 44:
                                mem[idx + 324] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 44, mem[324 len 44], 0
                        mem[288 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                        if block.number >= 4294967296:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 56:
                                mem[idx + 420] = mem[idx + 288]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 56, mem[420 len 56], 0
                        if numCheckpoints[stor15[address(msg.sender)]] <= 0:
                            uint32(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0) = uint32(block.number)
                            Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512)
                            numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512), delegates[address(msg.sender)]
                            if arg1:
                                mem[448 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                        mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[516] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 580] = mem[idx + 448]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[580 len 43], 0
                                    mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[612] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 676] = mem[idx + 544]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[676 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                else:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                        mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[516] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 580] = mem[idx + 448]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[580 len 43], 0
                                    mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[612] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 676] = mem[idx + 544]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[676 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
                        else:
                            if uint32(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0) == uint32(block.number):
                                Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512), delegates[address(msg.sender)]
                                if arg1:
                                    mem[384 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 516] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[516 len 43], 0
                                        mem[480 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[548] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 612] = mem[idx + 480]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[612 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 516] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[516 len 43], 0
                                        mem[480 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[548] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 612] = mem[idx + 480]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[612 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
                            else:
                                uint32(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                                emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512), delegates[address(msg.sender)]
                                if arg1:
                                    mem[448 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[516] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 580] = mem[idx + 448]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[580 len 43], 0
                                        mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[612] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 676] = mem[idx + 544]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[676 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                            mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[516] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 580] = mem[idx + 448]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[580 len 43], 0
                                        mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[612] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 676] = mem[idx + 544]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[676 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
                    else:
                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) > 0:
                            mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[260] = 32
                            idx = 0
                            while idx < 44:
                                mem[idx + 324] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 44, mem[324 len 44], 0
                        mem[288 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                        if block.number >= 4294967296:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 56:
                                mem[idx + 420] = mem[idx + 288]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 56, mem[420 len 56], 0
                        if numCheckpoints[stor15[address(msg.sender)]] <= 0:
                            uint32(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0) = uint32(block.number)
                            Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_32) = Mask(96, 0, -requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512)
                            numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512), delegates[address(msg.sender)]
                            if arg1:
                                mem[448 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                        mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[516] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 580] = mem[idx + 448]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[580 len 43], 0
                                    mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[612] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 676] = mem[idx + 544]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[676 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                else:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                        mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[516] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 580] = mem[idx + 448]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[580 len 43], 0
                                    mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[612] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 676] = mem[idx + 544]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[676 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
                        else:
                            if uint32(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0) == uint32(block.number):
                                Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_32) = Mask(96, 0, -requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                emit 0x6adb589f: 0, Mask(96, 0, -requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512), delegates[address(msg.sender)]
                                if arg1:
                                    mem[384 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 516] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[516 len 43], 0
                                        mem[480 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[548] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 612] = mem[idx + 480]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[612 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 516] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[516 len 43], 0
                                        mem[480 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[548] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 612] = mem[idx + 480]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[612 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
                            else:
                                uint32(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_32) = Mask(96, 0, -requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                                emit 0x6adb589f: 0, Mask(96, 0, -requestedAmount[stor5][idx][address(msg.sender)].field_0 + requestedAmount[stor5][idx][address(msg.sender)].field_512), delegates[address(msg.sender)]
                                if arg1:
                                    mem[448 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[516] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 580] = mem[idx + 448]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[580 len 43], 0
                                        mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[612] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 676] = mem[idx + 544]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[676 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512) < 0:
                                            mem[512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[516] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 580] = mem[idx + 448]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[580 len 43], 0
                                        mem[544 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[612] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 676] = mem[idx + 544]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[676 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(msg.sender)].field_0 - requestedAmount[stor5][idx][address(msg.sender)].field_512), arg1
    delegates[address(msg.sender)] = arg1
    emit 0xcc323ffe: msg.sender, delegates[address(msg.sender)], arg1
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[96] = 8
    mem[128] = 0x5856535661756c74000000000000000000000000000000000000000000000000
    mem[192] = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801)
    mem[224] = 0xddfcc46608a8bd52ebf900f03a24cc97b73a6046cec8c5d0f74a211e376e967a
    mem[256] = chainid
    mem[288] = this.address
    mem[160] = 128
    mem[352] = sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)')
    mem[384] = arg1
    mem[416] = arg2
    mem[448] = arg3
    mem[320] = 128
    mem[512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[514] = sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0xddfcc46608a8bd52ebf900f03a24cc97b73a6046cec8c5d0f74a211e376e967a, chainid, this.address)
    mem[546] = sha3(sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)'), address(arg1), arg2, arg3)
    mem[480] = 66
    if arg6 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if arg4 != 27:
        if arg4 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    mem[64] = 610
    mem[610] = sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0xddfcc46608a8bd52ebf900f03a24cc97b73a6046cec8c5d0f74a211e376e967a, chainid, this.address), sha3(sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)'), address(arg1), arg2, arg3))
    mem[642] = arg4
    mem[674] = arg5
    mem[706] = arg6
    signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0xddfcc46608a8bd52ebf900f03a24cc97b73a6046cec8c5d0f74a211e376e967a, chainid, this.address), sha3(sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)'), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    mem[578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'XVSVault::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'XVSVault::delegateBySig: signature expired'
    if not xvsAddress:
        revert with 0, 'XVSVault::getStakeAmount: xvs address is not set'
    mem[0] = xvsAddress
    mem[32] = 8
    idx = 0
    while idx < poolInfos[stor5].field_0:
        mem[0] = sha3(xvsAddress, 8)
        if address(poolInfos[stor5][idx].field_0) != xvsAddress:
            idx = idx + 1
            continue 
        mem[642] = 'SafeMath: subtraction overflow'
        if requestedAmount[stor5][idx][address(signer)].field_512 > requestedAmount[stor5][idx][address(signer)].field_0:
            mem[674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[678] = 32
            idx = 0
            while idx < 30:
                mem[idx + 742] = mem[idx + 642]
                idx = idx + 32
                continue 
            revert with 0, 32, 30, mem[742 len 30], 0
        delegates[address(signer)] = arg1
        emit 0xcc323ffe: address(signer), delegates[address(signer)], arg1
        if delegates[address(signer)] != arg1:
            if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        mem[706 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                        if numCheckpoints[address(arg1)]:
                            if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                mem[770] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[774] = 32
                                idx = 0
                                while idx < 43:
                                    mem[idx + 838] = mem[idx + 706]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 43, mem[838 len 43], 0
                            mem[802 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                            if block.number >= 4294967296:
                                mem[866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[870] = 32
                                idx = 0
                                while idx < 56:
                                    mem[idx + 934] = mem[idx + 802]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 56, mem[934 len 56], 0
                            if numCheckpoints[address(arg1)] <= 0:
                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                else:
                                    uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                        else:
                            if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                mem[770] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[774] = 32
                                idx = 0
                                while idx < 43:
                                    mem[idx + 838] = mem[idx + 706]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 43, mem[838 len 43], 0
                            mem[802 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                            if block.number >= 4294967296:
                                mem[866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[870] = 32
                                idx = 0
                                while idx < 56:
                                    mem[idx + 934] = mem[idx + 802]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 56, mem[934 len 56], 0
                            if numCheckpoints[address(arg1)] <= 0:
                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                else:
                                    uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                    Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
                else:
                    mem[706 len 44] = 0x735856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77
                    if numCheckpoints[stor15[address(signer)]]:
                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) > Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32):
                            mem[770] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[774] = 32
                            idx = 0
                            while idx < 44:
                                mem[idx + 838] = mem[idx + 706]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 44, mem[838 len 44], 0
                        mem[802 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                        if block.number >= 4294967296:
                            mem[866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[870] = 32
                            idx = 0
                            while idx < 56:
                                mem[idx + 934] = mem[idx + 802]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 56, mem[934 len 56], 0
                        if numCheckpoints[stor15[address(signer)]] <= 0:
                            uint32(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0) = uint32(block.number)
                            Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512)
                            numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                            emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512), delegates[address(signer)]
                            if arg1:
                                mem[962 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                        mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1030] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 1094] = mem[idx + 962]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[1094 len 43], 0
                                    mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1126] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 1190] = mem[idx + 1058]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[1190 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                else:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                        mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1030] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 1094] = mem[idx + 962]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[1094 len 43], 0
                                    mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1126] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 1190] = mem[idx + 1058]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[1190 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
                        else:
                            if uint32(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0) == uint32(block.number):
                                Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512)
                                emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512), delegates[address(signer)]
                                if arg1:
                                    mem[898 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[962] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[966] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1030] = mem[idx + 898]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1030 len 43], 0
                                        mem[994 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1058] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1062] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1126] = mem[idx + 994]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1126 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                            mem[962] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[966] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1030] = mem[idx + 898]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1030 len 43], 0
                                        mem[994 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1058] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1062] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1126] = mem[idx + 994]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1126 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
                            else:
                                uint32(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_32) = Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512)
                                numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                                emit 0x6adb589f: Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0), Mask(96, 0, Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) - requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512), delegates[address(signer)]
                                if arg1:
                                    mem[962 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1030] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1094] = mem[idx + 962]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1094 len 43], 0
                                        mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1126] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1190] = mem[idx + 1058]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1190 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                            mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1030] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1094] = mem[idx + 962]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1094 len 43], 0
                                        mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1126] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1190] = mem[idx + 1058]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1190 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
                    else:
                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) > 0:
                            mem[770] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[774] = 32
                            idx = 0
                            while idx < 44:
                                mem[idx + 838] = mem[idx + 706]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 44, mem[838 len 44], 0
                        mem[802 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                        if block.number >= 4294967296:
                            mem[866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[870] = 32
                            idx = 0
                            while idx < 56:
                                mem[idx + 934] = mem[idx + 802]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 56, mem[934 len 56], 0
                        if numCheckpoints[stor15[address(signer)]] <= 0:
                            uint32(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0) = uint32(block.number)
                            Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_32) = Mask(96, 0, -requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512)
                            numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                            emit 0x6adb589f: 0, Mask(96, 0, -requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512), delegates[address(signer)]
                            if arg1:
                                mem[962 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                        mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1030] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 1094] = mem[idx + 962]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[1094 len 43], 0
                                    mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1126] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 1190] = mem[idx + 1058]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[1190 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                else:
                                    if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                        mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1030] = 32
                                        idx = 0
                                        while idx < 43:
                                            mem[idx + 1094] = mem[idx + 962]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 43, mem[1094 len 43], 0
                                    mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                    if block.number >= 4294967296:
                                        mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[1126] = 32
                                        idx = 0
                                        while idx < 56:
                                            mem[idx + 1190] = mem[idx + 1058]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 56, mem[1190 len 56], 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                        Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                        else:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
                        else:
                            if uint32(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0) == uint32(block.number):
                                Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_32) = Mask(96, 0, -requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512)
                                emit 0x6adb589f: 0, Mask(96, 0, -requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512), delegates[address(signer)]
                                if arg1:
                                    mem[898 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[962] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[966] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1030] = mem[idx + 898]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1030 len 43], 0
                                        mem[994 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1058] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1062] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1126] = mem[idx + 994]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1126 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                            mem[962] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[966] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1030] = mem[idx + 898]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1030 len 43], 0
                                        mem[994 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1058] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1062] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1126] = mem[idx + 994]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1126 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
                            else:
                                uint32(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0) = uint32(block.number)
                                Mask(96, 0, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_32) = Mask(96, 0, -requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512)
                                numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                                emit 0x6adb589f: 0, Mask(96, 0, -requestedAmount[stor5][idx][address(signer)].field_0 + requestedAmount[stor5][idx][address(signer)].field_512), delegates[address(signer)]
                                if arg1:
                                    mem[962 len 43] = 0xfe5856535661756c743a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)) < Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32):
                                            mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1030] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1094] = mem[idx + 962]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1094 len 43], 0
                                        mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1126] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1190] = mem[idx + 1058]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1190 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32))
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0), Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512 + Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32)), arg1
                                    else:
                                        if Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512) < 0:
                                            mem[1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1030] = 32
                                            idx = 0
                                            while idx < 43:
                                                mem[idx + 1094] = mem[idx + 962]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 43, mem[1094 len 43], 0
                                        mem[1058 len 56] = 0x735856535661756c743a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974
                                        if block.number >= 4294967296:
                                            mem[1122] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[1126] = 32
                                            idx = 0
                                            while idx < 56:
                                                mem[idx + 1190] = mem[idx + 1058]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 56, mem[1190 len 56], 0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                            Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if uint32(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                            else:
                                                uint32(checkpoints[address(arg1)][stor17[address(arg1)]].field_0) = uint32(block.number)
                                                Mask(96, 0, checkpoints[address(arg1)][stor17[address(arg1)]].field_32) = Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit 0x6adb589f: 0, Mask(96, 0, requestedAmount[stor5][idx][address(signer)].field_0 - requestedAmount[stor5][idx][address(signer)].field_512), arg1
    delegates[address(signer)] = arg1
    emit 0xcc323ffe: address(signer), delegates[address(signer)], arg1
}



}
