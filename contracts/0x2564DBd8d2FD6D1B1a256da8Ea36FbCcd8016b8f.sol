contract main {




// =====================  Runtime code  =====================


#
#  - sub_141bb076(?)
#
const bnbBalance = eth.balance(this.address)


address _owner;
address tokenAddr;
uint256 pool;
uint256 poolBalance;
uint256 tokenDecimal;
uint256 totalStaked;
uint256 poolNumber;
uint256 poolRewardPercent;
uint256 sub_94e5bb6d;
uint256 sub_7dbebb2a;
uint256 sub_9328beee;
uint256 sub_33c47f2b;
array of struct sub_02ac512f;
mapping of struct users;
mapping of uint256 sub_14c9ebf5;
mapping of uint8 stor15;
mapping of uint256 balances;

function sub_02ac512f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_02ac512f.length
    return sub_02ac512f[arg1].field_0
}

function Pool() {
    return pool
}

function registeredUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function sub_14c9ebf5(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_14c9ebf5[arg1]
}

function PoolBalance() {
    return poolBalance
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function sub_33c47f2b(?) {
    return sub_33c47f2b
}

function tokenDecimal() {
    return tokenDecimal
}

function tokenAddr() {
    return tokenAddr
}

function sub_7dbebb2a(?) {
    return sub_7dbebb2a
}

function totalStaked() {
    return totalStaked
}

function poolNumber() {
    return poolNumber
}

function owner() {
    return _owner
}

function sub_9328beee(?) {
    return sub_9328beee
}

function sub_94e5bb6d(?) {
    return sub_94e5bb6d
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280
}

function _owner() {
    return _owner
}

function poolRewardPercent() {
    return poolRewardPercent
}

function _fallback() payable {
    revert
}

function updatePoolCapacity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pool = arg1
    return 1
}

function maturityDate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if users[address(arg1)].field_256 > -sub_7dbebb2a - 1:
        revert with 'NH{q', 17
    return (users[address(arg1)].field_256 + sub_7dbebb2a)
}

function tokenBalance() {
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function maxPayoutOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and poolRewardPercent > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * poolRewardPercent / 100 / 360 and sub_94e5bb6d > -1 / arg1 * poolRewardPercent / 100 / 360:
        revert with 'NH{q', 17
    return (arg1 * poolRewardPercent / 100 / 360 * sub_94e5bb6d)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function sub_90aa1bde(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_5483961b(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolNumber = arg1
    poolRewardPercent = arg2
    sub_94e5bb6d = arg3
    sub_7dbebb2a = arg4
    sub_9328beee = arg5
    sub_33c47f2b = arg6
}

function stakeTimeRemaining(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if users[address(arg1)].field_256 <= 0:
        return 0
    if users[address(arg1)].field_256 > -sub_7dbebb2a - 1:
        revert with 'NH{q', 17
    if users[address(arg1)].field_256 + sub_7dbebb2a <= block.timestamp:
        return 0
    if users[address(arg1)].field_256 + sub_7dbebb2a < block.timestamp:
        revert with 'NH{q', 17
    return (users[address(arg1)].field_256 + sub_7dbebb2a - block.timestamp)
}

function sub_438473cd(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function getList() {
    mem[64] = (32 * sub_02ac512f.length) + 128
    mem[96] = sub_02ac512f.length
    if not sub_02ac512f.length:
        mem[(32 * sub_02ac512f.length) + 128] = 32
        mem[(32 * sub_02ac512f.length) + 160] = sub_02ac512f.length
        idx = 0
        s = 128
        t = (32 * sub_02ac512f.length) + 192
        while idx < sub_02ac512f.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_02ac512f.length) + 128
           len (96 * sub_02ac512f.length) + 64
    mem[128] = address(sub_02ac512f.field_0)
    idx = 128
    s = 0
    while (32 * sub_02ac512f.length) + 96 > idx:
        mem[idx + 32] = sub_02ac512f[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_02ac512f.length) + 128] = 32
    mem[(32 * sub_02ac512f.length) + 160] = sub_02ac512f.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_02ac512f.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_02ac512f.length) + -mem[64] + 192
}

function sub_6d26538f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall this.address.0x8959af3c with:
            gas gas_remaining wei
           args users[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < users[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not sub_33c47f2b:
        revert with 'NH{q', 18
    if users[address(arg1)].field_0 and poolRewardPercent > -1 / users[address(arg1)].field_0:
        revert with 'NH{q', 17
    if users[address(arg1)].field_0 * poolRewardPercent / 100 / 360 and block.timestamp - users[address(arg1)].field_256 / sub_33c47f2b > -1 / users[address(arg1)].field_0 * poolRewardPercent / 100 / 360:
        revert with 'NH{q', 17
    if users[address(arg1)].field_0 <= 0:
        return 0
    if users[address(arg1)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(arg1)].field_256 / sub_33c47f2b <= ext_call.return_data[0]:
        return (users[address(arg1)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(arg1)].field_256 / sub_33c47f2b)
    return ext_call.return_data[0]
}

function PoolStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Token Balance of user is less'
    call tokenAddr.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'BEP20: Amount Transfer Failed Check id Amount is Approved'
    if poolBalance > -arg1 - 1:
        revert with 'NH{q', 17
    poolBalance += arg1
    if totalStaked > -arg1 - 1:
        revert with 'NH{q', 17
    totalStaked += arg1
    if not tokenDecimal:
        if pool and 1 > -1 / pool:
            revert with 'NH{q', 17
        if poolBalance > pool:
            revert with 0, 'Pool is Full, Enter Amount Equal to Pool Holding or remaining pool balance'
    else:
        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
            if 10^tokenDecimal > -1:
                revert with 'NH{q', 17
            if pool and 10^tokenDecimal > -1 / pool:
                revert with 'NH{q', 17
            if poolBalance > pool * 10^tokenDecimal:
                revert with 0, 'Pool is Full, Enter Amount Equal to Pool Holding or remaining pool balance'
        else:
            s = 10
            t = 1
            idx = tokenDecimal
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if pool and t * s > -1 / pool:
                revert with 'NH{q', 17
            if poolBalance > pool * t * s:
                revert with 0, 'Pool is Full, Enter Amount Equal to Pool Holding or remaining pool balance'
    if users[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_0 += arg1
    if users[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_512 += arg1
    users[address(msg.sender)].field_256 = block.timestamp % 1099511627776
    if not stor15[address(msg.sender)]:
        sub_02ac512f.length++
        sub_02ac512f[sub_02ac512f.length].field_0 = msg.sender
        stor15[address(msg.sender)] = 1
    emit PoolTransfer(msg.sender, arg1);
    return 1
}

function claimPool() {
    if users[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no deposit for this address in Pool'
    staticcall this.address.0x8959af3c with:
            gas gas_remaining wei
           args users[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < users[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not sub_33c47f2b:
        revert with 'NH{q', 18
    if users[address(msg.sender)].field_0 and poolRewardPercent > -1 / users[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 and block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b > -1 / users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_256 > -sub_7dbebb2a - 1:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_0 <= 0:
        if block.timestamp >= users[address(msg.sender)].field_256 + sub_7dbebb2a:
            call tokenAddr.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, users[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Cannot Transfer Principal Funds'
            call tokenAddr.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Cannot Transfer Reward Funds'
            if users[address(msg.sender)].field_1024 > -1:
                revert with 'NH{q', 17
            emit RewardClaimed(msg.sender, 0);
            if poolBalance < users[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            poolBalance -= users[address(msg.sender)].field_0
            users[address(msg.sender)].field_0 = 0
            users[address(msg.sender)].field_256 = 0
            if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 - 1:
                revert with 'NH{q', 17
            users[address(msg.sender)].field_768 += users[address(msg.sender)].field_0
            emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0);
        else:
            if not users[address(msg.sender)].field_1280:
                users[address(msg.sender)].field_1280 = block.timestamp
            else:
                if users[address(msg.sender)].field_1280 > -sub_9328beee - 1:
                    revert with 'NH{q', 17
                if block.timestamp <= users[address(msg.sender)].field_1280 + sub_9328beee:
                    if users[address(msg.sender)].field_1280 > -sub_9328beee - 1:
                        revert with 'NH{q', 17
                    if block.timestamp <= users[address(msg.sender)].field_1280 + sub_9328beee:
                        revert with 0, 'Cooling Period not reached'
                else:
                    if users[address(msg.sender)].field_256 > 1099509813375:
                        revert with 'NH{q', 17
                    if block.timestamp >= users[address(msg.sender)].field_256 + (504 * 24 * 3600) % 1099511627776:
                        if users[address(msg.sender)].field_0 and sub_14c9ebf5[1] > -1 / users[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18:
                            revert with 'NH{q', 17
                        call tokenAddr.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Cannot Transfer Principal Funds'
                        call tokenAddr.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Cannot Transfer reward Funds'
                        call tokenAddr.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Cannot Transfer reward Funds'
                        if users[address(msg.sender)].field_1024 > -1:
                            revert with 'NH{q', 17
                        emit RewardClaimed(msg.sender, 0);
                        if users[address(msg.sender)].field_0 > -1:
                            revert with 'NH{q', 17
                        if poolBalance < users[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        poolBalance -= users[address(msg.sender)].field_0
                        users[address(msg.sender)].field_0 = 0
                        users[address(msg.sender)].field_1280 = 0
                        users[address(msg.sender)].field_256 = 0
                        if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18)
                        emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18));
                    else:
                        if users[address(msg.sender)].field_256 > 1099510418175:
                            revert with 'NH{q', 17
                        if block.timestamp >= users[address(msg.sender)].field_256 + (336 * 24 * 3600) % 1099511627776:
                            if users[address(msg.sender)].field_0 and sub_14c9ebf5[2] > -1 / users[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18:
                                revert with 'NH{q', 17
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer Principal Funds'
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer reward Funds'
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer reward Funds'
                            if users[address(msg.sender)].field_1024 > -1:
                                revert with 'NH{q', 17
                            emit RewardClaimed(msg.sender, 0);
                            if users[address(msg.sender)].field_0 > -1:
                                revert with 'NH{q', 17
                            if poolBalance < users[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            poolBalance -= users[address(msg.sender)].field_0
                            users[address(msg.sender)].field_0 = 0
                            users[address(msg.sender)].field_1280 = 0
                            users[address(msg.sender)].field_256 = 0
                            if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18) - 1:
                                revert with 'NH{q', 17
                            users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18)
                            emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18));
                        else:
                            if users[address(msg.sender)].field_256 > 1099511022975:
                                revert with 'NH{q', 17
                            if block.timestamp < users[address(msg.sender)].field_256 + (168 * 24 * 3600) % 1099511627776:
                                if users[address(msg.sender)].field_0 and sub_14c9ebf5[4] > -1 / users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18:
                                    revert with 'NH{q', 17
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer Principal Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                if users[address(msg.sender)].field_1024 > -1:
                                    revert with 'NH{q', 17
                                emit RewardClaimed(msg.sender, 0);
                                if users[address(msg.sender)].field_0 > -1:
                                    revert with 'NH{q', 17
                                if poolBalance < users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                poolBalance -= users[address(msg.sender)].field_0
                                users[address(msg.sender)].field_0 = 0
                                users[address(msg.sender)].field_1280 = 0
                                users[address(msg.sender)].field_256 = 0
                                if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18)
                                emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18));
                            else:
                                if users[address(msg.sender)].field_0 and sub_14c9ebf5[3] > -1 / users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18:
                                    revert with 'NH{q', 17
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer Principal Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                if users[address(msg.sender)].field_1024 > -1:
                                    revert with 'NH{q', 17
                                emit RewardClaimed(msg.sender, 0);
                                if users[address(msg.sender)].field_0 > -1:
                                    revert with 'NH{q', 17
                                if poolBalance < users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                poolBalance -= users[address(msg.sender)].field_0
                                users[address(msg.sender)].field_0 = 0
                                users[address(msg.sender)].field_1280 = 0
                                users[address(msg.sender)].field_256 = 0
                                if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18)
                                emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18));
    else:
        if users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b <= ext_call.return_data[0]:
            if block.timestamp >= users[address(msg.sender)].field_256 + sub_7dbebb2a:
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, users[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Cannot Transfer Principal Funds'
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Cannot Transfer Reward Funds'
                if users[address(msg.sender)].field_1024 > (-1 * users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b) - 1:
                    revert with 'NH{q', 17
                users[address(msg.sender)].field_1024 += users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                emit RewardClaimed(msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b);
                if poolBalance < users[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                poolBalance -= users[address(msg.sender)].field_0
                users[address(msg.sender)].field_0 = 0
                users[address(msg.sender)].field_256 = 0
                if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 - 1:
                    revert with 'NH{q', 17
                users[address(msg.sender)].field_768 += users[address(msg.sender)].field_0
                emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0);
            else:
                if not users[address(msg.sender)].field_1280:
                    users[address(msg.sender)].field_1280 = block.timestamp
                else:
                    if users[address(msg.sender)].field_1280 > -sub_9328beee - 1:
                        revert with 'NH{q', 17
                    if block.timestamp <= users[address(msg.sender)].field_1280 + sub_9328beee:
                        if users[address(msg.sender)].field_1280 > -sub_9328beee - 1:
                            revert with 'NH{q', 17
                        if block.timestamp <= users[address(msg.sender)].field_1280 + sub_9328beee:
                            revert with 0, 'Cooling Period not reached'
                    else:
                        if users[address(msg.sender)].field_256 > 1099509813375:
                            revert with 'NH{q', 17
                        if block.timestamp >= users[address(msg.sender)].field_256 + (504 * 24 * 3600) % 1099511627776:
                            if users[address(msg.sender)].field_0 and sub_14c9ebf5[1] > -1 / users[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18:
                                revert with 'NH{q', 17
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer Principal Funds'
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer reward Funds'
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer reward Funds'
                            if users[address(msg.sender)].field_1024 > (-1 * users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b) - 1:
                                revert with 'NH{q', 17
                            users[address(msg.sender)].field_1024 += users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                            emit RewardClaimed(msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b);
                            if users[address(msg.sender)].field_0 > -1:
                                revert with 'NH{q', 17
                            if poolBalance < users[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            poolBalance -= users[address(msg.sender)].field_0
                            users[address(msg.sender)].field_0 = 0
                            users[address(msg.sender)].field_1280 = 0
                            users[address(msg.sender)].field_256 = 0
                            if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18) - 1:
                                revert with 'NH{q', 17
                            users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18)
                            emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18));
                        else:
                            if users[address(msg.sender)].field_256 > 1099510418175:
                                revert with 'NH{q', 17
                            if block.timestamp >= users[address(msg.sender)].field_256 + (336 * 24 * 3600) % 1099511627776:
                                if users[address(msg.sender)].field_0 and sub_14c9ebf5[2] > -1 / users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18:
                                    revert with 'NH{q', 17
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer Principal Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                if users[address(msg.sender)].field_1024 > (-1 * users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b) - 1:
                                    revert with 'NH{q', 17
                                users[address(msg.sender)].field_1024 += users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                                emit RewardClaimed(msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b);
                                if users[address(msg.sender)].field_0 > -1:
                                    revert with 'NH{q', 17
                                if poolBalance < users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                poolBalance -= users[address(msg.sender)].field_0
                                users[address(msg.sender)].field_0 = 0
                                users[address(msg.sender)].field_1280 = 0
                                users[address(msg.sender)].field_256 = 0
                                if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18)
                                emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18));
                            else:
                                if users[address(msg.sender)].field_256 > 1099511022975:
                                    revert with 'NH{q', 17
                                if block.timestamp < users[address(msg.sender)].field_256 + (168 * 24 * 3600) % 1099511627776:
                                    if users[address(msg.sender)].field_0 and sub_14c9ebf5[4] > -1 / users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18:
                                        revert with 'NH{q', 17
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer Principal Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    if users[address(msg.sender)].field_1024 > (-1 * users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b) - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_1024 += users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                                    emit RewardClaimed(msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b);
                                    if users[address(msg.sender)].field_0 > -1:
                                        revert with 'NH{q', 17
                                    if poolBalance < users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    poolBalance -= users[address(msg.sender)].field_0
                                    users[address(msg.sender)].field_0 = 0
                                    users[address(msg.sender)].field_1280 = 0
                                    users[address(msg.sender)].field_256 = 0
                                    if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18)
                                    emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18));
                                else:
                                    if users[address(msg.sender)].field_0 and sub_14c9ebf5[3] > -1 / users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18:
                                        revert with 'NH{q', 17
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer Principal Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    if users[address(msg.sender)].field_1024 > (-1 * users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b) - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_1024 += users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b
                                    emit RewardClaimed(msg.sender, users[address(msg.sender)].field_0 * poolRewardPercent / 100 / 360 * block.timestamp - users[address(msg.sender)].field_256 / sub_33c47f2b);
                                    if users[address(msg.sender)].field_0 > -1:
                                        revert with 'NH{q', 17
                                    if poolBalance < users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    poolBalance -= users[address(msg.sender)].field_0
                                    users[address(msg.sender)].field_0 = 0
                                    users[address(msg.sender)].field_1280 = 0
                                    users[address(msg.sender)].field_256 = 0
                                    if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18)
                                    emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18));
        else:
            if block.timestamp >= users[address(msg.sender)].field_256 + sub_7dbebb2a:
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, users[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Cannot Transfer Principal Funds'
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Cannot Transfer Reward Funds'
                if users[address(msg.sender)].field_1024 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                users[address(msg.sender)].field_1024 += ext_call.return_data[0]
                emit RewardClaimed(msg.sender, ext_call.return_data[0]);
                if poolBalance < users[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                poolBalance -= users[address(msg.sender)].field_0
                users[address(msg.sender)].field_0 = 0
                users[address(msg.sender)].field_256 = 0
                if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 - 1:
                    revert with 'NH{q', 17
                users[address(msg.sender)].field_768 += users[address(msg.sender)].field_0
                emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0);
            else:
                if not users[address(msg.sender)].field_1280:
                    users[address(msg.sender)].field_1280 = block.timestamp
                else:
                    if users[address(msg.sender)].field_1280 > -sub_9328beee - 1:
                        revert with 'NH{q', 17
                    if block.timestamp <= users[address(msg.sender)].field_1280 + sub_9328beee:
                        if users[address(msg.sender)].field_1280 > -sub_9328beee - 1:
                            revert with 'NH{q', 17
                        if block.timestamp <= users[address(msg.sender)].field_1280 + sub_9328beee:
                            revert with 0, 'Cooling Period not reached'
                    else:
                        if users[address(msg.sender)].field_256 > 1099509813375:
                            revert with 'NH{q', 17
                        if block.timestamp >= users[address(msg.sender)].field_256 + (504 * 24 * 3600) % 1099511627776:
                            if users[address(msg.sender)].field_0 and sub_14c9ebf5[1] > -1 / users[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18:
                                revert with 'NH{q', 17
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer Principal Funds'
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer reward Funds'
                            call tokenAddr.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Cannot Transfer reward Funds'
                            if users[address(msg.sender)].field_1024 > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            users[address(msg.sender)].field_1024 += ext_call.return_data[0]
                            emit RewardClaimed(msg.sender, ext_call.return_data[0]);
                            if users[address(msg.sender)].field_0 > -1:
                                revert with 'NH{q', 17
                            if poolBalance < users[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            poolBalance -= users[address(msg.sender)].field_0
                            users[address(msg.sender)].field_0 = 0
                            users[address(msg.sender)].field_1280 = 0
                            users[address(msg.sender)].field_256 = 0
                            if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18) - 1:
                                revert with 'NH{q', 17
                            users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18)
                            emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[1] / 100 * 10^18));
                        else:
                            if users[address(msg.sender)].field_256 > 1099510418175:
                                revert with 'NH{q', 17
                            if block.timestamp >= users[address(msg.sender)].field_256 + (336 * 24 * 3600) % 1099511627776:
                                if users[address(msg.sender)].field_0 and sub_14c9ebf5[2] > -1 / users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18:
                                    revert with 'NH{q', 17
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer Principal Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                call tokenAddr.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Cannot Transfer reward Funds'
                                if users[address(msg.sender)].field_1024 > -ext_call.return_data[0] - 1:
                                    revert with 'NH{q', 17
                                users[address(msg.sender)].field_1024 += ext_call.return_data[0]
                                emit RewardClaimed(msg.sender, ext_call.return_data[0]);
                                if users[address(msg.sender)].field_0 > -1:
                                    revert with 'NH{q', 17
                                if poolBalance < users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                poolBalance -= users[address(msg.sender)].field_0
                                users[address(msg.sender)].field_0 = 0
                                users[address(msg.sender)].field_1280 = 0
                                users[address(msg.sender)].field_256 = 0
                                if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18)
                                emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[2] / 100 * 10^18));
                            else:
                                if users[address(msg.sender)].field_256 > 1099511022975:
                                    revert with 'NH{q', 17
                                if block.timestamp < users[address(msg.sender)].field_256 + (168 * 24 * 3600) % 1099511627776:
                                    if users[address(msg.sender)].field_0 and sub_14c9ebf5[4] > -1 / users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18:
                                        revert with 'NH{q', 17
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer Principal Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    if users[address(msg.sender)].field_1024 > -ext_call.return_data[0] - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_1024 += ext_call.return_data[0]
                                    emit RewardClaimed(msg.sender, ext_call.return_data[0]);
                                    if users[address(msg.sender)].field_0 > -1:
                                        revert with 'NH{q', 17
                                    if poolBalance < users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    poolBalance -= users[address(msg.sender)].field_0
                                    users[address(msg.sender)].field_0 = 0
                                    users[address(msg.sender)].field_1280 = 0
                                    users[address(msg.sender)].field_256 = 0
                                    if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18)
                                    emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[4] / 100 * 10^18));
                                else:
                                    if users[address(msg.sender)].field_0 and sub_14c9ebf5[3] > -1 / users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18:
                                        revert with 'NH{q', 17
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer Principal Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    call tokenAddr.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _owner, users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Cannot Transfer reward Funds'
                                    if users[address(msg.sender)].field_1024 > -ext_call.return_data[0] - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_1024 += ext_call.return_data[0]
                                    emit RewardClaimed(msg.sender, ext_call.return_data[0]);
                                    if users[address(msg.sender)].field_0 > -1:
                                        revert with 'NH{q', 17
                                    if poolBalance < users[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    poolBalance -= users[address(msg.sender)].field_0
                                    users[address(msg.sender)].field_0 = 0
                                    users[address(msg.sender)].field_1280 = 0
                                    users[address(msg.sender)].field_256 = 0
                                    if users[address(msg.sender)].field_768 > -users[address(msg.sender)].field_0 + (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    users[address(msg.sender)].field_768 = users[address(msg.sender)].field_768 + users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18)
                                    emit TokenTransfer(msg.sender, users[address(msg.sender)].field_0 - (users[address(msg.sender)].field_0 * sub_14c9ebf5[3] / 100 * 10^18));
    return 1
}



}
