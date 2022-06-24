contract main {




// =====================  Runtime code  =====================


uint256 MIN_WITHDRAW;
uint256 INVEST_MIN_AMOUNT;
uint256 totalUsers;
uint256 totalInvested;
uint256 totalWithdrawn;
uint256 totalDeposits;
uint256 adminfee;
address adminAddress;
mapping of struct userTotalDeposits;

function totalWithdrawn() {
    return totalWithdrawn
}

function totalInvested() {
    return totalInvested
}

function totalDeposits() {
    return totalDeposits
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userTotalDeposits[address(arg1)].field_0
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return userTotalDeposits[arg1].field_0, 
           userTotalDeposits[arg1].field_256,
           userTotalDeposits[arg1].field_512,
           userTotalDeposits[arg1].field_768
}

function adminfee() {
    return adminfee
}

function totalUsers() {
    return totalUsers
}

function INVEST_MIN_AMOUNT() {
    return INVEST_MIN_AMOUNT
}

function admin() {
    return adminAddress
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return userTotalDeposits[address(arg1)].field_768
}

function MIN_WITHDRAW() {
    return MIN_WITHDRAW
}

function _fallback() payable {
    revert
}

function contractInfo() {
    return totalUsers, totalInvested, totalWithdrawn
}

function update_fee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'permission denied!'
    adminfee = arg1
}

function update_invest(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'permission denied!'
    INVEST_MIN_AMOUNT = arg1
}

function update_min_withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'permission denied!'
    MIN_WITHDRAW = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'permission denied!'
    if userTotalDeposits[address(arg1)].field_768 + arg2 < userTotalDeposits[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    userTotalDeposits[address(arg1)].field_768 += arg2
    if totalWithdrawn + arg2 < totalWithdrawn:
        revert with 0, 'SafeMath: addition overflow'
    totalWithdrawn += arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(arg2, arg1);
}

function invest(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msg.sender) <= 0
    require msg.sender == tx.origin
    if msg.value < INVEST_MIN_AMOUNT:
        revert with 0, 'Min invesment'
    if not userTotalDeposits[address(msg.sender)].field_512:
        if userTotalDeposits[address(arg1)].field_0 > 0:
            if arg1 != msg.sender:
                userTotalDeposits[address(msg.sender)].field_512 = arg1
        else:
            if arg1 == adminAddress:
                if arg1 != msg.sender:
                    userTotalDeposits[address(msg.sender)].field_512 = arg1
        if not userTotalDeposits[address(msg.sender)].field_512:
            if adminAddress != msg.sender:
                revert with 0, 'No upline'
    if not userTotalDeposits[address(msg.sender)].field_0:
        userTotalDeposits[address(msg.sender)].field_256 = block.timestamp
        if totalUsers + 1 < totalUsers:
            revert with 0, 'SafeMath: addition overflow'
        totalUsers++
    if not msg.value:
        call adminAddress with:
             gas 2300 wei
    else:
        require msg.value
        if msg.value * adminfee / msg.value != adminfee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call adminAddress with:
           value msg.value * adminfee / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userTotalDeposits[address(msg.sender)].field_0 + msg.value < userTotalDeposits[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userTotalDeposits[address(msg.sender)].field_0 += msg.value
    if totalInvested + msg.value < totalInvested:
        revert with 0, 'SafeMath: addition overflow'
    totalInvested += msg.value
    if totalDeposits + 1 < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits++
    emit NewDeposit(msg.value, msg.sender, userTotalDeposits[address(msg.sender)].field_512);
}



}
