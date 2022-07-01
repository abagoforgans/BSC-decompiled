contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2, uint256 arg3)
#
address stor0;
address implementationAddress;
mapping of struct users;
array of uint256 stor11;
array of uint256 stor12;
uint256 pool_last_draw;
uint256 pool_cycle;
uint256 pool_balance;
uint256 sub_ce1aa76b;
uint256 sub_c4a237e0;
uint256 token_price;
mapping of uint256 pool_users_refs_deposits_sum;
address owner;
mapping of address pool_top;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdraw;
uint256 sub_0c12a144;
address sub_206f6296Address;
address sub_8f7b3d5aAddress;
address sub_1eeb5cfeAddress;
address sub_fdcbc4dbAddress;
address token1Address;
address token2Address;
address controllerAddress;

function sub_0c12a144(?) {
    return sub_0c12a144
}

function pool_balance() {
    return pool_balance
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_0, 
           uint256(users[address(arg1)].field_2048),
           uint256(users[address(arg1)].field_1280),
           uint256(users[address(arg1)].field_512),
           uint256(users[address(arg1)].field_768),
           uint256(users[address(arg1)].field_1024)
}

function sub_1eeb5cfe(?) {
    return sub_1eeb5cfeAddress
}

function sub_206f6296(?) {
    return sub_206f6296Address
}

function token2() {
    return token2Address
}

function implementation() {
    return implementationAddress
}

function pool_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor12.length
    return pool_bonuses[uint8(arg1)]
}

function pool_users_refs_deposits_sum(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return pool_users_refs_deposits_sum[arg1][arg2]
}

function userInfoTotals(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(users[address(arg1)].field_256), 
           uint256(users[address(arg1)].field_2304),
           uint256(users[address(arg1)].field_2560),
           uint256(users[address(arg1)].field_3072)
}

function token_price() {
    return token_price
}

function owner() {
    return owner
}

function sub_8f7b3d5a(?) {
    return sub_8f7b3d5aAddress
}

function pool_cycle() {
    return pool_cycle
}

function total_withdraw() {
    return total_withdraw
}

function pool_last_draw() {
    return pool_last_draw
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, 
           uint256(users[arg1].field_256),
           uint256(users[arg1].field_512),
           uint256(users[arg1].field_768),
           uint256(users[arg1].field_1024),
           uint256(users[arg1].field_1280),
           uint256(users[arg1].field_1536),
           uint256(users[arg1].field_1792),
           uint256(users[arg1].field_2048),
           uint256(users[arg1].field_2304),
           uint256(users[arg1].field_2560),
           uint256(users[arg1].field_2816),
           uint256(users[arg1].field_3072),
           uint256(users[arg1].field_3328)
}

function ref_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor11.length
    return ref_bonuses[uint8(arg1)]
}

function sub_c4a237e0(?) {
    return sub_c4a237e0
}

function pool_top(uint8 arg1) {
    require calldata.size - 4 >= 32
    return pool_top[arg1]
}

function sub_ce1aa76b(?) {
    return sub_ce1aa76b
}

function token1() {
    return token1Address
}

function total_deposited() {
    return total_deposited
}

function total_users() {
    return total_users
}

function controller() {
    return controllerAddress
}

function sub_fdcbc4db(?) {
    return sub_fdcbc4dbAddress
}

function _fallback() payable {
    revert
}

function maxPayoutOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (2 * arg1)
}

function sub_4d413e7d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor0 = arg1
}

function sub_9372d2dd(?) {
    if pool_last_draw + (24 * 3600) < block.timestamp:
        return 0
    return (pool_last_draw + -block.timestamp + (24 * 3600))
}

function contractInfo() {
    return total_users, 
           total_deposited,
           total_withdraw,
           pool_last_draw,
           pool_balance,
           pool_users_refs_deposits_sum[stor14][stor20[0]]
}

function sub_2544727b(?) {
    require calldata.size - 4 >= 32
    if uint256(users[address(arg1)].field_2048) <= 0:
        return 0
    if uint256(users[address(arg1)].field_3328) + sub_c4a237e0 < block.timestamp:
        return 0
    if block.timestamp > uint256(users[address(arg1)].field_3328) + sub_c4a237e0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (uint256(users[address(arg1)].field_3328) + sub_c4a237e0 - block.timestamp)
}

function sub_d713f106(?) {
    require calldata.size - 4 >= 32
    if uint256(users[address(arg1)].field_2048) <= 0:
        return 0
    if uint256(users[address(arg1)].field_3328) + sub_ce1aa76b >= block.timestamp:
        if block.timestamp > uint256(users[address(arg1)].field_3328) + sub_ce1aa76b:
            revert with 0, 'SafeMath: subtraction overflow'
        return (uint256(users[address(arg1)].field_3328) + sub_ce1aa76b - block.timestamp)
    if uint256(users[address(arg1)].field_3328) > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require sub_ce1aa76b
    if block.timestamp - uint256(users[address(arg1)].field_3328) % sub_ce1aa76b > sub_ce1aa76b:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_ce1aa76b - (block.timestamp - uint256(users[address(arg1)].field_3328) % sub_ce1aa76b))
}

function poolTopInfo() {
    mem[96 len 128] = code.data[18168 len 128]
    mem[64] = 352
    mem[224 len 128] = code.data[18168 len 128]
    idx = 0
    while uint8(idx) < stor12.length:
        if not pool_top[idx << 248]:
            idx = 0
            while idx < 128:
                mem[idx + 352] = mem[idx + 96]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 128:
                mem[idx + 480] = mem[idx + 224]
                idx = idx + 32
                continue 
            return memory
              from 352
               len 256
        require uint8(idx) < 4
        mem[(32 * uint8(idx)) + 96] = pool_top[idx << 248]
        mem[0] = pool_top[idx << 248]
        mem[32] = sha3(pool_cycle, 19)
        mem[(32 * uint8(idx)) + 224] = pool_users_refs_deposits_sum[stor14][stor20[idx << 248]]
        idx = idx + 1
        continue 
    return mem[96 len 128], mem[224 len 128]
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x8959af3c with:
            gas gas_remaining wei
           args uint256(users[address(arg1)].field_1280)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(users[address(arg1)].field_512) >= ext_call.return_data[0]:
        if uint256(users[address(arg1)].field_1536) >= ext_call.return_data[0]:
            return 0, ext_call.return_data[0], 0
        require sub_ce1aa76b
        if uint256(users[address(arg1)].field_1280) * block.timestamp - uint256(users[address(arg1)].field_2048) / sub_ce1aa76b / 300 <= ext_call.return_data[0]:
            return (uint256(users[address(arg1)].field_1280) * block.timestamp - uint256(users[address(arg1)].field_2048) / sub_ce1aa76b / 300) - uint256(users[address(arg1)].field_1536), 
                   ext_call.return_data[0],
                   0
        return ext_call.return_data[0] - uint256(users[address(arg1)].field_1536), ext_call.return_data[0], 0
    if uint256(users[address(arg1)].field_1536) >= ext_call.return_data[0]:
        return 0, ext_call.return_data[0], ext_call.return_data[0] - uint256(users[address(arg1)].field_512)
    require sub_ce1aa76b
    if uint256(users[address(arg1)].field_1280) * block.timestamp - uint256(users[address(arg1)].field_2048) / sub_ce1aa76b / 300 <= ext_call.return_data[0]:
        return (uint256(users[address(arg1)].field_1280) * block.timestamp - uint256(users[address(arg1)].field_2048) / sub_ce1aa76b / 300) - uint256(users[address(arg1)].field_1536), 
               ext_call.return_data[0],
               ext_call.return_data[0] - uint256(users[address(arg1)].field_512)
    return ext_call.return_data[0] - uint256(users[address(arg1)].field_1536), 
           ext_call.return_data[0],
           ext_call.return_data[0] - uint256(users[address(arg1)].field_512)
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(this.address)
    staticcall this.address.0x6da61d1e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
        revert with 0, 'Full payouts'
    if ext_call.return_data[0] <= 0:
        if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
            uint256(users[address(msg.sender)].field_768) = 0
            if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                uint256(users[address(msg.sender)].field_1024) = 0
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Zero payout'
                uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                total_withdraw += ext_call.return_data[0]
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(ext_call.return_data[0], msg.sender);
            else:
                if uint256(users[address(msg.sender)].field_1024) <= 0:
                    uint256(users[address(msg.sender)].field_1024) = 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                        if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                        total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                        call msg.sender with:
                           value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                    else:
                        uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                        uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                        if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        call msg.sender with:
                           value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
        else:
            if uint256(users[address(msg.sender)].field_768) <= 0:
                uint256(users[address(msg.sender)].field_768) = 0
                if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                    uint256(users[address(msg.sender)].field_1024) = 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if uint256(users[address(msg.sender)].field_1024) <= 0:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                            if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                            call msg.sender with:
                               value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                        else:
                            uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                            uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                            if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            call msg.sender with:
                               value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
            else:
                if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) <= ext_call.return_data[32]:
                    uint256(users[address(msg.sender)].field_768) = 0
                    uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_768)
                    if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                        total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                        call msg.sender with:
                           value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)), msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_1024) <= 0:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                            call msg.sender with:
                               value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)
                                call msg.sender with:
                                   value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                            else:
                                uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                call msg.sender with:
                                   value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                else:
                    uint256(users[address(msg.sender)].field_768) = uint256(users[address(msg.sender)].field_768) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                    uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                    if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        call msg.sender with:
                           value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_1024) <= 0:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            call msg.sender with:
                               value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                                call msg.sender with:
                                   value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                            else:
                                uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                total_withdraw = total_withdraw + ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                call msg.sender with:
                                   value ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))), msg.sender);
    else:
        if uint256(users[address(msg.sender)].field_512) + ext_call.return_data[0] <= ext_call.return_data[32]:
            uint256(users[address(msg.sender)].field_1536) += ext_call.return_data[0]
            uint256(users[address(msg.sender)].field_512) += ext_call.return_data[0]
            uint256(users[address(msg.sender)].field_3328) = block.timestamp
            mem[0] = msg.sender
            mem[32] = 10
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while uint8(idx) < stor11.length:
                mem[0] = 11
                if not address(s):
                    sub_0c12a144 += ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100
                    idx = idx + 1
                    s = s
                    continue 
                if address(s) == owner:
                    sub_0c12a144 += ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100
                else:
                    if uint256(users[address(s)].field_256) < uint8(idx + 1):
                        sub_0c12a144 += ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100
                    else:
                        if uint256(users[address(s)].field_2816) < uint64(10^18 * uint8(idx + 1)):
                            sub_0c12a144 += ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100
                        else:
                            if uint256(users[address(msg.sender)].field_512) + (ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100) <= ext_call.return_data[32]:
                                if ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100 > 0:
                                    mem[32] = 10
                                    uint256(users[address(s)].field_1024) += ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100
                                    mem[mem[64]] = ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100
                                    mem[mem[64] + 32] = uint8(idx + 1)
                                    mem[mem[64] + 64] = uint64(10^18 * uint8(idx + 1))
                                    emit 0x1be6ae4c: ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100, idx + 1 << 248, uint64(10^18 * uint8(idx + 1)), address(s), msg.sender
                            else:
                                if ext_call.return_data[32] - (ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100) > 0:
                                    mem[32] = 10
                                    uint256(users[address(s)].field_1024) = uint256(users[address(s)].field_1024) + ext_call.return_data[32] - (ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100)
                                    mem[mem[64]] = ext_call.return_data[32] - (ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100)
                                    mem[mem[64] + 32] = uint8(idx + 1)
                                    mem[mem[64] + 64] = uint64(10^18 * uint8(idx + 1))
                                    emit 0x1be6ae4c: ext_call.return_data[32] - (ext_call.return_data[0] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 100), idx + 1 << 248, uint64(10^18 * uint8(idx + 1)), address(s), msg.sender
                mem[0] = address(s)
                mem[32] = 10
                idx = idx + 1
                s = users[address(s)].field_0
                continue 
            if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                uint256(users[address(msg.sender)].field_768) = 0
                if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                    uint256(users[address(msg.sender)].field_1024) = 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if uint256(users[address(msg.sender)].field_1024) <= 0:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                            if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                            call msg.sender with:
                               value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                        else:
                            uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                            uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                            if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            call msg.sender with:
                               value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
            else:
                if uint256(users[address(msg.sender)].field_768) <= 0:
                    uint256(users[address(msg.sender)].field_768) = 0
                    if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_1024) <= 0:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) += ext_call.return_data[0]
                            total_withdraw += ext_call.return_data[0]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(ext_call.return_data[0], msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)
                                call msg.sender with:
                                   value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                            else:
                                uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                call msg.sender with:
                                   value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                else:
                    if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) <= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_768) = 0
                        uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_768)
                        if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                            call msg.sender with:
                               value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_1024) <= 0:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)
                                call msg.sender with:
                                   value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768)), msg.sender);
                            else:
                                if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                    uint256(users[address(msg.sender)].field_1024) = 0
                                    uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                    if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)
                                    total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)
                                    call msg.sender with:
                                       value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                                else:
                                    uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                    uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                    total_withdraw = total_withdraw + ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                    call msg.sender with:
                                       value ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw((ext_call.return_data[0] + uint256(users[address(msg.sender)].field_768) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                    else:
                        uint256(users[address(msg.sender)].field_768) = uint256(users[address(msg.sender)].field_768) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                        uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                        if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            call msg.sender with:
                               value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_1024) <= 0:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                                call msg.sender with:
                                   value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                            else:
                                if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                    uint256(users[address(msg.sender)].field_1024) = 0
                                    uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                    if ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                                    total_withdraw = total_withdraw + ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                                    call msg.sender with:
                                       value ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw((ext_call.return_data[0] + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                                else:
                                    uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                    uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                    total_withdraw = total_withdraw + ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                    call msg.sender with:
                                       value ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw((ext_call.return_data[0] + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))), msg.sender);
        else:
            uint256(users[address(msg.sender)].field_1536) = uint256(users[address(msg.sender)].field_1536) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
            uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
            uint256(users[address(msg.sender)].field_3328) = block.timestamp
            mem[0] = msg.sender
            mem[32] = 10
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while uint8(idx) < stor11.length:
                mem[0] = 11
                if not address(s):
                    sub_0c12a144 += (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100
                    idx = idx + 1
                    s = s
                    continue 
                if address(s) == owner:
                    sub_0c12a144 += (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100
                else:
                    if uint256(users[address(s)].field_256) < uint8(idx + 1):
                        sub_0c12a144 += (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100
                    else:
                        if uint256(users[address(s)].field_2816) < uint64(10^18 * uint8(idx + 1)):
                            sub_0c12a144 += (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100
                        else:
                            if uint256(users[address(msg.sender)].field_512) + ((ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100) <= ext_call.return_data[32]:
                                if (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100 > 0:
                                    mem[32] = 10
                                    uint256(users[address(s)].field_1024) += (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100
                                    mem[mem[64]] = (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100
                                    mem[mem[64] + 32] = uint8(idx + 1)
                                    mem[mem[64] + 64] = uint64(10^18 * uint8(idx + 1))
                                    emit 0x1be6ae4c: (ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100, idx + 1 << 248, uint64(10^18 * uint8(idx + 1)), address(s), msg.sender
                            else:
                                if ext_call.return_data[32] - ((ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100) > 0:
                                    mem[32] = 10
                                    uint256(users[address(s)].field_1024) = uint256(users[address(s)].field_1024) + ext_call.return_data[32] - ((ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100)
                                    mem[mem[64]] = ext_call.return_data[32] - ((ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100)
                                    mem[mem[64] + 32] = uint8(idx + 1)
                                    mem[mem[64] + 64] = uint64(10^18 * uint8(idx + 1))
                                    emit 0x1be6ae4c: ext_call.return_data[32] - ((ext_call.return_data[32] * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) - (uint256(users[address(msg.sender)].field_512) * stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]) / 100), idx + 1 << 248, uint64(10^18 * uint8(idx + 1)), address(s), msg.sender
                mem[0] = address(s)
                mem[32] = 10
                idx = idx + 1
                s = users[address(s)].field_0
                continue 
            if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                uint256(users[address(msg.sender)].field_768) = 0
                if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                    uint256(users[address(msg.sender)].field_1024) = 0
                    if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                    total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                    call msg.sender with:
                       value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                else:
                    if uint256(users[address(msg.sender)].field_1024) <= 0:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        call msg.sender with:
                           value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                            if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                            total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                            call msg.sender with:
                               value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                        else:
                            uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                            uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                            total_withdraw = total_withdraw + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                            call msg.sender with:
                               value (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))), msg.sender);
            else:
                if uint256(users[address(msg.sender)].field_768) <= 0:
                    uint256(users[address(msg.sender)].field_768) = 0
                    if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_1024) = 0
                        if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                        call msg.sender with:
                           value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                    else:
                        if uint256(users[address(msg.sender)].field_1024) <= 0:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)
                            call msg.sender with:
                               value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512)), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                                total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)
                                call msg.sender with:
                                   value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                            else:
                                uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                total_withdraw = total_withdraw + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                call msg.sender with:
                                   value (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))), msg.sender);
                else:
                    if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) <= ext_call.return_data[32]:
                        uint256(users[address(msg.sender)].field_768) = 0
                        uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_768)
                        if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768)
                            total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768)
                            call msg.sender with:
                               value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768)), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_1024) <= 0:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768)
                                total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768)
                                call msg.sender with:
                                   value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768)), msg.sender);
                            else:
                                if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                    uint256(users[address(msg.sender)].field_1024) = 0
                                    uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                    if ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)
                                    total_withdraw = total_withdraw + ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)
                                    call msg.sender with:
                                       value ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_768) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                                else:
                                    uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                    uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_768) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_768)
                                    total_withdraw = total_withdraw + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_768)
                                    call msg.sender with:
                                       value (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_768) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_768)), msg.sender);
                    else:
                        uint256(users[address(msg.sender)].field_768) = uint256(users[address(msg.sender)].field_768) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                        uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                        if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
                            uint256(users[address(msg.sender)].field_1024) = 0
                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                            total_withdraw = total_withdraw + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                            call msg.sender with:
                               value (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))), msg.sender);
                        else:
                            if uint256(users[address(msg.sender)].field_1024) <= 0:
                                uint256(users[address(msg.sender)].field_1024) = 0
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                total_withdraw = total_withdraw + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))
                                call msg.sender with:
                                   value (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512))), msg.sender);
                            else:
                                if uint256(users[address(msg.sender)].field_512) + uint256(users[address(msg.sender)].field_1024) <= ext_call.return_data[32]:
                                    uint256(users[address(msg.sender)].field_1024) = 0
                                    uint256(users[address(msg.sender)].field_512) += uint256(users[address(msg.sender)].field_1024)
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_1024) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_1024)
                                    total_withdraw = total_withdraw + (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_1024)
                                    call msg.sender with:
                                       value (2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_1024) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[address(msg.sender)].field_512)) + uint256(users[address(msg.sender)].field_1024)), msg.sender);
                                else:
                                    uint256(users[address(msg.sender)].field_1024) = uint256(users[address(msg.sender)].field_1024) - ext_call.return_data[32] + uint256(users[address(msg.sender)].field_512)
                                    uint256(users[address(msg.sender)].field_512) = ext_call.return_data[32]
                                    if (3 * ext_call.return_data[32]) - (3 * uint256(users[address(msg.sender)].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[address(msg.sender)].field_2560) = uint256(users[address(msg.sender)].field_2560) + (3 * ext_call.return_data[32]) - (3 * uint256(users[address(msg.sender)].field_512))
                                    total_withdraw = total_withdraw + (3 * ext_call.return_data[32]) - (3 * uint256(users[address(msg.sender)].field_512))
                                    call msg.sender with:
                                       value (3 * ext_call.return_data[32]) - (3 * uint256(users[address(msg.sender)].field_512)) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(((3 * ext_call.return_data[32]) - (3 * uint256(users[address(msg.sender)].field_512))), msg.sender);
    if uint256(users[address(msg.sender)].field_512) >= ext_call.return_data[32]:
        uint256(users[address(msg.sender)].field_1024) = 0
        uint256(users[address(msg.sender)].field_768) = 0
        emit LimitReached(uint256(users[address(msg.sender)].field_512), msg.sender);
}



}
