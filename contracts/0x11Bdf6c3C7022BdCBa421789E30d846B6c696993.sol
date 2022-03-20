contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - deposit(address arg1)
#  - reinvest()
#
const decimals = 6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 maxTokenSupply;
array of uint256 name;
array of uint256 symbol;
uint256 totalPlayers;
uint256 totalPayout;
uint256 totalInvested;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 sub_8b5d0634;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;
uint256 stor20;
uint256 commissionDivisor;
uint256 stor23;
uint256 stor24;
uint256 stor25;
address stor27;
mapping of struct players;

function name() {
    return name[0 len name.length]
}

function sub_0abc5a2b(?) {
    return maxTokenSupply
}

function totalSupply() {
    return totalSupply
}

function totalPayout() {
    return totalPayout
}

function commissionDivisor() {
    return commissionDivisor
}

function maxTokenSupply() {
    return maxTokenSupply
}

function totalInvested() {
    return totalInvested
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8b5d0634(?) {
    return sub_8b5d0634
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function players(address arg1) {
    require calldata.size - 4 >= 32
    return players[arg1].field_0, 
           players[arg1].field_256,
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280,
           players[arg1].field_1536,
           players[arg1].field_1792,
           players[arg1].field_2048,
           players[arg1].field_2304,
           players[arg1].field_2560,
           players[arg1].field_2816,
           players[arg1].field_3072
}

function totalPlayers() {
    return totalPlayers
}

function _fallback() payable {
  stop
}

function sub_6be49f2c(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor19 = arg1
}

function sub_6c22b047(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor20 = arg1
}

function sub_9745273f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor17 = arg1
}

function sub_a411e9f2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor15 = arg1
}

function sub_ab0519b2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor16 = arg1
}

function sub_bad0c0c4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor23 = arg1
}

function sub_eed19be3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor18 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor27 = arg1
}

function setMinuteRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor24 = arg1
}

function setReleaseTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    stor25 = arg1
}

function setInterest(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    sub_8b5d0634 = arg1
}

function sub_3de90794(?) {
    require calldata.size - 4 >= 32
    if balanceOf[address(arg1)] >= 10^9:
        if balanceOf[address(arg1)] < 5 * 10^9:
            return 2
    if balanceOf[address(arg1)] < 5 * 10^9:
        return 1
    return 3
}

function sub_48d478ef(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor25:
        revert with 0, 'Not yet launched!'
    require msg.value >= stor9
    if totalInvested + arg1 < totalInvested:
        revert with 0, 'SafeMath: addition overflow'
    totalInvested += arg1
}

function sub_f715e658(?) {
    require calldata.size - 4 >= 32
    if stor27 != msg.sender:
        revert with 0, 'invalid value'
    call stor27 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function _burnTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6545524332303a2043616e6e6f74206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[204 len 24]
    require msg.sender == arg1
    require arg2 <= balanceOf[address(arg1)]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Burn amount exceeds your balance'
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    if arg2 > maxTokenSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    maxTokenSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_f2ff85e1(?) {
    require calldata.size - 4 >= 64
    if block.timestamp < stor25:
        revert with 0, 'Not yet launched!'
    require msg.sender == stor27
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7354524332303a2043616e6e6f74206d696e7420746f20746865207a65726f20616464726573,
                    mem[202 len 26]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 <= maxTokenSupply:
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
    else:
        if totalSupply > maxTokenSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if maxTokenSupply - totalSupply > 0:
            if maxTokenSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply = maxTokenSupply
            if balanceOf[address(arg1)] + maxTokenSupply - totalSupply < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + maxTokenSupply - totalSupply
            emit Transfer((maxTokenSupply - totalSupply), 0, arg1);
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 233 len 27]
    if not arg1:
        revert with 0, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 231 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[ceil32(arg3.length) + 198 len 26],
                    mem[ceil32(arg3.length) + 250 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onTokenTransfer(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_dd7b2719(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor25:
        revert with 0, 'Not yet launched!'
    require arg1 >= stor9
    require stor23 > 0
    if not msg.sender:
        revert with 0, 32, 38, 0x7354524332303a2043616e6e6f74206d696e7420746f20746865207a65726f20616464726573, mem[266 len 26]
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg1 <= maxTokenSupply:
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        if totalInvested + arg1 < totalInvested:
            revert with 0, 'SafeMath: addition overflow'
        totalInvested += arg1
        if not arg1:
            if commissionDivisor <= 0:
                revert with 0, 'SafeMath: division by zero'
            require commissionDivisor
            if not arg1:
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1
                if arg1 * stor12 / arg1 != stor12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
        else:
            require arg1
            if arg1 * stor11 / arg1 != stor11:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if commissionDivisor <= 0:
                revert with 0, 'SafeMath: division by zero'
            require commissionDivisor
            if not arg1:
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1
                if arg1 * stor12 / arg1 != stor12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
    else:
        if totalSupply > maxTokenSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if maxTokenSupply - totalSupply > 0:
            if maxTokenSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply = maxTokenSupply
            if balanceOf[address(msg.sender)] + maxTokenSupply - totalSupply < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + maxTokenSupply - totalSupply
            emit Transfer((maxTokenSupply - totalSupply), 0, msg.sender);
        if totalInvested + arg1 < totalInvested:
            revert with 0, 'SafeMath: addition overflow'
        totalInvested += arg1
        if not arg1:
            if commissionDivisor <= 0:
                revert with 0, 'SafeMath: division by zero'
            require commissionDivisor
            if not arg1:
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1
                if arg1 * stor12 / arg1 != stor12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
        else:
            require arg1
            if arg1 * stor11 / arg1 != stor11:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if commissionDivisor <= 0:
                revert with 0, 'SafeMath: division by zero'
            require commissionDivisor
            if not arg1:
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1
                if arg1 * stor12 / arg1 != stor12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if commissionDivisor <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require commissionDivisor
                if not arg1:
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 0 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                else:
                    require arg1
                    if 90 * arg1 / arg1 != 90:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if commissionDivisor <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require commissionDivisor
                    call stor15 with:
                       value arg1 * stor11 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor16 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor17 with:
                       value arg1 * stor12 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
                    call stor18 with:
                       value 90 * arg1 / commissionDivisor wei
                         gas 2300 * is_zero(value) wei
}

function getProfit(address arg1) {
    require calldata.size - 4 >= 32
    require players[address(arg1)].field_256 > 0
    if players[address(arg1)].field_256 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - players[address(arg1)].field_256 > 0:
        if balanceOf[address(arg1)] < 10^9:
            if balanceOf[address(arg1)] < 5 * 10^9:
                if not stor24:
                    if block.timestamp - players[address(arg1)].field_256:
                        require block.timestamp - players[address(arg1)].field_256
                        if 0 / block.timestamp - players[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if players[address(arg1)].field_0:
                        require players[address(arg1)].field_0
                        if 0 / players[address(arg1)].field_0:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor10 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor10
                    if not players[address(arg1)].field_0:
                        if commissionDivisor <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require commissionDivisor
                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / stor10) + players[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                            if 0 / stor10 <= eth.balance(this.address):
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / stor10) + players[address(arg1)].field_512)
                        else:
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                    if players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require players[address(arg1)].field_0
                        if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if commissionDivisor <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require commissionDivisor
                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / stor10) + players[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                            if 0 / stor10 <= eth.balance(this.address):
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / stor10) + players[address(arg1)].field_512)
                        else:
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                    if players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                else:
                    require stor24
                    if stor24 / stor24 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.timestamp - players[address(arg1)].field_256:
                        if players[address(arg1)].field_0:
                            require players[address(arg1)].field_0
                            if 0 / players[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor10 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor10
                        if not players[address(arg1)].field_0:
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require block.timestamp - players[address(arg1)].field_256
                        if (block.timestamp * stor24) - (players[address(arg1)].field_256 * stor24) / block.timestamp - players[address(arg1)].field_256 != stor24:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not players[address(arg1)].field_0:
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / players[address(arg1)].field_0 != (block.timestamp * stor24) - (players[address(arg1)].field_256 * stor24):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                        if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return (((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                        if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return (((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
            else:
                if not stor24:
                    if block.timestamp - players[address(arg1)].field_256:
                        require block.timestamp - players[address(arg1)].field_256
                        if 0 / block.timestamp - players[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if players[address(arg1)].field_0:
                        require players[address(arg1)].field_0
                        if 0 / players[address(arg1)].field_0:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor10 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor10
                    if not players[address(arg1)].field_0:
                        if commissionDivisor <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require commissionDivisor
                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / stor10) + players[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                            if 0 / stor10 <= eth.balance(this.address):
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / stor10) + players[address(arg1)].field_512)
                        else:
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                    if players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require players[address(arg1)].field_0
                        if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if commissionDivisor <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require commissionDivisor
                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / stor10) + players[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                            if 0 / stor10 <= eth.balance(this.address):
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / stor10) + players[address(arg1)].field_512)
                        else:
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                    if players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                else:
                    require stor24
                    if 3 * stor24 / stor24 != 3:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.timestamp - players[address(arg1)].field_256:
                        if players[address(arg1)].field_0:
                            require players[address(arg1)].field_0
                            if 0 / players[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor10 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor10
                        if not players[address(arg1)].field_0:
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require block.timestamp - players[address(arg1)].field_256
                        if (3 * block.timestamp * stor24) - (3 * players[address(arg1)].field_256 * stor24) / block.timestamp - players[address(arg1)].field_256 != 3 * stor24:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not players[address(arg1)].field_0:
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / players[address(arg1)].field_0 != (3 * block.timestamp * stor24) - (3 * players[address(arg1)].field_256 * stor24):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                        if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return (((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                        if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return (((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
        else:
            if balanceOf[address(arg1)] < 5 * 10^9:
                if not stor24:
                    if block.timestamp - players[address(arg1)].field_256:
                        require block.timestamp - players[address(arg1)].field_256
                        if 0 / block.timestamp - players[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if players[address(arg1)].field_0:
                        require players[address(arg1)].field_0
                        if 0 / players[address(arg1)].field_0:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor10 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor10
                    if not players[address(arg1)].field_0:
                        if commissionDivisor <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require commissionDivisor
                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / stor10) + players[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                            if 0 / stor10 <= eth.balance(this.address):
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / stor10) + players[address(arg1)].field_512)
                        else:
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                    if players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require players[address(arg1)].field_0
                        if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if commissionDivisor <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require commissionDivisor
                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / stor10) + players[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                            if 0 / stor10 <= eth.balance(this.address):
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / stor10) + players[address(arg1)].field_512)
                        else:
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                    if players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                else:
                    require stor24
                    if 2 * stor24 / stor24 != 2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.timestamp - players[address(arg1)].field_256:
                        if players[address(arg1)].field_0:
                            require players[address(arg1)].field_0
                            if 0 / players[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor10 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor10
                        if not players[address(arg1)].field_0:
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require block.timestamp - players[address(arg1)].field_256
                        if (block.timestamp * 2 * stor24) - (players[address(arg1)].field_256 * 2 * stor24) / block.timestamp - players[address(arg1)].field_256 != 2 * stor24:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not players[address(arg1)].field_0:
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / players[address(arg1)].field_0 != (block.timestamp * 2 * stor24) - (players[address(arg1)].field_256 * 2 * stor24):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                        if ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return (((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                        if ((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return (((block.timestamp * 2 * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * 2 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
            else:
                if balanceOf[address(arg1)] < 5 * 10^9:
                    if not stor24:
                        if block.timestamp - players[address(arg1)].field_256:
                            require block.timestamp - players[address(arg1)].field_256
                            if 0 / block.timestamp - players[address(arg1)].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if players[address(arg1)].field_0:
                            require players[address(arg1)].field_0
                            if 0 / players[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor10 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor10
                        if not players[address(arg1)].field_0:
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require stor24
                        if stor24 / stor24 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not block.timestamp - players[address(arg1)].field_256:
                            if players[address(arg1)].field_0:
                                require players[address(arg1)].field_0
                                if 0 / players[address(arg1)].field_0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require block.timestamp - players[address(arg1)].field_256
                            if (block.timestamp * stor24) - (players[address(arg1)].field_256 * stor24) / block.timestamp - players[address(arg1)].field_256 != stor24:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not players[address(arg1)].field_0:
                                if stor10 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor10
                                if not players[address(arg1)].field_0:
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                        if 0 / stor10 <= eth.balance(this.address):
                                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                                else:
                                    require players[address(arg1)].field_0
                                    if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        if 0 / stor10 <= eth.balance(this.address):
                                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / players[address(arg1)].field_0 != (block.timestamp * stor24) - (players[address(arg1)].field_256 * stor24):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if stor10 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor10
                                if not players[address(arg1)].field_0:
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                        if (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                            if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return (((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                                else:
                                    require players[address(arg1)].field_0
                                    if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        if (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                            if ((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return (((block.timestamp * stor24 * players[address(arg1)].field_0) - (players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                else:
                    if not stor24:
                        if block.timestamp - players[address(arg1)].field_256:
                            require block.timestamp - players[address(arg1)].field_256
                            if 0 / block.timestamp - players[address(arg1)].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if players[address(arg1)].field_0:
                            require players[address(arg1)].field_0
                            if 0 / players[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor10 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor10
                        if not players[address(arg1)].field_0:
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require players[address(arg1)].field_0
                            if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if commissionDivisor <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require commissionDivisor
                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                if 0 / stor10 <= eth.balance(this.address):
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return ((0 / stor10) + players[address(arg1)].field_512)
                            else:
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                        if players[address(arg1)].field_512 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                    else:
                        require stor24
                        if 3 * stor24 / stor24 != 3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not block.timestamp - players[address(arg1)].field_256:
                            if players[address(arg1)].field_0:
                                require players[address(arg1)].field_0
                                if 0 / players[address(arg1)].field_0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor10 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor10
                            if not players[address(arg1)].field_0:
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if commissionDivisor <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require commissionDivisor
                                if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                    if 0 / stor10 <= eth.balance(this.address):
                                        if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                            revert with 0, 'SafeMath: addition overflow'
                                        return ((0 / stor10) + players[address(arg1)].field_512)
                                else:
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                            if players[address(arg1)].field_512 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                        else:
                            require block.timestamp - players[address(arg1)].field_256
                            if (3 * block.timestamp * stor24) - (3 * players[address(arg1)].field_256 * stor24) / block.timestamp - players[address(arg1)].field_256 != 3 * stor24:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not players[address(arg1)].field_0:
                                if stor10 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor10
                                if not players[address(arg1)].field_0:
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                        if 0 / stor10 <= eth.balance(this.address):
                                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                                else:
                                    require players[address(arg1)].field_0
                                    if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (0 / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + (0 / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        if 0 / stor10 <= eth.balance(this.address):
                                            if (0 / stor10) + players[address(arg1)].field_512 < 0 / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return ((0 / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                            else:
                                require players[address(arg1)].field_0
                                if (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / players[address(arg1)].field_0 != (3 * block.timestamp * stor24) - (3 * players[address(arg1)].field_256 * stor24):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if stor10 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor10
                                if not players[address(arg1)].field_0:
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= 0 / commissionDivisor:
                                        if (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                            if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return (((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > 0 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((0 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
                                else:
                                    require players[address(arg1)].field_0
                                    if players[address(arg1)].field_0 * sub_8b5d0634 / players[address(arg1)].field_0 != sub_8b5d0634:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if commissionDivisor <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require commissionDivisor
                                    if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 < players[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if players[address(arg1)].field_1024 + players[address(arg1)].field_768 + ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 <= players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                        if (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10 <= eth.balance(this.address):
                                            if ((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512 < (3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10:
                                                revert with 0, 'SafeMath: addition overflow'
                                            return (((3 * block.timestamp * stor24 * players[address(arg1)].field_0) - (3 * players[address(arg1)].field_256 * stor24 * players[address(arg1)].field_0) / stor10) + players[address(arg1)].field_512)
                                    else:
                                        if players[address(arg1)].field_1024 + players[address(arg1)].field_768 > players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 > 0:
                                            if (players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 <= eth.balance(this.address):
                                                if players[address(arg1)].field_512 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                return ((players[address(arg1)].field_0 * sub_8b5d0634 / commissionDivisor) - players[address(arg1)].field_1024 - players[address(arg1)].field_768 + players[address(arg1)].field_512)
    if players[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return players[address(arg1)].field_512
}



}
