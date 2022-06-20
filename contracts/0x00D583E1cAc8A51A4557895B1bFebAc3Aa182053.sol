contract main {




// =====================  Runtime code  =====================


const divider = 1000

const getContractBalance = eth.balance(this.address)


uint256 stor0;
mapping of struct sub_32f25827;
address owner;
address insuranceAddress;
array of uint256 sub_6672ecde;
array of uint256 sub_8904194f;
uint256 stor33;
uint256 stor34;
uint256 minDepositAmount;
uint256 maxDepositAmount;
uint256 sub_8312f149;
uint256 timeStep;
uint256 sub_181c5681;
uint256 bonusStep;
uint256 sub_fe2fec24;
uint256 sub_641fba96;
uint256 totalDeposited;
uint256 totalWithdrawn;
uint256 sub_73be9b3e;

function timeStep() {
    return timeStep
}

function sub_181c5681(?) {
    return sub_181c5681
}

function sub_18af7611(?) {
    return owner
}

function TotalDeposited() {
    return totalDeposited
}

function sub_32f25827(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_32f25827[address(arg1)][arg2].field_0, 
           sub_32f25827[address(arg1)][arg2].field_256,
           sub_32f25827[address(arg1)][arg2].field_768,
           sub_32f25827[address(arg1)][arg2].field_1024
}

function bonusStep() {
    return bonusStep
}

function TotalWithdrawn() {
    return totalWithdrawn
}

function sub_48f2af59(?) {
    return insuranceAddress
}

function getUserReferrals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_32f25827[address(arg1)].field_1536, 
           sub_32f25827[address(arg1)].field_1792,
           sub_32f25827[address(arg1)].field_2048,
           sub_32f25827[address(arg1)].field_2304,
           sub_32f25827[address(arg1)].field_2560
}

function sub_641fba96(?) {
    return sub_641fba96
}

function minDepositAmount() {
    return minDepositAmount
}

function sub_6672ecde(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_6672ecde[arg1]
}

function sub_73be9b3e(?) {
    return sub_73be9b3e
}

function sub_8312f149(?) {
    return sub_8312f149
}

function sub_8904194f(?) {
    require calldata.size - 4 >= 32
    require arg1 < 24
    return sub_8904194f[arg1]
}

function insurance() {
    return insuranceAddress
}

function owner() {
    return owner
}

function maxDepositAmount() {
    return maxDepositAmount
}

function getUserTotals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_32f25827[address(arg1)].field_1280, sub_32f25827[address(arg1)].field_512, sub_32f25827[address(arg1)].field_768
}

function Users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_32f25827[arg1].field_256, 
           sub_32f25827[arg1].field_512,
           sub_32f25827[arg1].field_768,
           sub_32f25827[arg1].field_1024,
           sub_32f25827[arg1].field_1280
}

function sub_fe2fec24(?) {
    return sub_fe2fec24
}

function sub_2d991538(?) {
    return sub_641fba96, totalDeposited, totalWithdrawn, sub_73be9b3e
}

function sub_24e4a3ab(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_32f25827[address(arg1)][arg2].field_256 >= sub_32f25827[address(arg1)][arg2].field_768:
        return 0
    return 1
}

function sub_c4f2b3e4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner wallet'
    stor34 = arg1
    emit 0x2789993b: arg1
}

function sub_8408e78b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner wallet'
    sub_fe2fec24 = arg1
    emit 0xa0652c2c: arg1
}

function sub_f38d0c42(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner wallet'
    sub_8312f149 = arg1
    emit 0x341ba91d: arg1
}

function SetCommissionRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner wallet'
    stor33 = arg1
    emit 0x7944cc49: arg1
}

function sub_eabfe431(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner wallet'
    sub_181c5681 = arg1
    bonusStep = arg2
    emit 0x81f78a7f: arg1, arg2
}

function sub_6acde139(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner wallet'
    minDepositAmount = arg1
    maxDepositAmount = arg2
    emit 0x74662421: arg1, arg2
}

function sub_609aab45(?) payable {
    if insuranceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the insurance wallet'
    if sub_73be9b3e > !msg.value:
        revert with 0, 17
    sub_73be9b3e += msg.value
    emit 0xc3ee2ef9: msg.value
}

function sub_20e6cb17(?) {
    require calldata.size - 4 >= 32
    if insuranceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the insurance wallet'
    call insuranceAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_73be9b3e < arg1:
        revert with 0, 17
    sub_73be9b3e -= arg1
    emit 0x29578112: arg1
}

function sub_dc4aa43f(?) {
    require calldata.size - 4 >= 64
    if bonusStep and arg2 > -1 / bonusStep:
        revert with 0, 17
    if sub_181c5681 > !(bonusStep * arg2):
        revert with 0, 17
    if arg1 and sub_181c5681 + (bonusStep * arg2) > -1 / arg1:
        revert with 0, 17
    if arg2 >= 24:
        revert with 0, 50
    if not sub_8904194f[arg2]:
        revert with 0, 18
    return sub_181c5681 + (bonusStep * arg2), 
           (sub_181c5681 * arg1) + (bonusStep * arg2 * arg1) / 1000,
           (sub_181c5681 * arg1) + (bonusStep * arg2 * arg1) / 1000 / sub_8904194f[arg2]
}

function sub_33fda3bc(?) {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: Reentrant call'
    stor0 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contracts not allowed*'
    if msg.sender != tx.origin:
        revert with 0, 'Contracts not allowed**'
    if not sub_32f25827[msg.sender].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WithdrawReferralsBonus: Insufficient balance'
    if sub_32f25827[msg.sender].field_1280 < sub_8312f149:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WithdrawReferralsBonus: Insufficient min withdrawal amount'
    call msg.sender with:
       value sub_32f25827[msg.sender].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_32f25827[msg.sender].field_1280 = 0
    stor0 = 1
}

function sub_fd169936(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 1
    s = 0
    t = 0
    while idx < sub_32f25827[address(arg1)].field_256:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 1)
        if sub_32f25827[address(arg1)][idx].field_256 >= sub_32f25827[address(arg1)][idx].field_768:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if block.timestamp < sub_32f25827[address(arg1)][idx].field_512:
            revert with 0, 17
        if sub_32f25827[address(arg1)][idx].field_1024 and block.timestamp - sub_32f25827[address(arg1)][idx].field_512 > -1 / sub_32f25827[address(arg1)][idx].field_1024:
            revert with 0, 17
        if not timeStep:
            revert with 0, 18
        mem[0] = idx
        mem[32] = sha3(address(arg1), 1)
        if sub_32f25827[address(arg1)][idx].field_256 > !((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep):
            revert with 0, 17
        if sub_32f25827[address(arg1)][idx].field_256 + ((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep) <= sub_32f25827[address(arg1)][idx].field_768:
            if t > !((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep
            t = t + ((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep)
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 1)
        if sub_32f25827[address(arg1)][idx].field_768 < sub_32f25827[address(arg1)][idx].field_256:
            revert with 0, 17
        if t > !(sub_32f25827[address(arg1)][idx].field_768 - sub_32f25827[address(arg1)][idx].field_256):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sub_32f25827[address(arg1)][idx].field_768 - sub_32f25827[address(arg1)][idx].field_256
        t = t + sub_32f25827[address(arg1)][idx].field_768 - sub_32f25827[address(arg1)][idx].field_256
        continue 
    return t
}

function sub_de3ef86a(?) {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: Reentrant call'
    stor0 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contracts not allowed*'
    if msg.sender != tx.origin:
        revert with 0, 'Contracts not allowed**'
    if not sub_32f25827[msg.sender].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReInvestReferralsBonus: Insufficient balance'
    if sub_32f25827[msg.sender].field_256 > sub_fe2fec24:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReInvestReferralsBonus: Investment Limit reached'
    if sub_32f25827[msg.sender].field_1280 < minDepositAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReInvestReferralsBonus: Invalid amount'
    if sub_32f25827[msg.sender].field_1280 > maxDepositAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReInvestReferralsBonus: Invalid amount'
    if sub_32f25827[address(msg.sender)].field_256 == -1:
        revert with 0, 17
    sub_32f25827[address(msg.sender)].field_256++
    if sub_32f25827[address(msg.sender)].field_256 + 1 == 1:
        if sub_641fba96 == -1:
            revert with 0, 17
        sub_641fba96++
        sub_32f25827[address(msg.sender)].field_1024 = sub_32f25827[msg.sender].field_1024
    if bonusStep and 0 > -1 / bonusStep:
        revert with 0, 17
    if sub_181c5681 > -1:
        revert with 0, 17
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_512 = block.timestamp
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_0 = sub_32f25827[msg.sender].field_1280
    if sub_32f25827[msg.sender].field_1280 and sub_181c5681 > -1 / sub_32f25827[msg.sender].field_1280:
        revert with 0, 17
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 = sub_32f25827[msg.sender].field_1280 * sub_181c5681 / 1000
    if not sub_8904194f.length:
        revert with 0, 18
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_1024 = sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 / sub_8904194f.length
    if sub_32f25827[address(msg.sender)].field_512 > !sub_32f25827[msg.sender].field_1280:
        revert with 0, 17
    sub_32f25827[address(msg.sender)].field_512 += sub_32f25827[msg.sender].field_1280
    if sub_32f25827[address(msg.sender)].field_256 == -1:
        revert with 0, 17
    sub_32f25827[address(msg.sender)].field_256++
    if totalDeposited > !sub_32f25827[msg.sender].field_1280:
        revert with 0, 17
    totalDeposited += sub_32f25827[msg.sender].field_1280
    if sub_32f25827[msg.sender].field_1280 and stor33 > -1 / sub_32f25827[msg.sender].field_1280:
        revert with 0, 17
    call owner with:
       value sub_32f25827[msg.sender].field_1280 * stor33 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewInvestment(sub_32f25827[msg.sender].field_1280, msg.sender);
    if sub_32f25827[address(msg.sender)].field_1024:
        idx = 0
        s = sub_32f25827[address(msg.sender)].field_1024
        while idx < 5:
            if not address(s):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 5:
                revert with 0, 50
            if 1 == sub_32f25827[address(msg.sender)].field_256 + 1:
                if sub_32f25827[address(s)][idx].field_1536 > -2:
                    revert with 0, 17
                sub_32f25827[address(s)][idx].field_1536++
            if sub_32f25827[msg.sender].field_1280 and sub_6672ecde[idx] > -1 / sub_32f25827[msg.sender].field_1280:
                revert with 0, 17
            if sub_32f25827[address(s)].field_1280 > !(sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000):
                revert with 0, 17
            mem[32] = 1
            sub_32f25827[address(s)].field_1280 += sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000
            mem[0] = msg.sender
            if idx >= 5:
                revert with 0, 50
            if sub_32f25827[msg.sender].field_1280 and sub_6672ecde[idx] > -1 / sub_32f25827[msg.sender].field_1280:
                revert with 0, 17
            mem[96] = sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000
            emit ReferralPayout((sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000), sub_32f25827[msg.sender].field_1024, msg.sender);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sub_32f25827[address(s)].field_1024
            continue 
    sub_32f25827[msg.sender].field_1280 = 0
    stor0 = 1
}

function Invest(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: Reentrant call'
    stor0 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contracts not allowed*'
    if msg.sender != tx.origin:
        revert with 0, 'Contracts not allowed**'
    if msg.sender == owner:
        if sub_32f25827[msg.sender].field_256 > sub_fe2fec24:
            revert with 0, 'Ivestment Limit reached'
        if msg.value < minDepositAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposited amount must be within min and max'
        if msg.value > maxDepositAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposited amount must be within min and max'
        if arg2 >= 24:
            revert with 0, 'Invalid ivestment duration.'
        if sub_32f25827[address(msg.sender)].field_256 == -1:
            revert with 0, 17
        sub_32f25827[address(msg.sender)].field_256++
        if sub_32f25827[address(msg.sender)].field_256 + 1 == 1:
            if sub_641fba96 == -1:
                revert with 0, 17
            sub_641fba96++
            sub_32f25827[address(msg.sender)].field_1024 = 0
    else:
        if arg1 == msg.sender:
            revert with 0, 'Upline required'
        if not arg1:
            revert with 0, 'Upline required'
        if sub_32f25827[msg.sender].field_256 > sub_fe2fec24:
            revert with 0, 'Ivestment Limit reached'
        if msg.value < minDepositAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposited amount must be within min and max'
        if msg.value > maxDepositAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposited amount must be within min and max'
        if arg2 >= 24:
            revert with 0, 'Invalid ivestment duration.'
        if sub_32f25827[address(msg.sender)].field_256 == -1:
            revert with 0, 17
        sub_32f25827[address(msg.sender)].field_256++
        if sub_32f25827[address(msg.sender)].field_256 + 1 == 1:
            if sub_641fba96 == -1:
                revert with 0, 17
            sub_641fba96++
            sub_32f25827[address(msg.sender)].field_1024 = arg1
    if bonusStep and arg2 > -1 / bonusStep:
        revert with 0, 17
    if sub_181c5681 > !(bonusStep * arg2):
        revert with 0, 17
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_512 = block.timestamp
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_0 = msg.value
    if msg.value and sub_181c5681 + (bonusStep * arg2) > -1 / msg.value:
        revert with 0, 17
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 = (sub_181c5681 * msg.value) + (bonusStep * arg2 * msg.value) / 1000
    if arg2 >= 24:
        revert with 0, 50
    if not sub_8904194f[arg2]:
        revert with 0, 18
    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_1024 = sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 / sub_8904194f[arg2]
    if sub_32f25827[address(msg.sender)].field_512 > !msg.value:
        revert with 0, 17
    sub_32f25827[address(msg.sender)].field_512 += msg.value
    if sub_32f25827[address(msg.sender)].field_256 == -1:
        revert with 0, 17
    sub_32f25827[address(msg.sender)].field_256++
    if totalDeposited > !msg.value:
        revert with 0, 17
    totalDeposited += msg.value
    if msg.value and stor33 > -1 / msg.value:
        revert with 0, 17
    call owner with:
       value msg.value * stor33 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewInvestment(msg.value, msg.sender);
    if sub_32f25827[address(msg.sender)].field_1024:
        idx = 0
        s = sub_32f25827[address(msg.sender)].field_1024
        while idx < 5:
            if not address(s):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 5:
                revert with 0, 50
            if 1 == sub_32f25827[address(msg.sender)].field_256 + 1:
                if sub_32f25827[address(s)][idx].field_1536 > -2:
                    revert with 0, 17
                sub_32f25827[address(s)][idx].field_1536++
            if msg.value and sub_6672ecde[idx] > -1 / msg.value:
                revert with 0, 17
            if sub_32f25827[address(s)].field_1280 > !(msg.value * sub_6672ecde[idx] / 1000):
                revert with 0, 17
            mem[32] = 1
            sub_32f25827[address(s)].field_1280 += msg.value * sub_6672ecde[idx] / 1000
            mem[0] = msg.sender
            if idx >= 5:
                revert with 0, 50
            if msg.value and sub_6672ecde[idx] > -1 / msg.value:
                revert with 0, 17
            mem[96] = msg.value * sub_6672ecde[idx] / 1000
            emit ReferralPayout((msg.value * sub_6672ecde[idx] / 1000), sub_32f25827[msg.sender].field_1024, msg.sender);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sub_32f25827[address(s)].field_1024
            continue 
    stor0 = 1
}

function Withdraw() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: Reentrant call'
    stor0 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contracts not allowed*'
    if msg.sender != tx.origin:
        revert with 0, 'Contracts not allowed**'
    if not sub_32f25827[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw: You did not made any investment yet'
    idx = 1
    s = 0
    while idx < sub_32f25827[msg.sender].field_256:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 1)
        if sub_32f25827[address(msg.sender)][idx].field_256 >= sub_32f25827[address(msg.sender)][idx].field_768:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(msg.sender, 1)
        if sub_32f25827[msg.sender][idx].field_512 > !timeStep:
            revert with 0, 17
        if block.timestamp <= sub_32f25827[msg.sender][idx].field_512 + timeStep:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if not idx:
            revert with 0, 'Invalid investment id'
        if idx >= sub_32f25827[address(msg.sender)].field_256:
            revert with 0, 'Invalid investment id'
        if block.timestamp < sub_32f25827[address(msg.sender)][idx].field_512:
            revert with 0, 17
        if sub_32f25827[address(msg.sender)][idx].field_1024 and block.timestamp - sub_32f25827[address(msg.sender)][idx].field_512 > -1 / sub_32f25827[address(msg.sender)][idx].field_1024:
            revert with 0, 17
        if not timeStep:
            revert with 0, 18
        if sub_32f25827[address(msg.sender)][idx].field_256 > !((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep):
            revert with 0, 17
        if sub_32f25827[address(msg.sender)][idx].field_256 + ((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep) <= sub_32f25827[address(msg.sender)][idx].field_768:
            sub_32f25827[address(msg.sender)][idx].field_512 = block.timestamp
            sub_32f25827[address(msg.sender)][idx].field_256 = (block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep
            mem[96] = (block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep
            emit NewWithdrawal(((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep), msg.sender);
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 1)
            if sub_32f25827[address(msg.sender)][idx].field_256 == sub_32f25827[address(msg.sender)][idx].field_768:
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 1)
                mem[96] = sub_32f25827[address(msg.sender)][idx].field_768
                emit LimitReached(sub_32f25827[address(msg.sender)][idx].field_768, msg.sender);
            if s > !((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep)
            continue 
        if sub_32f25827[address(msg.sender)][idx].field_768 < sub_32f25827[address(msg.sender)][idx].field_256:
            revert with 0, 17
        sub_32f25827[address(msg.sender)][idx].field_512 = block.timestamp
        sub_32f25827[address(msg.sender)][idx].field_256 = sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256
        mem[96] = sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256
        emit NewWithdrawal((sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256), msg.sender);
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 1)
        if sub_32f25827[address(msg.sender)][idx].field_256 == sub_32f25827[address(msg.sender)][idx].field_768:
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 1)
            mem[96] = sub_32f25827[address(msg.sender)][idx].field_768
            emit LimitReached(sub_32f25827[address(msg.sender)][idx].field_768, msg.sender);
        if s > !(sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256
        continue 
    if s < sub_8312f149:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw: Insufficient min withdrawal amount'
    if sub_32f25827[msg.sender].field_768 > !s:
        revert with 0, 17
    sub_32f25827[msg.sender].field_768 += s
    if totalWithdrawn > !s:
        revert with 0, 17
    totalWithdrawn += s
    if stor34:
        if s and stor34 > -1 / s:
            revert with 0, 17
        call insuranceAddress with:
           value s * stor34 / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s and stor34 > -1 / s:
            revert with 0, 17
        if sub_73be9b3e > !(s * stor34 / 1000):
            revert with 0, 17
        sub_73be9b3e += s * stor34 / 1000
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x6acde139(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x378efa37(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x24e4a3ab(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x1502906d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return timeStep
                    if unknown_0x181c5681(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_181c5681
                    if unknown_0x18af7611(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x20e6cb17(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if insuranceAddress != msg.sender:
                        revert with 0, 'Ownable: caller is not the insurance wallet'
                    call insuranceAddress with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_73be9b3e < arg1:
                        revert with 0, 17
                    sub_73be9b3e -= arg1
                    emit 0x29578112: arg1
                else:
                    if unknown_0x24e4a3ab(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if sub_32f25827[address(arg1)][arg2].field_256 >= sub_32f25827[address(arg1)][arg2].field_768:
                            return 0
                        return 1
                    if unknown_0x27ff1374(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalDeposited
                    if unknown_0x2d991538(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_641fba96, totalDeposited, totalWithdrawn, sub_73be9b3e
                    if unknown_0x32f25827(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        return sub_32f25827[address(arg1)][arg2].field_0, 
                               sub_32f25827[address(arg1)][arg2].field_256,
                               sub_32f25827[address(arg1)][arg2].field_768,
                               sub_32f25827[address(arg1)][arg2].field_1024
                    require unknown_0x33fda3bc(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if stor0 == 2:
                        revert with 0, 'ReentrancyGuard: Reentrant call'
                    stor0 = 2
                    if ext_code.size(msg.sender):
                        revert with 0, 'Contracts not allowed*'
                    if msg.sender != tx.origin:
                        revert with 0, 'Contracts not allowed**'
                    if not sub_32f25827[msg.sender].field_1280:
                        revert with 0, 'WithdrawReferralsBonus: Insufficient balance'
                    if sub_32f25827[msg.sender].field_1280 < sub_8312f149:
                        revert with 0, 'WithdrawReferralsBonus: Insufficient min withdrawal amount'
                    call msg.sender with:
                       value sub_32f25827[msg.sender].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_32f25827[msg.sender].field_1280 = 0
                    stor0 = 1
            else:
                if unknown_0x57ea89b6(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x378efa37(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 1000
                    if unknown_0x46804137(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bonusStep
                    if unknown_0x4788312f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalWithdrawn
                    if unknown_0x48f2af59(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return insuranceAddress
                    require unknown_0x575cea6b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_32f25827[address(arg1)].field_1536, 
                           sub_32f25827[address(arg1)].field_1792,
                           sub_32f25827[address(arg1)].field_2048,
                           sub_32f25827[address(arg1)].field_2304,
                           sub_32f25827[address(arg1)].field_2560
                if uint32(call.func_hash) >> 224 != unknown_0x57ea89b6(?????):
                    if unknown_0x609aab45(?????) == uint32(call.func_hash) >> 224:
                        if insuranceAddress != msg.sender:
                            revert with 0, 'Ownable: caller is not the insurance wallet'
                        if sub_73be9b3e > !msg.value:
                            revert with 0, 17
                        sub_73be9b3e += msg.value
                        emit 0xc3ee2ef9: msg.value
                    if unknown_0x641fba96(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_641fba96
                    if unknown_0x645006ca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return minDepositAmount
                    require unknown_0x6672ecde(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < 5
                    return sub_6672ecde[arg1]
                require not msg.value
                if stor0 == 2:
                    revert with 0, 'ReentrancyGuard: Reentrant call'
                stor0 = 2
                if ext_code.size(msg.sender):
                    revert with 0, 'Contracts not allowed*'
                if msg.sender != tx.origin:
                    revert with 0, 'Contracts not allowed**'
                if not sub_32f25827[msg.sender].field_256:
                    revert with 0, 'Withdraw: You did not made any investment yet'
                idx = 1
                s = 0
                while idx < sub_32f25827[msg.sender].field_256:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 1)
                    if sub_32f25827[address(msg.sender)][idx].field_256 >= sub_32f25827[address(msg.sender)][idx].field_768:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(msg.sender, 1)
                    if sub_32f25827[msg.sender][idx].field_512 > !timeStep:
                        revert with 0, 17
                    if block.timestamp <= sub_32f25827[msg.sender][idx].field_512 + timeStep:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if not idx:
                        revert with 0, 'Invalid investment id'
                    if idx >= sub_32f25827[address(msg.sender)].field_256:
                        revert with 0, 'Invalid investment id'
                    if block.timestamp < sub_32f25827[address(msg.sender)][idx].field_512:
                        revert with 0, 17
                    if sub_32f25827[address(msg.sender)][idx].field_1024 and block.timestamp - sub_32f25827[address(msg.sender)][idx].field_512 > -1 / sub_32f25827[address(msg.sender)][idx].field_1024:
                        revert with 0, 17
                    if not timeStep:
                        revert with 0, 18
                    if sub_32f25827[address(msg.sender)][idx].field_256 > !((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep):
                        revert with 0, 17
                    if sub_32f25827[address(msg.sender)][idx].field_256 + ((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep) <= sub_32f25827[address(msg.sender)][idx].field_768:
                        sub_32f25827[address(msg.sender)][idx].field_512 = block.timestamp
                        sub_32f25827[address(msg.sender)][idx].field_256 = (block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep
                        mem[128] = (block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep
                        emit NewWithdrawal(((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep), msg.sender);
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 1)
                        if sub_32f25827[address(msg.sender)][idx].field_256 == sub_32f25827[address(msg.sender)][idx].field_768:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 1)
                            mem[128] = sub_32f25827[address(msg.sender)][idx].field_768
                            emit LimitReached(sub_32f25827[address(msg.sender)][idx].field_768, msg.sender);
                        if s > !((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((block.timestamp * sub_32f25827[address(msg.sender)][idx].field_1024) - (sub_32f25827[address(msg.sender)][idx].field_512 * sub_32f25827[address(msg.sender)][idx].field_1024) / timeStep)
                        continue 
                    if sub_32f25827[address(msg.sender)][idx].field_768 < sub_32f25827[address(msg.sender)][idx].field_256:
                        revert with 0, 17
                    sub_32f25827[address(msg.sender)][idx].field_512 = block.timestamp
                    sub_32f25827[address(msg.sender)][idx].field_256 = sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256
                    mem[128] = sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256
                    emit NewWithdrawal((sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256), msg.sender);
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 1)
                    if sub_32f25827[address(msg.sender)][idx].field_256 == sub_32f25827[address(msg.sender)][idx].field_768:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 1)
                        mem[128] = sub_32f25827[address(msg.sender)][idx].field_768
                        emit LimitReached(sub_32f25827[address(msg.sender)][idx].field_768, msg.sender);
                    if s > !(sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_32f25827[address(msg.sender)][idx].field_768 - sub_32f25827[address(msg.sender)][idx].field_256
                    continue 
                if s < sub_8312f149:
                    revert with 0, 'Withdraw: Insufficient min withdrawal amount'
                if sub_32f25827[msg.sender].field_768 > !s:
                    revert with 0, 17
                sub_32f25827[msg.sender].field_768 += s
                if totalWithdrawn > !s:
                    revert with 0, 17
                totalWithdrawn += s
                if stor34:
                    if s and stor34 > -1 / s:
                        revert with 0, 17
                    call insuranceAddress with:
                       value s * stor34 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s and stor34 > -1 / s:
                        revert with 0, 17
                    if sub_73be9b3e > !(s * stor34 / 1000):
                        revert with 0, 17
                    sub_73be9b3e += s * stor34 / 1000
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor0 = 1
        else:
            if unknown_0x99b956a0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8904194f(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x8904194f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < 24
                        return sub_8904194f[arg1]
                    if unknown_0x89cf3204(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return insuranceAddress
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x8ed83271(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return maxDepositAmount
                    require unknown_0x99044f7c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_32f25827[address(arg1)].field_1280, sub_32f25827[address(arg1)].field_512, sub_32f25827[address(arg1)].field_768
                if unknown_0x6acde139(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner wallet'
                    minDepositAmount = arg1
                    maxDepositAmount = arg2
                    emit 0x74662421: arg1, arg2
                else:
                    if unknown_0x6f9fb98a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    if unknown_0x73be9b3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_73be9b3e
                    if unknown_0x8312f149(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_8312f149
                    require unknown_0x8408e78b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner wallet'
                    sub_fe2fec24 = arg1
                    emit 0xa0652c2c: arg1
            else:
                if unknown_0xde3ef86a(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xde3ef86a(?????):
                        if unknown_0xeabfe431(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner wallet'
                            sub_181c5681 = arg1
                            bonusStep = arg2
                            emit 0x81f78a7f: arg1, arg2
                        if unknown_0xf38d0c42(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner wallet'
                            sub_8312f149 = arg1
                            emit 0x341ba91d: arg1
                        if uint32(call.func_hash) >> 224 != unknown_0xfd169936(?????):
                            require unknown_0xfe2fec24(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_fe2fec24
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        idx = 1
                        s = 0
                        t = 0
                        while idx < sub_32f25827[address(arg1)].field_256:
                            mem[0] = idx
                            mem[32] = sha3(address(arg1), 1)
                            if sub_32f25827[address(arg1)][idx].field_256 >= sub_32f25827[address(arg1)][idx].field_768:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if block.timestamp < sub_32f25827[address(arg1)][idx].field_512:
                                revert with 0, 17
                            if sub_32f25827[address(arg1)][idx].field_1024 and block.timestamp - sub_32f25827[address(arg1)][idx].field_512 > -1 / sub_32f25827[address(arg1)][idx].field_1024:
                                revert with 0, 17
                            if not timeStep:
                                revert with 0, 18
                            mem[0] = idx
                            mem[32] = sha3(address(arg1), 1)
                            if sub_32f25827[address(arg1)][idx].field_256 > !((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep):
                                revert with 0, 17
                            if sub_32f25827[address(arg1)][idx].field_256 + ((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep) <= sub_32f25827[address(arg1)][idx].field_768:
                                if t > !((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep
                                t = t + ((block.timestamp * sub_32f25827[address(arg1)][idx].field_1024) - (sub_32f25827[address(arg1)][idx].field_512 * sub_32f25827[address(arg1)][idx].field_1024) / timeStep)
                                continue 
                            mem[0] = idx
                            mem[32] = sha3(address(arg1), 1)
                            if sub_32f25827[address(arg1)][idx].field_768 < sub_32f25827[address(arg1)][idx].field_256:
                                revert with 0, 17
                            if t > !(sub_32f25827[address(arg1)][idx].field_768 - sub_32f25827[address(arg1)][idx].field_256):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = sub_32f25827[address(arg1)][idx].field_768 - sub_32f25827[address(arg1)][idx].field_256
                            t = t + sub_32f25827[address(arg1)][idx].field_768 - sub_32f25827[address(arg1)][idx].field_256
                            continue 
                        return t
                    require not msg.value
                    if stor0 == 2:
                        revert with 0, 'ReentrancyGuard: Reentrant call'
                    stor0 = 2
                    if ext_code.size(msg.sender):
                        revert with 0, 'Contracts not allowed*'
                    if msg.sender != tx.origin:
                        revert with 0, 'Contracts not allowed**'
                    if not sub_32f25827[msg.sender].field_1280:
                        revert with 0, 'ReInvestReferralsBonus: Insufficient balance'
                    if sub_32f25827[msg.sender].field_256 > sub_fe2fec24:
                        revert with 0, 'ReInvestReferralsBonus: Investment Limit reached'
                    if sub_32f25827[msg.sender].field_1280 < minDepositAmount:
                        revert with 0, 'ReInvestReferralsBonus: Invalid amount'
                    if sub_32f25827[msg.sender].field_1280 > maxDepositAmount:
                        revert with 0, 'ReInvestReferralsBonus: Invalid amount'
                    if sub_32f25827[address(msg.sender)].field_256 == -1:
                        revert with 0, 17
                    sub_32f25827[address(msg.sender)].field_256++
                    if sub_32f25827[address(msg.sender)].field_256 + 1 == 1:
                        if sub_641fba96 == -1:
                            revert with 0, 17
                        sub_641fba96++
                        sub_32f25827[address(msg.sender)].field_1024 = sub_32f25827[msg.sender].field_1024
                    if bonusStep and 0 > -1 / bonusStep:
                        revert with 0, 17
                    if sub_181c5681 > -1:
                        revert with 0, 17
                    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_512 = block.timestamp
                    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_0 = sub_32f25827[msg.sender].field_1280
                    if sub_32f25827[msg.sender].field_1280 and sub_181c5681 > -1 / sub_32f25827[msg.sender].field_1280:
                        revert with 0, 17
                    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 = sub_32f25827[msg.sender].field_1280 * sub_181c5681 / 1000
                    if not sub_8904194f.length:
                        revert with 0, 18
                    sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_1024 = sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 / sub_8904194f.length
                    if sub_32f25827[address(msg.sender)].field_512 > !sub_32f25827[msg.sender].field_1280:
                        revert with 0, 17
                    sub_32f25827[address(msg.sender)].field_512 += sub_32f25827[msg.sender].field_1280
                    if sub_32f25827[address(msg.sender)].field_256 == -1:
                        revert with 0, 17
                    sub_32f25827[address(msg.sender)].field_256++
                    if totalDeposited > !sub_32f25827[msg.sender].field_1280:
                        revert with 0, 17
                    totalDeposited += sub_32f25827[msg.sender].field_1280
                    if sub_32f25827[msg.sender].field_1280 and stor33 > -1 / sub_32f25827[msg.sender].field_1280:
                        revert with 0, 17
                    call owner with:
                       value sub_32f25827[msg.sender].field_1280 * stor33 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit NewInvestment(sub_32f25827[msg.sender].field_1280, msg.sender);
                    if sub_32f25827[address(msg.sender)].field_1024:
                        idx = 0
                        s = sub_32f25827[address(msg.sender)].field_1024
                        while idx < 5:
                            if not address(s):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if idx >= 5:
                                revert with 0, 50
                            if 1 == sub_32f25827[address(msg.sender)].field_256 + 1:
                                if sub_32f25827[address(s)][idx].field_1536 > -2:
                                    revert with 0, 17
                                sub_32f25827[address(s)][idx].field_1536++
                            if sub_32f25827[msg.sender].field_1280 and sub_6672ecde[idx] > -1 / sub_32f25827[msg.sender].field_1280:
                                revert with 0, 17
                            if sub_32f25827[address(s)].field_1280 > !(sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000):
                                revert with 0, 17
                            mem[32] = 1
                            sub_32f25827[address(s)].field_1280 += sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000
                            mem[0] = msg.sender
                            if idx >= 5:
                                revert with 0, 50
                            if sub_32f25827[msg.sender].field_1280 and sub_6672ecde[idx] > -1 / sub_32f25827[msg.sender].field_1280:
                                revert with 0, 17
                            mem[128] = sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000
                            emit ReferralPayout((sub_32f25827[msg.sender].field_1280 * sub_6672ecde[idx] / 1000), sub_32f25827[msg.sender].field_1024, msg.sender);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = sub_32f25827[address(s)].field_1024
                            continue 
                    sub_32f25827[msg.sender].field_1280 = 0
                    stor0 = 1
                else:
                    if unknown_0x99b956a0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return sub_32f25827[arg1].field_256, 
                               sub_32f25827[arg1].field_512,
                               sub_32f25827[arg1].field_768,
                               sub_32f25827[arg1].field_1024,
                               sub_32f25827[arg1].field_1280
                    if unknown_0xa79a416d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner wallet'
                        stor33 = arg1
                        emit 0x7944cc49: arg1
                    else:
                        if unknown_0xc4f2b3e4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner wallet'
                            stor34 = arg1
                            emit 0x2789993b: arg1
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0xd90d253a(?????):
                                require unknown_0xdc4aa43f(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 64
                                if bonusStep and arg2 > -1 / bonusStep:
                                    revert with 0, 17
                                if sub_181c5681 > !(bonusStep * arg2):
                                    revert with 0, 17
                                if arg1 and sub_181c5681 + (bonusStep * arg2) > -1 / arg1:
                                    revert with 0, 17
                                if arg2 >= 24:
                                    revert with 0, 50
                                if not sub_8904194f[arg2]:
                                    revert with 0, 18
                                return sub_181c5681 + (bonusStep * arg2), 
                                       (sub_181c5681 * arg1) + (bonusStep * arg2 * arg1) / 1000,
                                       (sub_181c5681 * arg1) + (bonusStep * arg2 * arg1) / 1000 / sub_8904194f[arg2]
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if stor0 == 2:
                                revert with 0, 'ReentrancyGuard: Reentrant call'
                            stor0 = 2
                            if ext_code.size(msg.sender):
                                revert with 0, 'Contracts not allowed*'
                            if msg.sender != tx.origin:
                                revert with 0, 'Contracts not allowed**'
                            if msg.sender == owner:
                                if sub_32f25827[msg.sender].field_256 > sub_fe2fec24:
                                    revert with 0, 'Ivestment Limit reached'
                                if msg.value < minDepositAmount:
                                    revert with 0, 'Deposited amount must be within min and max'
                                if msg.value > maxDepositAmount:
                                    revert with 0, 'Deposited amount must be within min and max'
                                if arg2 >= 24:
                                    revert with 0, 'Invalid ivestment duration.'
                                if sub_32f25827[address(msg.sender)].field_256 == -1:
                                    revert with 0, 17
                                sub_32f25827[address(msg.sender)].field_256++
                                if sub_32f25827[address(msg.sender)].field_256 + 1 == 1:
                                    if sub_641fba96 == -1:
                                        revert with 0, 17
                                    sub_641fba96++
                                    sub_32f25827[address(msg.sender)].field_1024 = 0
                            else:
                                if address(arg1) == msg.sender:
                                    revert with 0, 'Upline required'
                                if not address(arg1):
                                    revert with 0, 'Upline required'
                                if sub_32f25827[msg.sender].field_256 > sub_fe2fec24:
                                    revert with 0, 'Ivestment Limit reached'
                                if msg.value < minDepositAmount:
                                    revert with 0, 'Deposited amount must be within min and max'
                                if msg.value > maxDepositAmount:
                                    revert with 0, 'Deposited amount must be within min and max'
                                if arg2 >= 24:
                                    revert with 0, 'Invalid ivestment duration.'
                                if sub_32f25827[address(msg.sender)].field_256 == -1:
                                    revert with 0, 17
                                sub_32f25827[address(msg.sender)].field_256++
                                if sub_32f25827[address(msg.sender)].field_256 + 1 == 1:
                                    if sub_641fba96 == -1:
                                        revert with 0, 17
                                    sub_641fba96++
                                    sub_32f25827[address(msg.sender)].field_1024 = address(arg1)
                            if bonusStep and arg2 > -1 / bonusStep:
                                revert with 0, 17
                            if sub_181c5681 > !(bonusStep * arg2):
                                revert with 0, 17
                            sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_512 = block.timestamp
                            sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_0 = msg.value
                            if msg.value and sub_181c5681 + (bonusStep * arg2) > -1 / msg.value:
                                revert with 0, 17
                            sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 = (sub_181c5681 * msg.value) + (bonusStep * arg2 * msg.value) / 1000
                            if arg2 >= 24:
                                revert with 0, 50
                            if not sub_8904194f[arg2]:
                                revert with 0, 18
                            sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_1024 = sub_32f25827[address(msg.sender)][sub_32f25827[address(msg.sender)].field_256 + 1].field_768 / sub_8904194f[arg2]
                            if sub_32f25827[address(msg.sender)].field_512 > !msg.value:
                                revert with 0, 17
                            sub_32f25827[address(msg.sender)].field_512 += msg.value
                            if sub_32f25827[address(msg.sender)].field_256 == -1:
                                revert with 0, 17
                            sub_32f25827[address(msg.sender)].field_256++
                            if totalDeposited > !msg.value:
                                revert with 0, 17
                            totalDeposited += msg.value
                            if msg.value and stor33 > -1 / msg.value:
                                revert with 0, 17
                            call owner with:
                               value msg.value * stor33 / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit NewInvestment(msg.value, msg.sender);
                            if sub_32f25827[address(msg.sender)].field_1024:
                                idx = 0
                                s = sub_32f25827[address(msg.sender)].field_1024
                                while idx < 5:
                                    if not address(s):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if idx >= 5:
                                        revert with 0, 50
                                    if 1 == sub_32f25827[address(msg.sender)].field_256 + 1:
                                        if sub_32f25827[address(s)][idx].field_1536 > -2:
                                            revert with 0, 17
                                        sub_32f25827[address(s)][idx].field_1536++
                                    if msg.value and sub_6672ecde[idx] > -1 / msg.value:
                                        revert with 0, 17
                                    if sub_32f25827[address(s)].field_1280 > !(msg.value * sub_6672ecde[idx] / 1000):
                                        revert with 0, 17
                                    mem[32] = 1
                                    sub_32f25827[address(s)].field_1280 += msg.value * sub_6672ecde[idx] / 1000
                                    mem[0] = msg.sender
                                    if idx >= 5:
                                        revert with 0, 50
                                    if msg.value and sub_6672ecde[idx] > -1 / msg.value:
                                        revert with 0, 17
                                    mem[128] = msg.value * sub_6672ecde[idx] / 1000
                                    emit ReferralPayout((msg.value * sub_6672ecde[idx] / 1000), sub_32f25827[msg.sender].field_1024, msg.sender);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = sub_32f25827[address(s)].field_1024
                                    continue 
                            stor0 = 1
}



}
