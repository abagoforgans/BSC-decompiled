contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address senderAddress;
mapping of struct users;
array of struct sub_cc4811c7;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdraw;

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_256, 
           users[address(arg1)].field_1792,
           users[address(arg1)].field_1280,
           users[address(arg1)].field_768,
           users[address(arg1)].field_1024
}

function sender() {
    return senderAddress
}

function userInfoTotals(address arg1) {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_512, 
           users[address(arg1)].field_2048,
           users[address(arg1)].field_2304,
           users[address(arg1)].field_2560
}

function owner() {
    return owner
}

function total_withdraw() {
    return total_withdraw
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304,
           users[arg1].field_2560
}

function sub_cc4811c7(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_cc4811c7[arg1].field_0
    return sub_cc4811c7[arg1][arg2].field_0
}

function total_deposited() {
    return total_deposited
}

function total_users() {
    return total_users
}

function contractInfo() {
    return total_users, total_deposited, total_withdraw
}

function maxPayoutOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (35 * arg1 / 10)
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x8959af3c with:
            gas gas_remaining wei
           args users[address(arg1)].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= users[address(arg1)].field_1536:
        return 0, ext_call.return_data[0]
    if ext_call.return_data[0] >= 35 * block.timestamp - users[address(arg1)].field_1792 / 24 * 3600 * users[address(arg1)].field_1280 / 1000:
        return (35 * block.timestamp - users[address(arg1)].field_1792 / 24 * 3600 * users[address(arg1)].field_1280 / 1000) - users[address(arg1)].field_1536, 
               ext_call.return_data[0]
    return ext_call.return_data[0] - users[address(arg1)].field_1536, ext_call.return_data[0]
}

function getDirectReferrals(address arg1) {
    require calldata.size - 4 >= 32
    if sub_cc4811c7[address(arg1)].field_0:
        mem[128] = sub_cc4811c7[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_cc4811c7[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_cc4811c7[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_cc4811c7[address(arg1)].field_0) + 224 len floor32(sub_cc4811c7[address(arg1)].field_0)] = mem[128 len floor32(sub_cc4811c7[address(arg1)].field_0)]
    return Array(len=sub_cc4811c7[address(arg1)].field_0, data=mem[128 len floor32(sub_cc4811c7[address(arg1)].field_0)], mem[(32 * sub_cc4811c7[address(arg1)].field_0) + floor32(sub_cc4811c7[address(arg1)].field_0) + 224 len (32 * sub_cc4811c7[address(arg1)].field_0) - floor32(sub_cc4811c7[address(arg1)].field_0)]), 
           sub_cc4811c7[address(arg1)].field_0
}

function _fallback() payable {
    if not users[address(msg.sender)].field_256:
        if owner != msg.sender:
            revert with 0, 'No upline'
    if not users[address(msg.sender)].field_1792:
        if msg.value < 10^18:
            revert with 0, 'Bad amount 2'
    else:
        users[address(msg.sender)].field_0++
        require ext_code.size(this.address)
        staticcall this.address.0x8959af3c with:
                gas gas_remaining wei
               args users[address(msg.sender)].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if users[address(msg.sender)].field_768 < ext_call.return_data[0]:
            revert with 0, 'Deposit already exists'
        if msg.value < users[address(msg.sender)].field_1280:
            revert with 0, 'Bad amount 1'
    users[address(msg.sender)].field_768 = 0
    users[address(msg.sender)].field_1280 = msg.value
    users[address(msg.sender)].field_1536 = 0
    users[address(msg.sender)].field_1792 = block.timestamp % 1099511627776
    users[address(msg.sender)].field_2048 += msg.value
    total_deposited += msg.value
    emit NewDeposit(msg.value, msg.sender);
    if users[address(msg.sender)].field_256:
        users[users[address(msg.sender)].field_256].field_1024 += 15 * msg.value / 100
        emit DirectPayout((15 * msg.value / 100), users[address(msg.sender)].field_256, msg.sender);
    call owner with:
       value msg.value / 50 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call senderAddress with:
       value 3 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    if not users[address(msg.sender)].field_256:
        if arg1 != msg.sender:
            if owner != msg.sender:
                if users[address(arg1)].field_1792:
                    users[address(msg.sender)].field_256 = arg1
                    users[arg1].field_512++
                    emit Upline(msg.sender, arg1);
                    total_users++
                    sub_cc4811c7[address(arg1)].field_0++
                    sub_cc4811c7[address(arg1)][sub_cc4811c7[address(arg1)].field_0].field_0 = msg.sender
                else:
                    if owner == arg1:
                        users[address(msg.sender)].field_256 = arg1
                        users[arg1].field_512++
                        emit Upline(msg.sender, arg1);
                        total_users++
                        sub_cc4811c7[address(arg1)].field_0++
                        sub_cc4811c7[address(arg1)][sub_cc4811c7[address(arg1)].field_0].field_0 = msg.sender
    if not users[address(msg.sender)].field_256:
        if owner != msg.sender:
            revert with 0, 'No upline'
    if not users[address(msg.sender)].field_1792:
        if msg.value < 10^18:
            revert with 0, 'Bad amount 2'
    else:
        users[address(msg.sender)].field_0++
        require ext_code.size(this.address)
        staticcall this.address.0x8959af3c with:
                gas gas_remaining wei
               args users[address(msg.sender)].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if users[address(msg.sender)].field_768 < ext_call.return_data[0]:
            revert with 0, 'Deposit already exists'
        if msg.value < users[address(msg.sender)].field_1280:
            revert with 0, 'Bad amount 1'
    users[address(msg.sender)].field_768 = 0
    users[address(msg.sender)].field_1280 = msg.value
    users[address(msg.sender)].field_1536 = 0
    users[address(msg.sender)].field_1792 = block.timestamp % 1099511627776
    users[address(msg.sender)].field_2048 += msg.value
    total_deposited += msg.value
    emit NewDeposit(msg.value, msg.sender);
    if users[address(msg.sender)].field_256:
        users[users[address(msg.sender)].field_256].field_1024 += 15 * msg.value / 100
        emit DirectPayout((15 * msg.value / 100), users[address(msg.sender)].field_256, msg.sender);
    call owner with:
       value msg.value / 50 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call senderAddress with:
       value 3 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    if msg.sender == senderAddress:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(this.address)
        staticcall this.address.0x6da61d1e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= users[msg.sender].field_768:
            revert with 0, 'Full payouts'
        if not ext_call.return_data[0]:
            if ext_call.return_data[32] <= users[msg.sender].field_768:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Zero payout'
                users[msg.sender].field_2304 += ext_call.return_data[0]
                total_withdraw += ext_call.return_data[0]
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(ext_call.return_data[0], msg.sender);
            else:
                if not users[msg.sender].field_1024:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    users[msg.sender].field_2304 += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if ext_call.return_data[32] >= users[msg.sender].field_1024 + users[msg.sender].field_768:
                        users[msg.sender].field_1024 = 0
                        users[msg.sender].field_768 += users[msg.sender].field_1024
                        if users[msg.sender].field_1024 + ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        users[msg.sender].field_2304 = users[msg.sender].field_1024 + ext_call.return_data[0] + users[msg.sender].field_2304
                        total_withdraw = users[msg.sender].field_1024 + ext_call.return_data[0] + total_withdraw
                        call msg.sender with:
                           value users[msg.sender].field_1024 + ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((users[msg.sender].field_1024 + ext_call.return_data[0]), msg.sender);
                    else:
                        users[msg.sender].field_1024 = users[msg.sender].field_1024 - ext_call.return_data[32] + users[msg.sender].field_768
                        users[msg.sender].field_768 = ext_call.return_data[32]
                        if ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        users[msg.sender].field_2304 = ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] + users[msg.sender].field_2304
                        total_withdraw = ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] + total_withdraw
                        call msg.sender with:
                           value ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0]), msg.sender);
        else:
            if ext_call.return_data[32] >= ext_call.return_data[0] + users[msg.sender].field_768:
                users[msg.sender].field_1536 += ext_call.return_data[0]
                users[msg.sender].field_768 += ext_call.return_data[0]
                if ext_call.return_data[32] <= users[msg.sender].field_768:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    users[msg.sender].field_2304 += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if not users[msg.sender].field_1024:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        users[msg.sender].field_2304 += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if ext_call.return_data[32] >= users[msg.sender].field_1024 + users[msg.sender].field_768:
                            users[msg.sender].field_1024 = 0
                            users[msg.sender].field_768 += users[msg.sender].field_1024
                            if users[msg.sender].field_1024 + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            users[msg.sender].field_2304 = users[msg.sender].field_1024 + ext_call.return_data[0] + users[msg.sender].field_2304
                            total_withdraw = users[msg.sender].field_1024 + ext_call.return_data[0] + total_withdraw
                            call msg.sender with:
                               value users[msg.sender].field_1024 + ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((users[msg.sender].field_1024 + ext_call.return_data[0]), msg.sender);
                        else:
                            users[msg.sender].field_1024 = users[msg.sender].field_1024 - ext_call.return_data[32] + users[msg.sender].field_768
                            users[msg.sender].field_768 = ext_call.return_data[32]
                            if ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            users[msg.sender].field_2304 = ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] + users[msg.sender].field_2304
                            total_withdraw = ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] + total_withdraw
                            call msg.sender with:
                               value ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((ext_call.return_data[32] - users[msg.sender].field_768 + ext_call.return_data[0]), msg.sender);
            else:
                users[msg.sender].field_1536 = ext_call.return_data[32] - users[msg.sender].field_768 + users[msg.sender].field_1536
                users[msg.sender].field_768 = ext_call.return_data[32]
                if ext_call.return_data[32] <= users[msg.sender].field_768:
                    if ext_call.return_data[32] - users[msg.sender].field_768 <= 0:
                        revert with 0, 'Zero payout'
                    users[msg.sender].field_2304 = ext_call.return_data[32] - users[msg.sender].field_768 + users[msg.sender].field_2304
                    total_withdraw = ext_call.return_data[32] - users[msg.sender].field_768 + total_withdraw
                    call msg.sender with:
                       value ext_call.return_data[32] - users[msg.sender].field_768 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw((ext_call.return_data[32] - users[msg.sender].field_768), msg.sender);
                else:
                    if not users[msg.sender].field_1024:
                        if ext_call.return_data[32] - users[msg.sender].field_768 <= 0:
                            revert with 0, 'Zero payout'
                        users[msg.sender].field_2304 = ext_call.return_data[32] - users[msg.sender].field_768 + users[msg.sender].field_2304
                        total_withdraw = ext_call.return_data[32] - users[msg.sender].field_768 + total_withdraw
                        call msg.sender with:
                           value ext_call.return_data[32] - users[msg.sender].field_768 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw((ext_call.return_data[32] - users[msg.sender].field_768), msg.sender);
                    else:
                        if ext_call.return_data[32] >= users[msg.sender].field_1024 + users[msg.sender].field_768:
                            users[msg.sender].field_1024 = 0
                            users[msg.sender].field_768 += users[msg.sender].field_1024
                            if users[msg.sender].field_1024 + ext_call.return_data[32] - users[msg.sender].field_768 <= 0:
                                revert with 0, 'Zero payout'
                            users[msg.sender].field_2304 = users[msg.sender].field_1024 + ext_call.return_data[32] - users[msg.sender].field_768 + users[msg.sender].field_2304
                            total_withdraw = users[msg.sender].field_1024 + ext_call.return_data[32] - users[msg.sender].field_768 + total_withdraw
                            call msg.sender with:
                               value users[msg.sender].field_1024 + ext_call.return_data[32] - users[msg.sender].field_768 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw((users[msg.sender].field_1024 + ext_call.return_data[32] - users[msg.sender].field_768), msg.sender);
                        else:
                            users[msg.sender].field_1024 = users[msg.sender].field_1024 - ext_call.return_data[32] + users[msg.sender].field_768
                            users[msg.sender].field_768 = ext_call.return_data[32]
                            if (2 * ext_call.return_data[32]) - (2 * users[msg.sender].field_768) <= 0:
                                revert with 0, 'Zero payout'
                            users[msg.sender].field_2304 = (2 * ext_call.return_data[32]) - (2 * users[msg.sender].field_768) + users[msg.sender].field_2304
                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * users[msg.sender].field_768) + total_withdraw
                            call msg.sender with:
                               value (2 * ext_call.return_data[32]) - (2 * users[msg.sender].field_768) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * users[msg.sender].field_768)), msg.sender);
        if ext_call.return_data[32] <= users[msg.sender].field_768:
            emit LimitReached(users[msg.sender].field_768, msg.sender);
}



}
