contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
const MAX_INT = -1

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint8 paused;
uint8 stor201;
array of struct staker;
array of struct stakerAmounts;
address tokenAddress;
address rewardsAddress;
uint256 maxStakingAmount;
uint256 currentTotalStake;
uint256 unstakingPeriod;
uint256 apy;
uint256 stor259;
uint256 rewardsDistributed;
uint256 rewardsWithdrawn;
uint256 totalRewardsDistributed;
mapping of struct stor263;
mapping of struct stor264;
uint256 rewardsDistributedLastDate;
array of uint256 stor24932355266362631599590230643598202508944067824722239238597756341740994388928;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function apy() payable {
    return apy
}

function stakerAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < staker.length
    return staker[arg1].field_0
}

function maxStakingAmount() payable {
    return maxStakingAmount
}

function paused() payable {
    return bool(paused)
}

function rewardsDistributedLastDate() payable {
    return rewardsDistributedLastDate
}

function stakerAmounts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakerAmounts.length
    return stakerAmounts[arg1].field_0
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function rewardsDistributed() payable {
    return rewardsDistributed
}

function rewardsAddress() payable {
    return rewardsAddress
}

function rewardsWithdrawn() payable {
    return rewardsWithdrawn
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function currentTotalStake() payable {
    return currentTotalStake
}

function totalRewardsDistributed() payable {
    return totalRewardsDistributed
}

function unstakingPeriod() payable {
    return unstakingPeriod
}

function getRewardsDistributedLastDate() payable {
    return rewardsDistributedLastDate
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae owner role to set APY'
    apy = arg1
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SwapStakingContract: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setUnstakingPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae owner role to set unstaking period'
    unstakingPeriod = arg1
}

function setMaxStakingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae owner role to set max staking amount'
    maxStakingAmount = arg1
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SwapStakingContract: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setRewardsDistributedLastDate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae owner role to set rewards distributed last date'
    rewardsDistributedLastDate = arg1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function setRewardAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not paused:
        revert with 0, 'Pausable: not paused'
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae owner role to set rewards address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Validation] _rewardsAddress is the zero address'
    if rewardsAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Validation] _rewardsAddress is already set to given address'
    rewardsAddress = arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function transfer(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'N[Validation] The caller must hae owner role'
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Validation] Insufficent native token balance to transfer amount.'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Validation] The address does not contain a contract'
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Validation] The address does not contain a contract'
    if not paused:
        revert with 0, 'Pausable: not paused'
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae owner role to set token address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Validation] Invalid swap token address'
    tokenAddress = arg1
}

function transferToken(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'N[Validation] The caller must hae owner role'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, '[Validation] Insufficent token balance to transfer amount.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function info() payable {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _5 + _4 + 32
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _33 = mem[_31]
        require mem[_31] == mem[_31 + 31 len 1]
        mem[mem[64]] = tokenAddress
        mem[mem[64] + 32] = 288
        mem[mem[64] + 288] = _5
        mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_5 + mem[64] + 320] = 0
        mem[mem[64] + 64] = uint8(_33)
        mem[mem[64] + 96] = staker.length
        return tokenAddress, 
               Array(len=_5, data=mem[mem[64] + 320 len ceil32(_5)]),
               _33 << 248,
               staker.length,
               currentTotalStake,
               apy,
               unstakingPeriod,
               bool(paused),
               totalRewardsDistributed
    mem[_5 + ceil32(return_data.size) + 128] = 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _32 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _34 = mem[_32]
    require mem[_32] == mem[_32 + 31 len 1]
    mem[mem[64]] = tokenAddress
    mem[mem[64] + 32] = 288
    mem[mem[64] + 288] = _5
    mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 320] = 0
    mem[mem[64] + 64] = uint8(_34)
    mem[mem[64] + 96] = staker.length
    return tokenAddress, 
           Array(len=_5, data=mem[mem[64] + 320 len ceil32(_5)]),
           _34 << 248,
           staker.length,
           currentTotalStake,
           apy,
           unstakingPeriod,
           bool(paused),
           totalRewardsDistributed
}

function distributeRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor201:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0x9df62d436bfc9f3be4953ab398f3aa862316b013d490e2138c80b4b2eadeabd7][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae rewards distributor role'
    apy = arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0x9df62d436bfc9f3be4953ab398f3aa862316b013d490e2138c80b4b2eadeabd7][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'N[Validation] The caller must hae rewards distributor role'
    if currentTotalStake <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Validation] not enough total stake accumulated'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args rewardsAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '[Validation] not enough rewards accumulated'
    if rewardsWithdrawn + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsDistributed > rewardsWithdrawn + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed:
        if not currentTotalStake:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / currentTotalStake) + stor259 < stor259:
            revert with 0, 'SafeMath: addition overflow'
        stor259 += 0 / currentTotalStake
    else:
        if (10^18 * rewardsWithdrawn) + (10^18 * ext_call.return_data[0]) - (10^18 * rewardsDistributed) / rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not currentTotalStake:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * rewardsWithdrawn) + (10^18 * ext_call.return_data[0]) - (10^18 * rewardsDistributed) / currentTotalStake) + stor259 < stor259:
            revert with 0, 'SafeMath: addition overflow'
        stor259 += (10^18 * rewardsWithdrawn) + (10^18 * ext_call.return_data[0]) - (10^18 * rewardsDistributed) / currentTotalStake
    rewardsDistributed = ext_call.return_data[0]
    rewardsWithdrawn = 0
    if rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed + totalRewardsDistributed < totalRewardsDistributed:
        revert with 0, 'SafeMath: addition overflow'
    totalRewardsDistributed = rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed + totalRewardsDistributed
    rewardsDistributedLastDate = block.timestamp
    emit RewardsDistributed((rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed));
    stor201 = 1
}

function getStakers() payable {
    mem[96] = staker.length
    if not staker.length:
        mem[64] = (32 * staker.length) + (32 * stakerAmounts.length) + 160
        mem[(32 * staker.length) + 128] = stakerAmounts.length
        if not stakerAmounts.length:
            mem[(32 * staker.length) + (32 * stakerAmounts.length) + 160] = 64
            mem[(32 * staker.length) + (32 * stakerAmounts.length) + 224] = staker.length
            idx = 0
            s = 128
            t = (32 * staker.length) + (32 * stakerAmounts.length) + 256
            while idx < staker.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * staker.length) + (32 * stakerAmounts.length) + 192] = (96 * staker.length) + 96
            mem[(64 * staker.length) + (32 * stakerAmounts.length) + 256] = stakerAmounts.length
            mem[(64 * staker.length) + (32 * stakerAmounts.length) + 288 len 32 * stakerAmounts.length] = mem[(32 * staker.length) + 160 len 32 * stakerAmounts.length]
            return memory
              from (32 * staker.length) + (32 * stakerAmounts.length) + 160
               len (96 * staker.length) + (32 * stakerAmounts.length) + 128
        mem[(32 * staker.length) + 160] = uint256(stakerAmounts.field_0)
        idx = (32 * staker.length) + 160
        s = 0
        while (32 * staker.length) + (32 * stakerAmounts.length) + 128 > idx:
            mem[idx + 32] = stakerAmounts[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[128] = address(staker.field_0)
        idx = 128
        s = 0
        while (32 * staker.length) + 96 > idx:
            mem[idx + 32] = staker[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * staker.length) + (32 * stakerAmounts.length) + 160
        mem[(32 * staker.length) + 128] = stakerAmounts.length
        if stakerAmounts.length:
            mem[(32 * staker.length) + 160] = uint256(stakerAmounts.field_0)
            idx = (32 * staker.length) + 160
            s = 0
            while (32 * staker.length) + (32 * stakerAmounts.length) + 128 > idx:
                mem[idx + 32] = stakerAmounts[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * staker.length) + (32 * stakerAmounts.length) + 160] = 64
    mem[(32 * staker.length) + (32 * stakerAmounts.length) + 224] = staker.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < staker.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * staker.length) + (32 * stakerAmounts.length) + 192] = (32 * staker.length) + 96
    mem[(64 * staker.length) + (32 * stakerAmounts.length) + 256] = mem[(32 * staker.length) + 128]
    mem[(64 * staker.length) + (32 * stakerAmounts.length) + 288 len 32 * mem[(32 * staker.length) + 128]] = mem[(32 * staker.length) + 160 len 32 * mem[(32 * staker.length) + 128]]
    return memory
      from mem[64]
       len (64 * staker.length) + (32 * stakerAmounts.length) + (32 * mem[(32 * staker.length) + 128]) + -mem[64] + 288
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor201:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0, '[Unstake] Invalid unstake amount'
    if arg1 > stor263[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Unstake] amount exceed the staked amount'
    if not stor263[address(msg.sender)].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Unstake] There is no staked amount for this account'
    if not stor263[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Unstake] There is no staked amount for this account'
    if stor263[address(msg.sender)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Unstake] You have already initiated unstaking'
    if stor264[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Unstake] You have already initiated unstaking'
    stor263[address(msg.sender)].field_768 = block.timestamp
    stor263[address(msg.sender)].field_1280 = stor259
    stor264[address(msg.sender)].field_256 = arg1
    stor264[address(msg.sender)].field_0 = block.timestamp
    if arg1 != stor263[address(msg.sender)].field_256:
        if stor264[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 1 > stor263[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
        stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = stor263[address(msg.sender)].field_256 - stor264[address(msg.sender)].field_256
    else:
        if 1 > staker.length:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require staker.length - 1 < staker.length
        if 1 > stakerAmounts.length:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require stakerAmounts.length - 1 < stakerAmounts.length
        stor263[stor251[stor251.length].field_0].field_0 = stor263[address(msg.sender)].field_0
        if 1 > stor263[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require stor263[address(msg.sender)].field_0 - 1 < staker.length
        staker[stor263[address(msg.sender)].field_0].field_0 = staker[staker.length].field_0
        if 1 > stor263[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
        stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = stakerAmounts[stakerAmounts.length].field_0
        require staker.length
        staker[staker.length].field_0 = 0
        staker.length--
        require stakerAmounts.length
        stakerAmounts[stakerAmounts.length].field_0 = 0
        stakerAmounts.length--
    if arg1 > currentTotalStake:
        revert with 0, 'SafeMath: subtraction overflow', 0
    currentTotalStake -= arg1
    emit Unstaked(arg1, block.timestamp, msg.sender);
    stor201 = 1
}

function withdrawRewards() payable {
    if not stor201:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor263[address(msg.sender)].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Withdraw Rewards] There is no stake deposit for this account'
    if not stor263[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Withdraw Rewards] There is no stake deposit for this account'
    if stor263[address(msg.sender)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Withdraw Rewards] You already initiated the full withdrawal'
    if stor263[address(msg.sender)].field_768:
        if stor263[address(msg.sender)].field_1024 > stor263[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(msg.sender)].field_256:
            revert with 0, '[Withdraw Rewards] The reward amount has to be larger than 0'
        if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor263[address(msg.sender)].field_1280 - stor263[address(msg.sender)].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18 <= 0:
            revert with 0, '[Withdraw Rewards] The reward amount has to be larger than 0'
        stor263[address(msg.sender)].field_1024 = stor259
        if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
            revert with 0, 'SafeMath: addition overflow'
        rewardsWithdrawn += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsAddress, msg.sender, (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[Withdraw Rewards] Something went wrong while transferring your reward'
        emit RewardsWithdrawn(((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18), msg.sender);
    else:
        if stor263[address(msg.sender)].field_1024 > stor259:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(msg.sender)].field_256:
            revert with 0, '[Withdraw Rewards] The reward amount has to be larger than 0'
        if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor259 - stor263[address(msg.sender)].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18 <= 0:
            revert with 0, '[Withdraw Rewards] The reward amount has to be larger than 0'
        stor263[address(msg.sender)].field_1024 = stor259
        if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
            revert with 0, 'SafeMath: addition overflow'
        rewardsWithdrawn += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsAddress, msg.sender, (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[Withdraw Rewards] Something went wrong while transferring your reward'
        emit RewardsWithdrawn(((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18), msg.sender);
    stor201 = 1
}

function infoWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor263[address(arg1)].field_1536:
        return 0
    if not stor263[address(arg1)].field_256:
        return 0
    if stor264[address(arg1)].field_256 > stor263[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor263[address(arg1)].field_768:
        if stor263[address(arg1)].field_768:
            if stor263[address(arg1)].field_1024 > stor263[address(arg1)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor263[address(arg1)].field_256:
                return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
                       stor264[address(arg1)].field_256,
                       stor263[address(arg1)].field_512,
                       stor263[address(arg1)].field_768,
                       0,
                       0
            if (stor263[address(arg1)].field_1280 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / stor263[address(arg1)].field_256 != stor263[address(arg1)].field_1280 - stor263[address(arg1)].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
                   stor264[address(arg1)].field_256,
                   stor263[address(arg1)].field_512,
                   stor263[address(arg1)].field_768,
                   0,
                   (stor263[address(arg1)].field_1280 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / 10^18
        if stor263[address(arg1)].field_1024 > stor259:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(arg1)].field_256:
            return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
                   stor264[address(arg1)].field_256,
                   stor263[address(arg1)].field_512,
                   stor263[address(arg1)].field_768,
                   0,
                   0
        if (stor259 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / stor263[address(arg1)].field_256 != stor259 - stor263[address(arg1)].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
               stor264[address(arg1)].field_256,
               stor263[address(arg1)].field_512,
               stor263[address(arg1)].field_768,
               0,
               (stor259 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / 10^18
    if unstakingPeriod + stor263[address(arg1)].field_768 < stor263[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if stor263[address(arg1)].field_768:
        if stor263[address(arg1)].field_1024 > stor263[address(arg1)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(arg1)].field_256:
            return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
                   stor264[address(arg1)].field_256,
                   stor263[address(arg1)].field_512,
                   stor263[address(arg1)].field_768,
                   unstakingPeriod + stor263[address(arg1)].field_768,
                   0
        if (stor263[address(arg1)].field_1280 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / stor263[address(arg1)].field_256 != stor263[address(arg1)].field_1280 - stor263[address(arg1)].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
               stor264[address(arg1)].field_256,
               stor263[address(arg1)].field_512,
               stor263[address(arg1)].field_768,
               unstakingPeriod + stor263[address(arg1)].field_768,
               (stor263[address(arg1)].field_1280 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / 10^18
    if stor263[address(arg1)].field_1024 > stor259:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor263[address(arg1)].field_256:
        return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
               stor264[address(arg1)].field_256,
               stor263[address(arg1)].field_512,
               stor263[address(arg1)].field_768,
               unstakingPeriod + stor263[address(arg1)].field_768,
               0
    if (stor259 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / stor263[address(arg1)].field_256 != stor259 - stor263[address(arg1)].field_1024:
        revert with 0, 'SafeMath: multiplication overflow'
    return stor263[address(arg1)].field_256 - stor264[address(arg1)].field_256, 
           stor264[address(arg1)].field_256,
           stor263[address(arg1)].field_512,
           stor263[address(arg1)].field_768,
           unstakingPeriod + stor263[address(arg1)].field_768,
           (stor259 * stor263[address(arg1)].field_256) - (stor263[address(arg1)].field_1024 * stor263[address(arg1)].field_256) / 10^18
}

function stakeRewards() payable {
    if not stor201:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if stor263[address(msg.sender)].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[Stake Rewards] You have must have a staked amount'
    if stor263[address(msg.sender)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Stake Rewards] You have already initiated unstaking'
    if stor263[address(msg.sender)].field_768:
        if stor263[address(msg.sender)].field_1024 > stor263[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(msg.sender)].field_256:
            revert with 0, '[Stake Rewards] Rewards to be staked has to be larger than 0'
        if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor263[address(msg.sender)].field_1280 - stor263[address(msg.sender)].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18 <= 0:
            revert with 0, '[Stake Rewards] Rewards to be staked has to be larger than 0'
        if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + currentTotalStake < currentTotalStake:
            revert with 0, 'SafeMath: addition overflow'
        if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + currentTotalStake > maxStakingAmount:
            revert with 0, '[Stake Rewards] Your staked rewards would exceed the current staking limit'
        if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        stor263[address(msg.sender)].field_256 += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        stor263[address(msg.sender)].field_512 = block.timestamp
        if 1 > stor263[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
        stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + stor263[address(msg.sender)].field_256
        currentTotalStake += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
            revert with 0, 'SafeMath: addition overflow'
        rewardsWithdrawn += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsAddress, address(this.address), (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[Stake Rewards] Something went wrong while transferring reward'
        stor263[address(msg.sender)].field_1024 = stor259
        emit RewardsStaked(((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18), msg.sender);
    else:
        if stor263[address(msg.sender)].field_1024 > stor259:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(msg.sender)].field_256:
            revert with 0, '[Stake Rewards] Rewards to be staked has to be larger than 0'
        if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor259 - stor263[address(msg.sender)].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18 <= 0:
            revert with 0, '[Stake Rewards] Rewards to be staked has to be larger than 0'
        if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + currentTotalStake < currentTotalStake:
            revert with 0, 'SafeMath: addition overflow'
        if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + currentTotalStake > maxStakingAmount:
            revert with 0, '[Stake Rewards] Your staked rewards would exceed the current staking limit'
        if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        stor263[address(msg.sender)].field_256 += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        stor263[address(msg.sender)].field_512 = block.timestamp
        if 1 > stor263[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
        stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + stor263[address(msg.sender)].field_256
        currentTotalStake += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
            revert with 0, 'SafeMath: addition overflow'
        rewardsWithdrawn += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsAddress, address(this.address), (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[Stake Rewards] Something went wrong while transferring reward'
        stor263[address(msg.sender)].field_1024 = stor259
        emit RewardsStaked(((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18), msg.sender);
    stor201 = 1
}

function getStakersRange(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if staker.length <= 0:
        mem[160] = 64
        idx = 0
        s = 128
        t = 192
        while idx < 64:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 64, 2144, 64, mem[192 len 2048], 64, 2144, 64, mem[192 len 1984]
    if arg1 >= staker.length:
        mem[160] = 64
        idx = 0
        s = 128
        t = 192
        while idx < 64:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 64, 2144, 64, mem[192 len 2048], 64, 2144, 64, mem[192 len 1984]
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > staker.length:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if staker.length - arg1 >= arg2:
        require arg2 <= test266151307()
        mem[160] = arg2
        if arg2:
            mem[192 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        require arg2 <= test266151307()
        mem[(32 * arg2) + 192] = arg2
        mem[64] = (64 * arg2) + 224
        if arg2:
            mem[(32 * arg2) + 224 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < arg2
            mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            mem[0] = 252
            require idx < mem[(32 * arg2) + 192]
            mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            idx = idx + 1
            continue 
        mem[(64 * arg2) + 224] = 64
        mem[(64 * arg2) + 288] = arg2
        idx = 0
        s = 192
        t = mem[64] + 96
        while idx < arg2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg2) + 256] = (32 * arg2) + 96
        mem[(98 * arg2) + 320] = mem[(32 * arg2) + 192]
        mem[(98 * arg2) + 352 len 32 * mem[(32 * arg2) + 192]] = mem[(32 * arg2) + 224 len 32 * mem[(32 * arg2) + 192]]
        return memory
          from mem[64]
           len (98 * arg2) + (32 * mem[(32 * arg2) + 192]) + -mem[64] + 352
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if arg1 > staker.length:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require staker.length - arg1 <= test266151307()
    mem[224] = staker.length - arg1
    if not staker.length - arg1:
        require staker.length - arg1 <= test266151307()
        mem[(32 * staker.length - arg1) + 256] = staker.length - arg1
        mem[64] = (64 * staker.length - arg1) + 288
        if not staker.length - arg1:
            idx = 0
            while idx < staker.length - arg1:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[224]
                mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                mem[0] = 252
                require idx < mem[(32 * staker.length - arg1) + 256]
                mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                idx = idx + 1
                continue 
            mem[(64 * staker.length - arg1) + 288] = 64
            _159 = mem[224]
            mem[(64 * staker.length - arg1) + 352] = mem[224]
            idx = 0
            s = 256
            t = mem[64] + 96
            while idx < _159:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * staker.length - arg1) + 320] = (32 * _159) + 96
            _253 = mem[(32 * staker.length - arg1) + 256]
            mem[(64 * staker.length - arg1) + (32 * _159) + 384] = mem[(32 * staker.length - arg1) + 256]
            mem[(64 * staker.length - arg1) + (32 * _159) + 416 len 32 * _253] = mem[(32 * staker.length - arg1) + 288 len 32 * _253]
            return memory
              from mem[64]
               len (64 * staker.length - arg1) + (32 * _159) + (32 * _253) + -mem[64] + 416
        mem[(32 * staker.length - arg1) + 288 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
        idx = 0
        while idx < staker.length - arg1:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < mem[224]
            mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            mem[0] = 252
            require idx < mem[(32 * staker.length - arg1) + 256]
            mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            idx = idx + 1
            continue 
        mem[(64 * staker.length - arg1) + 288] = 64
        _161 = mem[224]
        mem[(64 * staker.length - arg1) + 352] = mem[224]
        idx = 0
        s = 256
        t = mem[64] + 96
        while idx < _161:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * staker.length - arg1) + 320] = (32 * _161) + 96
        _254 = mem[(32 * staker.length - arg1) + 256]
        mem[(64 * staker.length - arg1) + (32 * _161) + 384] = mem[(32 * staker.length - arg1) + 256]
        mem[(64 * staker.length - arg1) + (32 * _161) + 416 len 32 * _254] = mem[(32 * staker.length - arg1) + 288 len 32 * _254]
        return memory
          from mem[64]
           len (64 * staker.length - arg1) + (32 * _161) + (32 * _254) + -mem[64] + 416
    mem[256 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
    require staker.length - arg1 <= test266151307()
    mem[(32 * staker.length - arg1) + 256] = staker.length - arg1
    mem[64] = (64 * staker.length - arg1) + 288
    if not staker.length - arg1:
        idx = 0
        while idx < staker.length - arg1:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < mem[224]
            mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            mem[0] = 252
            require idx < mem[(32 * staker.length - arg1) + 256]
            mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            idx = idx + 1
            continue 
        mem[(64 * staker.length - arg1) + 288] = 64
        _163 = mem[224]
        mem[(64 * staker.length - arg1) + 352] = mem[224]
        idx = 0
        s = 256
        t = mem[64] + 96
        while idx < _163:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * staker.length - arg1) + 320] = (32 * _163) + 96
        _255 = mem[(32 * staker.length - arg1) + 256]
        mem[(64 * staker.length - arg1) + (32 * _163) + 384] = mem[(32 * staker.length - arg1) + 256]
        mem[(64 * staker.length - arg1) + (32 * _163) + 416 len 32 * _255] = mem[(32 * staker.length - arg1) + 288 len 32 * _255]
        return memory
          from mem[64]
           len (64 * staker.length - arg1) + (32 * _163) + (32 * _255) + -mem[64] + 416
    mem[(32 * staker.length - arg1) + 288 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
    idx = 0
    while idx < staker.length - arg1:
        if idx + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        require idx + arg1 < staker.length
        require idx < mem[224]
        mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
        require idx + arg1 < stakerAmounts.length
        mem[0] = 252
        require idx < mem[(32 * staker.length - arg1) + 256]
        mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
        idx = idx + 1
        continue 
    mem[(64 * staker.length - arg1) + 288] = 64
    _165 = mem[224]
    mem[(64 * staker.length - arg1) + 352] = mem[224]
    idx = 0
    s = 256
    t = mem[64] + 96
    while idx < _165:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * staker.length - arg1) + 320] = (32 * _165) + 96
    _256 = mem[(32 * staker.length - arg1) + 256]
    mem[(64 * staker.length - arg1) + (32 * _165) + 384] = mem[(32 * staker.length - arg1) + 256]
    mem[(64 * staker.length - arg1) + (32 * _165) + 416 len 32 * _256] = mem[(32 * staker.length - arg1) + 288 len 32 * _256]
    return memory
      from mem[64]
       len (64 * staker.length - arg1) + (32 * _165) + (32 * _256) + -mem[64] + 416
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor201:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if stor263[address(msg.sender)].field_768 != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[Stake] You have already initiated the unstake process'
    if stor263[address(msg.sender)].field_768:
        if stor263[address(msg.sender)].field_1024 > stor263[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(msg.sender)].field_256:
            if arg1 + stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + stor263[address(msg.sender)].field_256 <= stor263[address(msg.sender)].field_256:
                revert with 0, '[Stake] Amount has to be larger than 0'
            if stor263[address(msg.sender)].field_256 > arg1 + stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, '[Stake] Your stake deposit would exceed the current staking limit'
            stor263[address(msg.sender)].field_256 += arg1
            stor263[address(msg.sender)].field_512 = block.timestamp
            stor263[address(msg.sender)].field_1536 = 1
            stor263[address(msg.sender)].field_1024 = stor259
            if stor263[address(msg.sender)].field_0:
                if 1 > stor263[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
                stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = arg1 + stor263[address(msg.sender)].field_256
            else:
                staker.length++
                staker[staker.length].field_0 = msg.sender
                stakerAmounts.length++
                stor371F[stor252.length] = arg1 + stor263[address(msg.sender)].field_256
                stor263[address(msg.sender)].field_0 = staker.length
            currentTotalStake += arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[Stake] Something went wrong during the token transfer'
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit Staked(arg1, msg.sender);
        else:
            if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor263[address(msg.sender)].field_1280 - stor263[address(msg.sender)].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256 <= stor263[address(msg.sender)].field_256:
                revert with 0, '[Stake] Amount has to be larger than 0'
            if stor263[address(msg.sender)].field_256 > ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, '[Stake] Your stake deposit would exceed the current staking limit'
            stor263[address(msg.sender)].field_256 = ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256
            stor263[address(msg.sender)].field_512 = block.timestamp
            stor263[address(msg.sender)].field_1536 = 1
            stor263[address(msg.sender)].field_1024 = stor259
            if stor263[address(msg.sender)].field_0:
                if 1 > stor263[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
                stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256
            else:
                staker.length++
                staker[staker.length].field_0 = msg.sender
                stakerAmounts.length++
                stor371F[stor252.length] = ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256
                stor263[address(msg.sender)].field_0 = staker.length
            currentTotalStake = ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + currentTotalStake
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[Stake] Something went wrong during the token transfer'
            if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18:
                if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                    revert with 0, 'SafeMath: addition overflow'
                rewardsWithdrawn += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsAddress, address(this.address), (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Stake] Something went wrong while transferring rewards'
            if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit Staked((((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1), msg.sender);
    else:
        if stor263[address(msg.sender)].field_1024 > stor259:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not stor263[address(msg.sender)].field_256:
            if arg1 + stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + stor263[address(msg.sender)].field_256 <= stor263[address(msg.sender)].field_256:
                revert with 0, '[Stake] Amount has to be larger than 0'
            if stor263[address(msg.sender)].field_256 > arg1 + stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, '[Stake] Your stake deposit would exceed the current staking limit'
            stor263[address(msg.sender)].field_256 += arg1
            stor263[address(msg.sender)].field_512 = block.timestamp
            stor263[address(msg.sender)].field_1536 = 1
            stor263[address(msg.sender)].field_1024 = stor259
            if stor263[address(msg.sender)].field_0:
                if 1 > stor263[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
                stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = arg1 + stor263[address(msg.sender)].field_256
            else:
                staker.length++
                staker[staker.length].field_0 = msg.sender
                stakerAmounts.length++
                stor371F[stor252.length] = arg1 + stor263[address(msg.sender)].field_256
                stor263[address(msg.sender)].field_0 = staker.length
            currentTotalStake += arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[Stake] Something went wrong during the token transfer'
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit Staked(arg1, msg.sender);
        else:
            if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor259 - stor263[address(msg.sender)].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256 <= stor263[address(msg.sender)].field_256:
                revert with 0, '[Stake] Amount has to be larger than 0'
            if stor263[address(msg.sender)].field_256 > ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, '[Stake] Your stake deposit would exceed the current staking limit'
            stor263[address(msg.sender)].field_256 = ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256
            stor263[address(msg.sender)].field_512 = block.timestamp
            stor263[address(msg.sender)].field_1536 = 1
            stor263[address(msg.sender)].field_1024 = stor259
            if stor263[address(msg.sender)].field_0:
                if 1 > stor263[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require stor263[address(msg.sender)].field_0 - 1 < stakerAmounts.length
                stakerAmounts[stor263[address(msg.sender)].field_0].field_0 = ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256
            else:
                staker.length++
                staker[staker.length].field_0 = msg.sender
                stakerAmounts.length++
                stor371F[stor252.length] = ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + stor263[address(msg.sender)].field_256
                stor263[address(msg.sender)].field_0 = staker.length
            currentTotalStake = ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 + currentTotalStake
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[Stake] Something went wrong during the token transfer'
            if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18:
                if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                    revert with 0, 'SafeMath: addition overflow'
                rewardsWithdrawn += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsAddress, address(this.address), (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Stake] Something went wrong while transferring rewards'
            if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit Staked((((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + arg1), msg.sender);
    stor201 = 1
}

function withdraw() payable {
    if not stor201:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if 0 == stor263[address(msg.sender)].field_768:
        if not stor264[address(msg.sender)].field_256:
            revert with 0, '[Withdraw] You must unstake first'
    if not stor263[address(msg.sender)].field_1536:
        revert with 0, '[Withdraw] There is no staked amount for this account'
    if not stor263[address(msg.sender)].field_256:
        revert with 0, '[Withdraw] There is no staked amount for this account'
    if unstakingPeriod > block.timestamp - stor263[address(msg.sender)].field_768:
        revert with 0, '[Withdraw] The unstaking period did not pass'
    if stor264[address(msg.sender)].field_256 != 0:
        if stor263[address(msg.sender)].field_768:
            if stor263[address(msg.sender)].field_1024 > stor263[address(msg.sender)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor263[address(msg.sender)].field_256:
                if stor263[address(msg.sender)].field_256 < stor264[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor264[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor264[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 -= stor264[address(msg.sender)].field_256
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor264[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor264[address(msg.sender)].field_256, 0, msg.sender);
            else:
                if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor263[address(msg.sender)].field_1280 - stor263[address(msg.sender)].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor263[address(msg.sender)].field_256 < stor264[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor264[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor264[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 -= stor264[address(msg.sender)].field_256
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor264[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18:
                    if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardsWithdrawn += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsAddress, msg.sender, (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '[Withdraw] Something went wrong while transferring your reward'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor264[address(msg.sender)].field_256, (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18, msg.sender);
        else:
            if stor263[address(msg.sender)].field_1024 > stor259:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor263[address(msg.sender)].field_256:
                if stor263[address(msg.sender)].field_256 < stor264[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor264[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor264[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 -= stor264[address(msg.sender)].field_256
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor264[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor264[address(msg.sender)].field_256, 0, msg.sender);
            else:
                if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor259 - stor263[address(msg.sender)].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor263[address(msg.sender)].field_256 < stor264[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor264[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor264[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 -= stor264[address(msg.sender)].field_256
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor264[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18:
                    if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardsWithdrawn += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsAddress, msg.sender, (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '[Withdraw] Something went wrong while transferring your reward'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor264[address(msg.sender)].field_256, (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18, msg.sender);
    else:
        if stor263[address(msg.sender)].field_768:
            if stor263[address(msg.sender)].field_1024 > stor263[address(msg.sender)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor263[address(msg.sender)].field_256:
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor263[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor263[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor263[address(msg.sender)].field_256, 0, msg.sender);
            else:
                if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor263[address(msg.sender)].field_1280 - stor263[address(msg.sender)].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor263[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor263[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                if (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18:
                    if ((stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardsWithdrawn += (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsAddress, msg.sender, (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '[Withdraw] Something went wrong while transferring your reward'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor263[address(msg.sender)].field_256, (stor263[address(msg.sender)].field_1280 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18, msg.sender);
        else:
            if stor263[address(msg.sender)].field_1024 > stor259:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor263[address(msg.sender)].field_256:
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor263[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor263[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor263[address(msg.sender)].field_256, 0, msg.sender);
            else:
                if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / stor263[address(msg.sender)].field_256 != stor259 - stor263[address(msg.sender)].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    revert with 0, '[withdraw] Invalid withdraw amount specified'
                if stor263[address(msg.sender)].field_256 < stor263[address(msg.sender)].field_256:
                    if stor263[address(msg.sender)].field_256 > stor263[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = stor259
                else:
                    stor263[address(msg.sender)].field_0 = 0
                    stor263[address(msg.sender)].field_256 = 0
                    stor263[address(msg.sender)].field_512 = 0
                    stor263[address(msg.sender)].field_768 = 0
                    stor263[address(msg.sender)].field_1024 = 0
                    stor263[address(msg.sender)].field_1280 = 0
                    stor263[address(msg.sender)].field_1536 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor263[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[Withdraw] Something went wrong while transferring your initial deposit'
                if (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18:
                    if ((stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardsWithdrawn += (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsAddress, msg.sender, (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '[Withdraw] Something went wrong while transferring your reward'
                stor264[address(msg.sender)].field_256 = 0
                stor264[address(msg.sender)].field_0 = 0
                emit Withdrawn(stor263[address(msg.sender)].field_256, (stor259 * stor263[address(msg.sender)].field_256) - (stor263[address(msg.sender)].field_1024 * stor263[address(msg.sender)].field_256) / 10^18, msg.sender);
    stor201 = 1
}

function sub_2d3d8bc2(?) payable {
    require calldata.size - 4 >= 64
    if staker.length <= 0:
        mem[192] = 96
        idx = 0
        s = 128
        t = 224
        while idx < 96:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 96, 3200, 6304, 96, mem[224 len 3072], 96, mem[224 len 2976] >> 24320, 96, 3200, 6304, 96, mem[224 len 2976]
    if arg1 >= staker.length:
        mem[192] = 96
        idx = 0
        s = 128
        t = 224
        while idx < 96:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 96, 3200, 6304, 96, mem[224 len 3072], 96, mem[224 len 2976] >> 24320, 96, 3200, 6304, 96, mem[224 len 2976]
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > staker.length:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if staker.length - arg1 >= arg2:
        require arg2 <= test266151307()
        mem[160] = arg2
        if not arg2:
            require arg2 <= test266151307()
            mem[(32 * arg2) + 192] = arg2
            if not arg2:
                require arg2 <= test266151307()
                mem[(64 * arg2) + 224] = arg2
                mem[64] = (98 * arg2) + 256
                if not arg2:
                    idx = 0
                    while idx < arg2:
                        if idx + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx + arg1 < staker.length
                        require idx < mem[160]
                        mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                        require idx + arg1 < stakerAmounts.length
                        require idx < mem[(32 * arg2) + 192]
                        mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                        require idx < mem[160]
                        mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                        mem[32] = 263
                        _1005 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1005] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                        mem[_1005 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                        mem[_1005 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                        mem[_1005 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                        mem[_1005 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                        mem[_1005 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                        mem[_1005 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                            _1134 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1134] = 30
                            mem[_1134 + 32] = 'SafeMath: subtraction overflow'
                            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                                _1182 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1182 + 68] = mem[idx + _1134 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1182 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1182 + -mem[64] + 100
                            if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                                _1373 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1373] = 26
                                mem[_1373 + 32] = 'SafeMath: division by zero'
                                require idx < mem[(64 * arg2) + 224]
                                mem[(32 * idx) + (64 * arg2) + 256] = 0
                            else:
                                if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1501] = 26
                                mem[_1501 + 32] = 'SafeMath: division by zero'
                                require idx < mem[(64 * arg2) + 224]
                                mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                        else:
                            _1135 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1135] = 30
                            mem[_1135 + 32] = 'SafeMath: subtraction overflow'
                            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                                _1183 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1183 + 68] = mem[idx + _1135 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1183 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1183 + -mem[64] + 100
                            if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                                _1374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1374] = 26
                                mem[_1374 + 32] = 'SafeMath: division by zero'
                                require idx < mem[(64 * arg2) + 224]
                                mem[(32 * idx) + (64 * arg2) + 256] = 0
                            else:
                                if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1502] = 26
                                mem[_1502 + 32] = 'SafeMath: division by zero'
                                require idx < mem[(64 * arg2) + 224]
                                mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                        idx = idx + 1
                        continue 
                    _817 = mem[64]
                    mem[mem[64]] = 96
                    _851 = mem[160]
                    mem[mem[64] + 96] = mem[160]
                    idx = 0
                    s = 192
                    t = mem[64] + 128
                    while idx < _851:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_817 + 32] = (32 * _851) + 128
                    _1649 = mem[(32 * arg2) + 192]
                    mem[_817 + (32 * _851) + 128] = mem[(32 * arg2) + 192]
                    mem[_817 + (32 * _851) + 160 len 32 * _1649] = mem[(32 * arg2) + 224 len 32 * _1649]
                    mem[_817 + 64] = (32 * _851) + (32 * _1649) + 160
                    _1817 = mem[(64 * arg2) + 224]
                    mem[_817 + (32 * _851) + (32 * _1649) + 160] = mem[(64 * arg2) + 224]
                    mem[_817 + (32 * _851) + (32 * _1649) + 192 len 32 * _1817] = mem[(64 * arg2) + 256 len 32 * _1817]
                    return memory
                      from mem[64]
                       len _817 + (32 * _851) + (32 * _1649) + (32 * _1817) + -mem[64] + 192
                mem[(64 * arg2) + 256 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                idx = 0
                while idx < arg2:
                    if idx + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx + arg1 < staker.length
                    require idx < mem[160]
                    mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    require idx + arg1 < stakerAmounts.length
                    require idx < mem[(32 * arg2) + 192]
                    mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                    require idx < mem[160]
                    mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    mem[32] = 263
                    _1008 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1008] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                    mem[_1008 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                    mem[_1008 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                    mem[_1008 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                    mem[_1008 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                    mem[_1008 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                    mem[_1008 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                        _1137 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1137] = 30
                        mem[_1137 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                            _1185 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1185 + 68] = mem[idx + _1137 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1185 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1185 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1375 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1375] = 26
                            mem[_1375 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = 0
                        else:
                            if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1503] = 26
                            mem[_1503 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    else:
                        _1138 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1138] = 30
                        mem[_1138 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                            _1186 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1186 + 68] = mem[idx + _1138 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1186 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1186 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1376 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1376] = 26
                            mem[_1376 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = 0
                        else:
                            if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1504] = 26
                            mem[_1504 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    idx = idx + 1
                    continue 
                _819 = mem[64]
                mem[mem[64]] = 96
                _853 = mem[160]
                mem[mem[64] + 96] = mem[160]
                idx = 0
                s = 192
                t = mem[64] + 128
                while idx < mem[160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _853) + 128
                _1650 = mem[(32 * arg2) + 192]
                mem[_819 + (32 * _853) + 128] = mem[(32 * arg2) + 192]
                mem[_819 + (32 * _853) + 160 len 32 * _1650] = mem[(32 * arg2) + 224 len 32 * _1650]
                mem[_819 + 64] = (32 * _853) + (32 * _1650) + 160
                _1818 = mem[(64 * arg2) + 224]
                mem[_819 + (32 * _853) + (32 * _1650) + 160] = mem[(64 * arg2) + 224]
                mem[_819 + (32 * _853) + (32 * _1650) + 192 len 32 * _1818] = mem[(64 * arg2) + 256 len 32 * _1818]
                return memory
                  from mem[64]
                   len _819 + (32 * _853) + (32 * _1650) + (32 * _1818) + -mem[64] + 192
            mem[(32 * arg2) + 224 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            require arg2 <= test266151307()
            mem[(64 * arg2) + 224] = arg2
            mem[64] = (98 * arg2) + 256
            if not arg2:
                idx = 0
                while idx < arg2:
                    if idx + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx + arg1 < staker.length
                    require idx < mem[160]
                    mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    require idx + arg1 < stakerAmounts.length
                    require idx < mem[(32 * arg2) + 192]
                    mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                    require idx < mem[160]
                    mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    mem[32] = 263
                    _1011 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1011] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                    mem[_1011 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                    mem[_1011 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                    mem[_1011 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                    mem[_1011 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                    mem[_1011 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                    mem[_1011 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                        _1140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1140] = 30
                        mem[_1140 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                            _1188 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1188 + 68] = mem[idx + _1140 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1188 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1188 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1377] = 26
                            mem[_1377 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = 0
                        else:
                            if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1505] = 26
                            mem[_1505 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    else:
                        _1141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1141] = 30
                        mem[_1141 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                            _1189 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1189 + 68] = mem[idx + _1141 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1189 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1189 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1378 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1378] = 26
                            mem[_1378 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = 0
                        else:
                            if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1506 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1506] = 26
                            mem[_1506 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    idx = idx + 1
                    continue 
                _821 = mem[64]
                mem[mem[64]] = 96
                _855 = mem[160]
                mem[mem[64] + 96] = mem[160]
                idx = 0
                s = 192
                t = mem[64] + 128
                while idx < mem[160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _855) + 128
                _1651 = mem[(32 * arg2) + 192]
                mem[_821 + (32 * _855) + 128] = mem[(32 * arg2) + 192]
                mem[_821 + (32 * _855) + 160 len 32 * _1651] = mem[(32 * arg2) + 224 len 32 * _1651]
                mem[_821 + 64] = (32 * _855) + (32 * _1651) + 160
                _1819 = mem[(64 * arg2) + 224]
                mem[_821 + (32 * _855) + (32 * _1651) + 160] = mem[(64 * arg2) + 224]
                mem[_821 + (32 * _855) + (32 * _1651) + 192 len 32 * _1819] = mem[(64 * arg2) + 256 len 32 * _1819]
                return memory
                  from mem[64]
                   len _821 + (32 * _855) + (32 * _1651) + (32 * _1819) + -mem[64] + 192
            mem[(64 * arg2) + 256 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            idx = 0
            while idx < arg2:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[160]
                mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                require idx < mem[(32 * arg2) + 192]
                mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                require idx < mem[160]
                mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                mem[32] = 263
                _1014 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1014] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                mem[_1014 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                mem[_1014 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                mem[_1014 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                mem[_1014 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                mem[_1014 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                mem[_1014 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                    _1143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1143] = 30
                    mem[_1143 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                        _1191 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1191 + 68] = mem[idx + _1143 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1191 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1191 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1379] = 26
                        mem[_1379 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = 0
                    else:
                        if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1507 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1507] = 26
                        mem[_1507 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                else:
                    _1144 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1144] = 30
                    mem[_1144 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                        _1192 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1192 + 68] = mem[idx + _1144 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1192 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1192 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1380] = 26
                        mem[_1380 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = 0
                    else:
                        if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1508] = 26
                        mem[_1508 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                idx = idx + 1
                continue 
            _823 = mem[64]
            mem[mem[64]] = 96
            _857 = mem[160]
            mem[mem[64] + 96] = mem[160]
            idx = 0
            s = 192
            t = mem[64] + 128
            while idx < mem[160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _857) + 128
            _1652 = mem[(32 * arg2) + 192]
            mem[_823 + (32 * _857) + 128] = mem[(32 * arg2) + 192]
            mem[_823 + (32 * _857) + 160 len 32 * _1652] = mem[(32 * arg2) + 224 len 32 * _1652]
            mem[_823 + 64] = (32 * _857) + (32 * _1652) + 160
            _1820 = mem[(64 * arg2) + 224]
            mem[_823 + (32 * _857) + (32 * _1652) + 160] = mem[(64 * arg2) + 224]
            mem[_823 + (32 * _857) + (32 * _1652) + 192 len 32 * _1820] = mem[(64 * arg2) + 256 len 32 * _1820]
            return memory
              from mem[64]
               len _823 + (32 * _857) + (32 * _1652) + (32 * _1820) + -mem[64] + 192
        mem[192 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        require arg2 <= test266151307()
        mem[(32 * arg2) + 192] = arg2
        if not arg2:
            require arg2 <= test266151307()
            mem[(64 * arg2) + 224] = arg2
            mem[64] = (98 * arg2) + 256
            if not arg2:
                idx = 0
                while idx < arg2:
                    if idx + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx + arg1 < staker.length
                    require idx < mem[160]
                    mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    require idx + arg1 < stakerAmounts.length
                    require idx < mem[(32 * arg2) + 192]
                    mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                    require idx < mem[160]
                    mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    mem[32] = 263
                    _1017 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1017] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                    mem[_1017 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                    mem[_1017 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                    mem[_1017 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                    mem[_1017 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                    mem[_1017 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                    mem[_1017 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                        _1146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1146] = 30
                        mem[_1146 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                            _1194 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1194 + 68] = mem[idx + _1146 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1194 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1194 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1381] = 26
                            mem[_1381 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = 0
                        else:
                            if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1509] = 26
                            mem[_1509 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    else:
                        _1147 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1147] = 30
                        mem[_1147 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                            _1195 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1195 + 68] = mem[idx + _1147 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1195 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1195 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1382] = 26
                            mem[_1382 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = 0
                        else:
                            if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1510 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1510] = 26
                            mem[_1510 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * arg2) + 224]
                            mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    idx = idx + 1
                    continue 
                _825 = mem[64]
                mem[mem[64]] = 96
                _859 = mem[160]
                mem[mem[64] + 96] = mem[160]
                idx = 0
                s = 192
                t = mem[64] + 128
                while idx < mem[160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _859) + 128
                _1653 = mem[(32 * arg2) + 192]
                mem[_825 + (32 * _859) + 128] = mem[(32 * arg2) + 192]
                mem[_825 + (32 * _859) + 160 len 32 * _1653] = mem[(32 * arg2) + 224 len 32 * _1653]
                mem[_825 + 64] = (32 * _859) + (32 * _1653) + 160
                _1821 = mem[(64 * arg2) + 224]
                mem[_825 + (32 * _859) + (32 * _1653) + 160] = mem[(64 * arg2) + 224]
                mem[_825 + (32 * _859) + (32 * _1653) + 192 len 32 * _1821] = mem[(64 * arg2) + 256 len 32 * _1821]
                return memory
                  from mem[64]
                   len _825 + (32 * _859) + (32 * _1653) + (32 * _1821) + -mem[64] + 192
            mem[(64 * arg2) + 256 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            idx = 0
            while idx < arg2:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[160]
                mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                require idx < mem[(32 * arg2) + 192]
                mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                require idx < mem[160]
                mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                mem[32] = 263
                _1020 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1020] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                mem[_1020 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                mem[_1020 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                mem[_1020 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                mem[_1020 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                mem[_1020 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                mem[_1020 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                    _1149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1149] = 30
                    mem[_1149 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                        _1197 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1197 + 68] = mem[idx + _1149 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1197 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1197 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1383 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1383] = 26
                        mem[_1383 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = 0
                    else:
                        if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1511] = 26
                        mem[_1511 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                else:
                    _1150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1150] = 30
                    mem[_1150 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                        _1198 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1198 + 68] = mem[idx + _1150 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1198 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1198 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1384] = 26
                        mem[_1384 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = 0
                    else:
                        if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1512] = 26
                        mem[_1512 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                idx = idx + 1
                continue 
            _827 = mem[64]
            mem[mem[64]] = 96
            _861 = mem[160]
            mem[mem[64] + 96] = mem[160]
            idx = 0
            s = 192
            t = mem[64] + 128
            while idx < mem[160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _861) + 128
            _1654 = mem[(32 * arg2) + 192]
            mem[_827 + (32 * _861) + 128] = mem[(32 * arg2) + 192]
            mem[_827 + (32 * _861) + 160 len 32 * _1654] = mem[(32 * arg2) + 224 len 32 * _1654]
            mem[_827 + 64] = (32 * _861) + (32 * _1654) + 160
            _1822 = mem[(64 * arg2) + 224]
            mem[_827 + (32 * _861) + (32 * _1654) + 160] = mem[(64 * arg2) + 224]
            mem[_827 + (32 * _861) + (32 * _1654) + 192 len 32 * _1822] = mem[(64 * arg2) + 256 len 32 * _1822]
            return memory
              from mem[64]
               len _827 + (32 * _861) + (32 * _1654) + (32 * _1822) + -mem[64] + 192
        mem[(32 * arg2) + 224 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        require arg2 <= test266151307()
        mem[(64 * arg2) + 224] = arg2
        mem[64] = (98 * arg2) + 256
        if not arg2:
            idx = 0
            while idx < arg2:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[160]
                mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                require idx < mem[(32 * arg2) + 192]
                mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                require idx < mem[160]
                mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                mem[32] = 263
                _1023 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1023] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                mem[_1023 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                mem[_1023 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                mem[_1023 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                mem[_1023 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                mem[_1023 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                mem[_1023 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                    _1152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1152] = 30
                    mem[_1152 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                        _1200 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1200 + 68] = mem[idx + _1152 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1200 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1200 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1385] = 26
                        mem[_1385 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = 0
                    else:
                        if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1513 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1513] = 26
                        mem[_1513 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                else:
                    _1153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1153] = 30
                    mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                        _1201 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1201 + 68] = mem[idx + _1153 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1201 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1201 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1386] = 26
                        mem[_1386 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = 0
                    else:
                        if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1514 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1514] = 26
                        mem[_1514 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * arg2) + 224]
                        mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                idx = idx + 1
                continue 
            _829 = mem[64]
            mem[mem[64]] = 96
            _863 = mem[160]
            mem[mem[64] + 96] = mem[160]
            idx = 0
            s = 192
            t = mem[64] + 128
            while idx < mem[160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _863) + 128
            _1655 = mem[(32 * arg2) + 192]
            mem[_829 + (32 * _863) + 128] = mem[(32 * arg2) + 192]
            mem[_829 + (32 * _863) + 160 len 32 * _1655] = mem[(32 * arg2) + 224 len 32 * _1655]
            mem[_829 + 64] = (32 * _863) + (32 * _1655) + 160
            _1823 = mem[(64 * arg2) + 224]
            mem[_829 + (32 * _863) + (32 * _1655) + 160] = mem[(64 * arg2) + 224]
            mem[_829 + (32 * _863) + (32 * _1655) + 192 len 32 * _1823] = mem[(64 * arg2) + 256 len 32 * _1823]
            return memory
              from mem[64]
               len _829 + (32 * _863) + (32 * _1655) + (32 * _1823) + -mem[64] + 192
        mem[(64 * arg2) + 256 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < mem[160]
            mem[(32 * idx) + 192] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            require idx < mem[(32 * arg2) + 192]
            mem[(32 * idx) + (32 * arg2) + 224] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            require idx < mem[160]
            mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
            mem[32] = 263
            _1026 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1026] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
            mem[_1026 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
            mem[_1026 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
            mem[_1026 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
            mem[_1026 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
            mem[_1026 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
            mem[_1026 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                _1155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1155] = 30
                mem[_1155 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                    _1203 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1203 + 68] = mem[idx + _1155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1203 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1203 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1387] = 26
                    mem[_1387 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * arg2) + 224]
                    mem[(32 * idx) + (64 * arg2) + 256] = 0
                else:
                    if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1515] = 26
                    mem[_1515 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * arg2) + 224]
                    mem[(32 * idx) + (64 * arg2) + 256] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            else:
                _1156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1156] = 30
                mem[_1156 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                    _1204 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1204 + 68] = mem[idx + _1156 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1204 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1204 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1388] = 26
                    mem[_1388 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * arg2) + 224]
                    mem[(32 * idx) + (64 * arg2) + 256] = 0
                else:
                    if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1516] = 26
                    mem[_1516 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * arg2) + 224]
                    mem[(32 * idx) + (64 * arg2) + 256] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            idx = idx + 1
            continue 
        _831 = mem[64]
        mem[mem[64]] = 96
        _865 = mem[160]
        mem[mem[64] + 96] = mem[160]
        idx = 0
        s = 192
        t = mem[64] + 128
        while idx < mem[160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _865) + 128
        _1656 = mem[(32 * arg2) + 192]
        mem[_831 + (32 * _865) + 128] = mem[(32 * arg2) + 192]
        mem[_831 + (32 * _865) + 160 len 32 * _1656] = mem[(32 * arg2) + 224 len 32 * _1656]
        mem[_831 + 64] = (32 * _865) + (32 * _1656) + 160
        _1824 = mem[(64 * arg2) + 224]
        mem[_831 + (32 * _865) + (32 * _1656) + 160] = mem[(64 * arg2) + 224]
        mem[_831 + (32 * _865) + (32 * _1656) + 192 len 32 * _1824] = mem[(64 * arg2) + 256 len 32 * _1824]
        return memory
          from mem[64]
           len _831 + (32 * _865) + (32 * _1656) + (32 * _1824) + -mem[64] + 192
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if arg1 > staker.length:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require staker.length - arg1 <= test266151307()
    mem[224] = staker.length - arg1
    if not staker.length - arg1:
        require staker.length - arg1 <= test266151307()
        mem[(32 * staker.length - arg1) + 256] = staker.length - arg1
        if not staker.length - arg1:
            require staker.length - arg1 <= test266151307()
            mem[(64 * staker.length - arg1) + 288] = staker.length - arg1
            mem[64] = (98 * staker.length) + (-98 * arg1) + 320
            if not staker.length - arg1:
                idx = 0
                while idx < staker.length - arg1:
                    if idx + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx + arg1 < staker.length
                    require idx < mem[224]
                    mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    require idx + arg1 < stakerAmounts.length
                    require idx < mem[(32 * staker.length - arg1) + 256]
                    mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                    require idx < mem[224]
                    mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                    mem[32] = 263
                    _1029 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1029] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                    mem[_1029 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                    mem[_1029 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                    mem[_1029 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                    mem[_1029 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                    mem[_1029 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                    mem[_1029 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                        _1158 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1158] = 30
                        mem[_1158 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                            _1206 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1206 + 68] = mem[idx + _1158 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1206 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1206 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1389 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1389] = 26
                            mem[_1389 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * staker.length - arg1) + 288]
                            mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                        else:
                            if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1517 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1517] = 26
                            mem[_1517 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * staker.length - arg1) + 288]
                            mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    else:
                        _1159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1159] = 30
                        mem[_1159 + 32] = 'SafeMath: subtraction overflow'
                        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                            _1207 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1207 + 68] = mem[idx + _1159 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1207 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1207 + -mem[64] + 100
                        if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                            _1390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1390] = 26
                            mem[_1390 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * staker.length - arg1) + 288]
                            mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                        else:
                            if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1518] = 26
                            mem[_1518 + 32] = 'SafeMath: division by zero'
                            require idx < mem[(64 * staker.length - arg1) + 288]
                            mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                    idx = idx + 1
                    continue 
                _833 = mem[64]
                mem[mem[64]] = 96
                _867 = mem[224]
                mem[mem[64] + 96] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 128
                while idx < _867:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _867) + 128
                _1657 = mem[(32 * staker.length - arg1) + 256]
                mem[_833 + (32 * _867) + 128] = mem[(32 * staker.length - arg1) + 256]
                mem[_833 + (32 * _867) + 160 len 32 * _1657] = mem[(32 * staker.length - arg1) + 288 len 32 * _1657]
                mem[_833 + 64] = (32 * _867) + (32 * _1657) + 160
                _1825 = mem[(64 * staker.length - arg1) + 288]
                mem[_833 + (32 * _867) + (32 * _1657) + 160] = mem[(64 * staker.length - arg1) + 288]
                mem[_833 + (32 * _867) + (32 * _1657) + 192 len 32 * _1825] = mem[(64 * staker.length - arg1) + 320 len 32 * _1825]
                return memory
                  from mem[64]
                   len _833 + (32 * _867) + (32 * _1657) + (32 * _1825) + -mem[64] + 192
            mem[(64 * staker.length - arg1) + 320 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
            idx = 0
            while idx < staker.length - arg1:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[224]
                mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                require idx < mem[(32 * staker.length - arg1) + 256]
                mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                require idx < mem[224]
                mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                mem[32] = 263
                _1032 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1032] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                mem[_1032 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                mem[_1032 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                mem[_1032 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                mem[_1032 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                mem[_1032 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                mem[_1032 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                    _1161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1161] = 30
                    mem[_1161 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                        _1209 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1209 + 68] = mem[idx + _1161 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1209 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1209 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1391 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1391] = 26
                        mem[_1391 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                    else:
                        if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1519] = 26
                        mem[_1519 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                else:
                    _1162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1162] = 30
                    mem[_1162 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                        _1210 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1210 + 68] = mem[idx + _1162 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1210 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1210 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1392] = 26
                        mem[_1392 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                    else:
                        if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1520 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1520] = 26
                        mem[_1520 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                idx = idx + 1
                continue 
            _835 = mem[64]
            mem[mem[64]] = 96
            _869 = mem[224]
            mem[mem[64] + 96] = mem[224]
            idx = 0
            s = 256
            t = mem[64] + 128
            while idx < _869:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _869) + 128
            _1658 = mem[(32 * staker.length - arg1) + 256]
            mem[_835 + (32 * _869) + 128] = mem[(32 * staker.length - arg1) + 256]
            mem[_835 + (32 * _869) + 160 len 32 * _1658] = mem[(32 * staker.length - arg1) + 288 len 32 * _1658]
            mem[_835 + 64] = (32 * _869) + (32 * _1658) + 160
            _1826 = mem[(64 * staker.length - arg1) + 288]
            mem[_835 + (32 * _869) + (32 * _1658) + 160] = mem[(64 * staker.length - arg1) + 288]
            mem[_835 + (32 * _869) + (32 * _1658) + 192 len 32 * _1826] = mem[(64 * staker.length - arg1) + 320 len 32 * _1826]
            return memory
              from mem[64]
               len _835 + (32 * _869) + (32 * _1658) + (32 * _1826) + -mem[64] + 192
        mem[(32 * staker.length - arg1) + 288 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
        require staker.length - arg1 <= test266151307()
        mem[(64 * staker.length - arg1) + 288] = staker.length - arg1
        mem[64] = (98 * staker.length) + (-98 * arg1) + 320
        if not staker.length - arg1:
            idx = 0
            while idx < staker.length - arg1:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[224]
                mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                require idx < mem[(32 * staker.length - arg1) + 256]
                mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                require idx < mem[224]
                mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                mem[32] = 263
                _1035 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1035] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                mem[_1035 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                mem[_1035 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                mem[_1035 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                mem[_1035 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                mem[_1035 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                mem[_1035 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                    _1164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1164] = 30
                    mem[_1164 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                        _1212 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1212 + 68] = mem[idx + _1164 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1212 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1212 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1393 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1393] = 26
                        mem[_1393 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                    else:
                        if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1521] = 26
                        mem[_1521 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                else:
                    _1165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1165] = 30
                    mem[_1165 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                        _1213 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1213 + 68] = mem[idx + _1165 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1213 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1213 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1394 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1394] = 26
                        mem[_1394 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                    else:
                        if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1522 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1522] = 26
                        mem[_1522 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                idx = idx + 1
                continue 
            _837 = mem[64]
            mem[mem[64]] = 96
            _871 = mem[224]
            mem[mem[64] + 96] = mem[224]
            idx = 0
            s = 256
            t = mem[64] + 128
            while idx < _871:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _871) + 128
            _1659 = mem[(32 * staker.length - arg1) + 256]
            mem[_837 + (32 * _871) + 128] = mem[(32 * staker.length - arg1) + 256]
            mem[_837 + (32 * _871) + 160 len 32 * _1659] = mem[(32 * staker.length - arg1) + 288 len 32 * _1659]
            mem[_837 + 64] = (32 * _871) + (32 * _1659) + 160
            _1827 = mem[(64 * staker.length - arg1) + 288]
            mem[_837 + (32 * _871) + (32 * _1659) + 160] = mem[(64 * staker.length - arg1) + 288]
            mem[_837 + (32 * _871) + (32 * _1659) + 192 len 32 * _1827] = mem[(64 * staker.length - arg1) + 320 len 32 * _1827]
            return memory
              from mem[64]
               len _837 + (32 * _871) + (32 * _1659) + (32 * _1827) + -mem[64] + 192
        mem[(64 * staker.length - arg1) + 320 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
        idx = 0
        while idx < staker.length - arg1:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < mem[224]
            mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            require idx < mem[(32 * staker.length - arg1) + 256]
            mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            require idx < mem[224]
            mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
            mem[32] = 263
            _1038 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1038] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
            mem[_1038 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
            mem[_1038 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
            mem[_1038 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
            mem[_1038 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
            mem[_1038 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
            mem[_1038 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                _1167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1167] = 30
                mem[_1167 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                    _1215 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1215 + 68] = mem[idx + _1167 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1215 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1215 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1395 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1395] = 26
                    mem[_1395 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                else:
                    if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1523] = 26
                    mem[_1523 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            else:
                _1168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1168] = 30
                mem[_1168 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                    _1216 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1216 + 68] = mem[idx + _1168 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1216 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1216 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1396] = 26
                    mem[_1396 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                else:
                    if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1524] = 26
                    mem[_1524 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            idx = idx + 1
            continue 
        _839 = mem[64]
        mem[mem[64]] = 96
        _873 = mem[224]
        mem[mem[64] + 96] = mem[224]
        idx = 0
        s = 256
        t = mem[64] + 128
        while idx < _873:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_839 + 32] = (32 * _873) + 128
        _1660 = mem[(32 * staker.length - arg1) + 256]
        mem[_839 + (32 * _873) + 128] = mem[(32 * staker.length - arg1) + 256]
        mem[_839 + (32 * _873) + 160 len 32 * _1660] = mem[(32 * staker.length - arg1) + 288 len 32 * _1660]
        mem[_839 + 64] = (32 * _873) + (32 * _1660) + 160
        _1828 = mem[(64 * staker.length - arg1) + 288]
        mem[_839 + (32 * _873) + (32 * _1660) + 160] = mem[(64 * staker.length - arg1) + 288]
        mem[_839 + (32 * _873) + (32 * _1660) + 192 len 32 * _1828] = mem[(64 * staker.length - arg1) + 320 len 32 * _1828]
        return memory
          from mem[64]
           len _839 + (32 * _873) + (32 * _1660) + (32 * _1828) + -mem[64] + 192
    mem[256 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
    require staker.length - arg1 <= test266151307()
    mem[(32 * staker.length - arg1) + 256] = staker.length - arg1
    if not staker.length - arg1:
        require staker.length - arg1 <= test266151307()
        mem[(64 * staker.length - arg1) + 288] = staker.length - arg1
        mem[64] = (98 * staker.length) + (-98 * arg1) + 320
        if not staker.length - arg1:
            idx = 0
            while idx < staker.length - arg1:
                if idx + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require idx + arg1 < staker.length
                require idx < mem[224]
                mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
                require idx + arg1 < stakerAmounts.length
                require idx < mem[(32 * staker.length - arg1) + 256]
                mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
                require idx < mem[224]
                mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
                mem[32] = 263
                _1041 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1041] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
                mem[_1041 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
                mem[_1041 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
                mem[_1041 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
                mem[_1041 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
                mem[_1041 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
                mem[_1041 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                    _1170 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1170] = 30
                    mem[_1170 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                        _1218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1218 + 68] = mem[idx + _1170 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1218 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1218 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1397 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1397] = 26
                        mem[_1397 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                    else:
                        if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1525] = 26
                        mem[_1525 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                else:
                    _1171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1171] = 30
                    mem[_1171 + 32] = 'SafeMath: subtraction overflow'
                    if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                        _1219 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1219 + 68] = mem[idx + _1171 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1219 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1219 + -mem[64] + 100
                    if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                        _1398 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1398] = 26
                        mem[_1398 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                    else:
                        if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1526] = 26
                        mem[_1526 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(64 * staker.length - arg1) + 288]
                        mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
                idx = idx + 1
                continue 
            _841 = mem[64]
            mem[mem[64]] = 96
            _875 = mem[224]
            mem[mem[64] + 96] = mem[224]
            idx = 0
            s = 256
            t = mem[64] + 128
            while idx < _875:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _875) + 128
            _1661 = mem[(32 * staker.length - arg1) + 256]
            mem[_841 + (32 * _875) + 128] = mem[(32 * staker.length - arg1) + 256]
            mem[_841 + (32 * _875) + 160 len 32 * _1661] = mem[(32 * staker.length - arg1) + 288 len 32 * _1661]
            mem[_841 + 64] = (32 * _875) + (32 * _1661) + 160
            _1829 = mem[(64 * staker.length - arg1) + 288]
            mem[_841 + (32 * _875) + (32 * _1661) + 160] = mem[(64 * staker.length - arg1) + 288]
            mem[_841 + (32 * _875) + (32 * _1661) + 192 len 32 * _1829] = mem[(64 * staker.length - arg1) + 320 len 32 * _1829]
            return memory
              from mem[64]
               len _841 + (32 * _875) + (32 * _1661) + (32 * _1829) + -mem[64] + 192
        mem[(64 * staker.length - arg1) + 320 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
        idx = 0
        while idx < staker.length - arg1:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < mem[224]
            mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            require idx < mem[(32 * staker.length - arg1) + 256]
            mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            require idx < mem[224]
            mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
            mem[32] = 263
            _1044 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1044] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
            mem[_1044 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
            mem[_1044 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
            mem[_1044 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
            mem[_1044 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
            mem[_1044 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
            mem[_1044 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                _1173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1173] = 30
                mem[_1173 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                    _1221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1221 + 68] = mem[idx + _1173 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1221 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1221 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1399] = 26
                    mem[_1399 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                else:
                    if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1527] = 26
                    mem[_1527 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            else:
                _1174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1174] = 30
                mem[_1174 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                    _1222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1222 + 68] = mem[idx + _1174 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1222 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1222 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1400] = 26
                    mem[_1400 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                else:
                    if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1528] = 26
                    mem[_1528 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            idx = idx + 1
            continue 
        _843 = mem[64]
        mem[mem[64]] = 96
        _877 = mem[224]
        mem[mem[64] + 96] = mem[224]
        idx = 0
        s = 256
        t = mem[64] + 128
        while idx < _877:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _877) + 128
        _1662 = mem[(32 * staker.length - arg1) + 256]
        mem[_843 + (32 * _877) + 128] = mem[(32 * staker.length - arg1) + 256]
        mem[_843 + (32 * _877) + 160 len 32 * _1662] = mem[(32 * staker.length - arg1) + 288 len 32 * _1662]
        mem[_843 + 64] = (32 * _877) + (32 * _1662) + 160
        _1830 = mem[(64 * staker.length - arg1) + 288]
        mem[_843 + (32 * _877) + (32 * _1662) + 160] = mem[(64 * staker.length - arg1) + 288]
        mem[_843 + (32 * _877) + (32 * _1662) + 192 len 32 * _1830] = mem[(64 * staker.length - arg1) + 320 len 32 * _1830]
        return memory
          from mem[64]
           len _843 + (32 * _877) + (32 * _1662) + (32 * _1830) + -mem[64] + 192
    mem[(32 * staker.length - arg1) + 288 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
    require staker.length - arg1 <= test266151307()
    mem[(64 * staker.length - arg1) + 288] = staker.length - arg1
    mem[64] = (98 * staker.length) + (-98 * arg1) + 320
    if not staker.length - arg1:
        idx = 0
        while idx < staker.length - arg1:
            if idx + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require idx + arg1 < staker.length
            require idx < mem[224]
            mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
            require idx + arg1 < stakerAmounts.length
            require idx < mem[(32 * staker.length - arg1) + 256]
            mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
            require idx < mem[224]
            mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
            mem[32] = 263
            _1047 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1047] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
            mem[_1047 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
            mem[_1047 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
            mem[_1047 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
            mem[_1047 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
            mem[_1047 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
            mem[_1047 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
                _1176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1176] = 30
                mem[_1176 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                    _1224 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1224 + 68] = mem[idx + _1176 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1224 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1224 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1401] = 26
                    mem[_1401 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                else:
                    if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1529 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1529] = 26
                    mem[_1529 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            else:
                _1177 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1177] = 30
                mem[_1177 + 32] = 'SafeMath: subtraction overflow'
                if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                    _1225 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1225 + 68] = mem[idx + _1177 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1225 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1225 + -mem[64] + 100
                if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                    _1402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1402] = 26
                    mem[_1402 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
                else:
                    if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1530 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1530] = 26
                    mem[_1530 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(64 * staker.length - arg1) + 288]
                    mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
            idx = idx + 1
            continue 
        _845 = mem[64]
        mem[mem[64]] = 96
        _879 = mem[224]
        mem[mem[64] + 96] = mem[224]
        idx = 0
        s = 256
        t = mem[64] + 128
        while idx < _879:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _879) + 128
        _1663 = mem[(32 * staker.length - arg1) + 256]
        mem[_845 + (32 * _879) + 128] = mem[(32 * staker.length - arg1) + 256]
        mem[_845 + (32 * _879) + 160 len 32 * _1663] = mem[(32 * staker.length - arg1) + 288 len 32 * _1663]
        mem[_845 + 64] = (32 * _879) + (32 * _1663) + 160
        _1831 = mem[(64 * staker.length - arg1) + 288]
        mem[_845 + (32 * _879) + (32 * _1663) + 160] = mem[(64 * staker.length - arg1) + 288]
        mem[_845 + (32 * _879) + (32 * _1663) + 192 len 32 * _1831] = mem[(64 * staker.length - arg1) + 320 len 32 * _1831]
        return memory
          from mem[64]
           len _845 + (32 * _879) + (32 * _1663) + (32 * _1831) + -mem[64] + 192
    mem[(64 * staker.length - arg1) + 320 len 32 * staker.length - arg1] = call.data[calldata.size len 32 * staker.length - arg1]
    idx = 0
    while idx < staker.length - arg1:
        if idx + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        require idx + arg1 < staker.length
        require idx < mem[224]
        mem[(32 * idx) + 256] = stor[('name', 'staker', 251) + idx + arg1].field_0
        require idx + arg1 < stakerAmounts.length
        require idx < mem[(32 * staker.length - arg1) + 256]
        mem[(32 * idx) + (32 * staker.length - arg1) + 288] = stor[('name', 'stakerAmounts', 252) + idx + arg1].field_0
        require idx < mem[224]
        mem[0] = stor[('name', 'staker', 251) + idx + arg1].field_0
        mem[32] = 263
        _1050 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1050] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_0
        mem[_1050 + 32] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256
        mem[_1050 + 64] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_512
        mem[_1050 + 96] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768
        mem[_1050 + 128] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024
        mem[_1050 + 160] = stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280
        mem[_1050 + 192] = bool(stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1536)
        if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_768:
            _1179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1179] = 30
            mem[_1179 + 32] = 'SafeMath: subtraction overflow'
            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280:
                _1227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1227 + 68] = mem[idx + _1179 + 32]
                    idx = idx + 32
                    continue 
                mem[_1227 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1227 + -mem[64] + 100
            if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                _1403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1403] = 26
                mem[_1403 + 32] = 'SafeMath: division by zero'
                require idx < mem[(64 * staker.length - arg1) + 288]
                mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
            else:
                if (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1531 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1531] = 26
                mem[_1531 + 32] = 'SafeMath: division by zero'
                require idx < mem[(64 * staker.length - arg1) + 288]
                mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1280 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
        else:
            _1180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1180] = 30
            mem[_1180 + 32] = 'SafeMath: subtraction overflow'
            if stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 > stor259:
                _1228 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1228 + 68] = mem[idx + _1180 + 32]
                    idx = idx + 32
                    continue 
                mem[_1228 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1228 + -mem[64] + 100
            if not stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256:
                _1404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1404] = 26
                mem[_1404 + 32] = 'SafeMath: division by zero'
                require idx < mem[(64 * staker.length - arg1) + 288]
                mem[(32 * idx) + (64 * staker.length - arg1) + 320] = 0
            else:
                if (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256 != stor259 - stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1532 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1532] = 26
                mem[_1532 + 32] = 'SafeMath: division by zero'
                require idx < mem[(64 * staker.length - arg1) + 288]
                mem[(32 * idx) + (64 * staker.length - arg1) + 320] = (stor259 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) - (stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_1024 * stor263[stor[('name', 'stor251', 251) + idx + arg1].field_0].field_256) / 10^18
        idx = idx + 1
        continue 
    _847 = mem[64]
    mem[mem[64]] = 96
    _881 = mem[224]
    mem[mem[64] + 96] = mem[224]
    idx = 0
    s = 256
    t = mem[64] + 128
    while idx < _881:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_847 + 32] = (32 * _881) + 128
    _1664 = mem[(32 * staker.length - arg1) + 256]
    mem[_847 + (32 * _881) + 128] = mem[(32 * staker.length - arg1) + 256]
    mem[_847 + (32 * _881) + 160 len 32 * _1664] = mem[(32 * staker.length - arg1) + 288 len 32 * _1664]
    mem[_847 + 64] = (32 * _881) + (32 * _1664) + 160
    _1832 = mem[(64 * staker.length - arg1) + 288]
    mem[_847 + (32 * _881) + (32 * _1664) + 160] = mem[(64 * staker.length - arg1) + 288]
    mem[_847 + (32 * _881) + (32 * _1664) + 192 len 32 * _1832] = mem[(64 * staker.length - arg1) + 320 len 32 * _1832]
    return memory
      from mem[64]
       len _847 + (32 * _881) + (32 * _1664) + (32 * _1832) + -mem[64] + 192
}



}
