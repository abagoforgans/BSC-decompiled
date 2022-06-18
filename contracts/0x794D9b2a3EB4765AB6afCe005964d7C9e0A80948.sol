contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000


address owner;
address stor1;
address sub_c49a54faAddress;
mapping of struct userInfo;
uint256 sub_fe6e66fe;
uint256 sub_1311ec60;
uint256 sub_89a59865;
uint256 sub_b03dedb5;
uint256 sub_8faf9bd2;
array of uint256 sub_c1cc637f;
array of uint256 sub_03369d93;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 sub_ae590713;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdrawn;
uint256 sub_6972a50d;

function sub_03369d93(?) {
    require calldata.size - 4 >= 32
    require arg1 < 24
    return sub_03369d93[arg1]
}

function sub_1311ec60(?) {
    return sub_1311ec60
}

function userInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return userInfo[address(arg1)][10][arg2].field_0, 
           userInfo[address(arg1)][10][arg2].field_768,
           userInfo[address(arg1)][10][arg2].field_256,
           userInfo[address(arg1)][10][arg2].field_512
}

function total_withdrawn() {
    return total_withdrawn
}

function sub_6972a50d(?) {
    return sub_6972a50d
}

function userInfoTotals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_256, userInfo[address(arg1)].field_2048, userInfo[address(arg1)].field_2304
}

function sub_86b0e9f4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userInfo[address(arg1)].field_512, 
           userInfo[address(arg1)].field_768,
           userInfo[address(arg1)].field_1024,
           userInfo[address(arg1)].field_1280,
           userInfo[address(arg1)].field_1536
}

function sub_89a59865(?) {
    return sub_89a59865
}

function owner() {
    return owner
}

function sub_8faf9bd2(?) {
    return sub_8faf9bd2
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_1792,
           userInfo[arg1].field_2048,
           userInfo[arg1].field_2304
}

function sub_ae590713(?) {
    return sub_ae590713
}

function sub_b03dedb5(?) {
    return sub_b03dedb5
}

function sub_c1cc637f(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_c1cc637f[arg1]
}

function sub_c49a54fa(?) {
    return sub_c49a54faAddress
}

function total_deposited() {
    return total_deposited
}

function total_users() {
    return total_users
}

function sub_fe6e66fe(?) {
    return sub_fe6e66fe
}

function _fallback() payable {
    revert
}

function contractInfo() {
    return total_users, total_deposited, total_withdrawn
}

function sub_9f21ff57(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if userInfo[address(arg1)][10][arg2].field_768 >= userInfo[address(arg1)][10][arg2].field_256:
        return 0
    return 1
}

function sub_86dfb539(?) {
    if not userInfo[msg.sender].field_256:
        revert with 0, 'Withdraw: Insufficient balance'
    if userInfo[msg.sender].field_256 < sub_89a59865:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Refferal: Insufficient min_withdrawal_amount'
    call msg.sender with:
       value userInfo[msg.sender].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    userInfo[msg.sender].field_256 = 0
}

function sub_91d13f40(?) {
    require calldata.size - 4 >= 64
    if sub_8faf9bd2 and arg2 > -1 / sub_8faf9bd2:
        revert with 0, 17
    if sub_b03dedb5 > !(sub_8faf9bd2 * arg2):
        revert with 0, 17
    if arg1 and sub_b03dedb5 + (sub_8faf9bd2 * arg2) > -1 / arg1:
        revert with 0, 17
    if arg2 >= 24:
        revert with 0, 50
    if not sub_03369d93[arg2]:
        revert with 0, 18
    return sub_b03dedb5 + (sub_8faf9bd2 * arg2), 
           (sub_b03dedb5 * arg1) + (sub_8faf9bd2 * arg2 * arg1) / 1000,
           (sub_b03dedb5 * arg1) + (sub_8faf9bd2 * arg2 * arg1) / 1000 / sub_03369d93[arg2]
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 1
    s = 0
    t = 0
    while idx < userInfo[address(arg1)].field_1792:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 3) + 10
        if userInfo[address(arg1)][10][idx].field_768 >= userInfo[address(arg1)][10][idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if block.timestamp < userInfo[address(arg1)][10][idx].field_1024:
            revert with 0, 17
        if userInfo[address(arg1)][10][idx].field_512 and block.timestamp - userInfo[address(arg1)][10][idx].field_1024 > -1 / userInfo[address(arg1)][10][idx].field_512:
            revert with 0, 17
        if not sub_ae590713:
            revert with 0, 18
        mem[0] = idx
        mem[32] = sha3(address(arg1), 3) + 10
        if userInfo[address(arg1)][10][idx].field_768 > !((block.timestamp * userInfo[address(arg1)][10][idx].field_512) - (userInfo[address(arg1)][10][idx].field_1024 * userInfo[address(arg1)][10][idx].field_512) / sub_ae590713):
            revert with 0, 17
        if userInfo[address(arg1)][10][idx].field_768 + ((block.timestamp * userInfo[address(arg1)][10][idx].field_512) - (userInfo[address(arg1)][10][idx].field_1024 * userInfo[address(arg1)][10][idx].field_512) / sub_ae590713) <= userInfo[address(arg1)][10][idx].field_256:
            if t > !((block.timestamp * userInfo[address(arg1)][10][idx].field_512) - (userInfo[address(arg1)][10][idx].field_1024 * userInfo[address(arg1)][10][idx].field_512) / sub_ae590713):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (block.timestamp * userInfo[address(arg1)][10][idx].field_512) - (userInfo[address(arg1)][10][idx].field_1024 * userInfo[address(arg1)][10][idx].field_512) / sub_ae590713
            t = t + ((block.timestamp * userInfo[address(arg1)][10][idx].field_512) - (userInfo[address(arg1)][10][idx].field_1024 * userInfo[address(arg1)][10][idx].field_512) / sub_ae590713)
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 3) + 10
        if userInfo[address(arg1)][10][idx].field_256 < userInfo[address(arg1)][10][idx].field_768:
            revert with 0, 17
        if t > !(userInfo[address(arg1)][10][idx].field_256 - userInfo[address(arg1)][10][idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = userInfo[address(arg1)][10][idx].field_256 - userInfo[address(arg1)][10][idx].field_768
        t = t + userInfo[address(arg1)][10][idx].field_256 - userInfo[address(arg1)][10][idx].field_768
        continue 
    return t
}

function sub_e6ee8453(?) {
    if not userInfo[msg.sender].field_256:
        revert with 0, 'Restake: Insufficient balance'
    if 200 < userInfo[msg.sender].field_1792:
        revert with 0, 'Stake: Limit reached'
    if userInfo[msg.sender].field_256 < sub_fe6e66fe:
        revert with 0, 'Restake: Invalid amount'
    if userInfo[msg.sender].field_256 > sub_1311ec60:
        revert with 0, 'Restake: Invalid amount'
    if userInfo[address(msg.sender)].field_1792 == -1:
        revert with 0, 17
    userInfo[address(msg.sender)].field_1792++
    if userInfo[address(msg.sender)].field_1792 + 1 == 1:
        if total_users == -1:
            revert with 0, 17
        total_users++
        userInfo[address(msg.sender)].field_0 = userInfo[msg.sender].field_0
    if sub_8faf9bd2 and 0 > -1 / sub_8faf9bd2:
        revert with 0, 17
    if sub_b03dedb5 > -1:
        revert with 0, 17
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_0 = userInfo[msg.sender].field_256
    if userInfo[msg.sender].field_256 and sub_b03dedb5 > -1 / userInfo[msg.sender].field_256:
        revert with 0, 17
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_256 = userInfo[msg.sender].field_256 * sub_b03dedb5 / 1000
    if not sub_03369d93.length:
        revert with 0, 18
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_512 = userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_256 / sub_03369d93.length
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_1024 = block.timestamp
    if userInfo[address(msg.sender)].field_1792 == -1:
        revert with 0, 17
    userInfo[address(msg.sender)].field_1792++
    if userInfo[address(msg.sender)].field_2048 > !userInfo[msg.sender].field_256:
        revert with 0, 17
    userInfo[address(msg.sender)].field_2048 += userInfo[msg.sender].field_256
    if total_deposited > !userInfo[msg.sender].field_256:
        revert with 0, 17
    total_deposited += userInfo[msg.sender].field_256
    if userInfo[msg.sender].field_256 and stor38 > -1 / userInfo[msg.sender].field_256:
        revert with 0, 17
    call owner with:
       value userInfo[msg.sender].field_256 * stor38 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userInfo[msg.sender].field_256 and stor39 > -1 / userInfo[msg.sender].field_256:
        revert with 0, 17
    call stor1 with:
       value userInfo[msg.sender].field_256 * stor39 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewDeposit(userInfo[msg.sender].field_256, msg.sender);
    if userInfo[address(msg.sender)].field_0:
        idx = 0
        s = userInfo[address(msg.sender)].field_0
        while idx < 5:
            if not address(s):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 5:
                revert with 0, 50
            if 1 == userInfo[address(msg.sender)].field_1792 + 1:
                if userInfo[address(s)][idx].field_512 > -2:
                    revert with 0, 17
                userInfo[address(s)][idx].field_512++
            if userInfo[msg.sender].field_256 and sub_c1cc637f[idx] > -1 / userInfo[msg.sender].field_256:
                revert with 0, 17
            if userInfo[address(s)].field_256 > !(userInfo[msg.sender].field_256 * sub_c1cc637f[idx] / 1000):
                revert with 0, 17
            mem[32] = 3
            userInfo[address(s)].field_256 += userInfo[msg.sender].field_256 * sub_c1cc637f[idx] / 1000
            mem[0] = msg.sender
            if idx >= 5:
                revert with 0, 50
            if userInfo[msg.sender].field_256 and sub_c1cc637f[idx] > -1 / userInfo[msg.sender].field_256:
                revert with 0, 17
            mem[96] = userInfo[msg.sender].field_256 * sub_c1cc637f[idx] / 1000
            emit ReferralPayout((userInfo[msg.sender].field_256 * sub_c1cc637f[idx] / 1000), userInfo[msg.sender].field_0, msg.sender);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = userInfo[address(s)].field_0
            continue 
    userInfo[msg.sender].field_256 = 0
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender == owner:
        if 200 < userInfo[msg.sender].field_1792:
            revert with 0, 'Stake: Limit reached'
        if msg.value < sub_fe6e66fe:
            revert with 0, 'Invalid deposited amount'
        if msg.value > sub_1311ec60:
            revert with 0, 'Invalid deposited amount'
        if arg2 >= 24:
            revert with 0, 'Invalid staking duration.'
        if userInfo[address(msg.sender)].field_1792 == -1:
            revert with 0, 17
        userInfo[address(msg.sender)].field_1792++
        if userInfo[address(msg.sender)].field_1792 + 1 == 1:
            if total_users == -1:
                revert with 0, 17
            total_users++
            userInfo[address(msg.sender)].field_0 = 0
    else:
        if arg1 == msg.sender:
            revert with 0, 'No upline'
        if not arg1:
            revert with 0, 'No upline'
        if 200 < userInfo[msg.sender].field_1792:
            revert with 0, 'Stake: Limit reached'
        if msg.value < sub_fe6e66fe:
            revert with 0, 'Invalid deposited amount'
        if msg.value > sub_1311ec60:
            revert with 0, 'Invalid deposited amount'
        if arg2 >= 24:
            revert with 0, 'Invalid staking duration.'
        if userInfo[address(msg.sender)].field_1792 == -1:
            revert with 0, 17
        userInfo[address(msg.sender)].field_1792++
        if userInfo[address(msg.sender)].field_1792 + 1 == 1:
            if total_users == -1:
                revert with 0, 17
            total_users++
            userInfo[address(msg.sender)].field_0 = arg1
    if sub_8faf9bd2 and arg2 > -1 / sub_8faf9bd2:
        revert with 0, 17
    if sub_b03dedb5 > !(sub_8faf9bd2 * arg2):
        revert with 0, 17
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_0 = msg.value
    if msg.value and sub_b03dedb5 + (sub_8faf9bd2 * arg2) > -1 / msg.value:
        revert with 0, 17
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_256 = (sub_b03dedb5 * msg.value) + (sub_8faf9bd2 * arg2 * msg.value) / 1000
    if arg2 >= 24:
        revert with 0, 50
    if not sub_03369d93[arg2]:
        revert with 0, 18
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_512 = userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_256 / sub_03369d93[arg2]
    userInfo[address(msg.sender)][10][userInfo[address(msg.sender)].field_1792 + 1].field_1024 = block.timestamp
    if userInfo[address(msg.sender)].field_1792 == -1:
        revert with 0, 17
    userInfo[address(msg.sender)].field_1792++
    if userInfo[address(msg.sender)].field_2048 > !msg.value:
        revert with 0, 17
    userInfo[address(msg.sender)].field_2048 += msg.value
    if total_deposited > !msg.value:
        revert with 0, 17
    total_deposited += msg.value
    if msg.value and stor38 > -1 / msg.value:
        revert with 0, 17
    call owner with:
       value msg.value * stor38 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor39 > -1 / msg.value:
        revert with 0, 17
    call stor1 with:
       value msg.value * stor39 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewDeposit(msg.value, msg.sender);
    if userInfo[address(msg.sender)].field_0:
        idx = 0
        s = userInfo[address(msg.sender)].field_0
        while idx < 5:
            if not address(s):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 5:
                revert with 0, 50
            if 1 == userInfo[address(msg.sender)].field_1792 + 1:
                if userInfo[address(s)][idx].field_512 > -2:
                    revert with 0, 17
                userInfo[address(s)][idx].field_512++
            if msg.value and sub_c1cc637f[idx] > -1 / msg.value:
                revert with 0, 17
            if userInfo[address(s)].field_256 > !(msg.value * sub_c1cc637f[idx] / 1000):
                revert with 0, 17
            mem[32] = 3
            userInfo[address(s)].field_256 += msg.value * sub_c1cc637f[idx] / 1000
            mem[0] = msg.sender
            if idx >= 5:
                revert with 0, 50
            if msg.value and sub_c1cc637f[idx] > -1 / msg.value:
                revert with 0, 17
            mem[96] = msg.value * sub_c1cc637f[idx] / 1000
            emit ReferralPayout((msg.value * sub_c1cc637f[idx] / 1000), userInfo[msg.sender].field_0, msg.sender);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = userInfo[address(s)].field_0
            continue 
}

function withdraw() {
    if not userInfo[msg.sender].field_1792:
        revert with 0, 'You did not stake yet.'
    idx = 1
    s = 0
    while idx < userInfo[msg.sender].field_1792:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 3) + 10
        if userInfo[address(msg.sender)][10][idx].field_768 >= userInfo[address(msg.sender)][10][idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(msg.sender, 3) + 10
        if userInfo[msg.sender][10][idx].field_1024 > !sub_ae590713:
            revert with 0, 17
        if block.timestamp <= userInfo[msg.sender][10][idx].field_1024 + sub_ae590713:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if not idx:
            revert with 0, 'Invalid stake id.'
        if idx >= userInfo[address(msg.sender)].field_1792:
            revert with 0, 'Invalid stake id.'
        if block.timestamp < userInfo[address(msg.sender)][10][idx].field_1024:
            revert with 0, 17
        if userInfo[address(msg.sender)][10][idx].field_512 and block.timestamp - userInfo[address(msg.sender)][10][idx].field_1024 > -1 / userInfo[address(msg.sender)][10][idx].field_512:
            revert with 0, 17
        if not sub_ae590713:
            revert with 0, 18
        if userInfo[address(msg.sender)][10][idx].field_768 > !((block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713):
            revert with 0, 17
        if userInfo[address(msg.sender)][10][idx].field_768 + ((block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713) <= userInfo[address(msg.sender)][10][idx].field_256:
            userInfo[address(msg.sender)][10][idx].field_768 = (block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713
            userInfo[address(msg.sender)][10][idx].field_1024 = block.timestamp
            mem[96] = (block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713
            emit Withdraw(((block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713), msg.sender);
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 3) + 10
            if userInfo[address(msg.sender)][10][idx].field_768 == userInfo[address(msg.sender)][10][idx].field_256:
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 3) + 10
                mem[96] = userInfo[address(msg.sender)][10][idx].field_256
                emit LimitReached(userInfo[address(msg.sender)][10][idx].field_256, msg.sender);
            if s > !((block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * userInfo[address(msg.sender)][10][idx].field_512) - (userInfo[address(msg.sender)][10][idx].field_1024 * userInfo[address(msg.sender)][10][idx].field_512) / sub_ae590713)
            continue 
        if userInfo[address(msg.sender)][10][idx].field_256 < userInfo[address(msg.sender)][10][idx].field_768:
            revert with 0, 17
        userInfo[address(msg.sender)][10][idx].field_768 = userInfo[address(msg.sender)][10][idx].field_256 - userInfo[address(msg.sender)][10][idx].field_768
        userInfo[address(msg.sender)][10][idx].field_1024 = block.timestamp
        mem[96] = userInfo[address(msg.sender)][10][idx].field_256 - userInfo[address(msg.sender)][10][idx].field_768
        emit Withdraw((userInfo[address(msg.sender)][10][idx].field_256 - userInfo[address(msg.sender)][10][idx].field_768), msg.sender);
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 3) + 10
        if userInfo[address(msg.sender)][10][idx].field_768 == userInfo[address(msg.sender)][10][idx].field_256:
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 3) + 10
            mem[96] = userInfo[address(msg.sender)][10][idx].field_256
            emit LimitReached(userInfo[address(msg.sender)][10][idx].field_256, msg.sender);
        if s > !(userInfo[address(msg.sender)][10][idx].field_256 - userInfo[address(msg.sender)][10][idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + userInfo[address(msg.sender)][10][idx].field_256 - userInfo[address(msg.sender)][10][idx].field_768
        continue 
    if s < sub_89a59865:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw: Insufficient min_withdrawal_amount'
    if userInfo[msg.sender].field_2304 > !s:
        revert with 0, 17
    userInfo[msg.sender].field_2304 += s
    if total_withdrawn > !s:
        revert with 0, 17
    total_withdrawn += s
    if s and stor40 > -1 / s:
        revert with 0, 17
    call sub_c49a54faAddress with:
       value s * stor40 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if s and stor40 > -1 / s:
        revert with 0, 17
    if sub_6972a50d > !(s * stor40 / 1000):
        revert with 0, 17
    sub_6972a50d += s * stor40 / 1000
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
