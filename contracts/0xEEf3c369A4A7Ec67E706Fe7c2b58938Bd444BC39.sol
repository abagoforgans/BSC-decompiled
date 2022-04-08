contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 startDate;
uint256 bonusEnds;
uint256 bonusEnds1;
uint256 bonusEnds2;
uint256 bonusEnds3;
uint256 endDate;
uint256 hardcap;
uint256 forAirdrop;
address stor14;
address owner;

function bonusEnds3() {
    return bonusEnds3
}

function name() {
    return name[0 len name.length]
}

function startDate() {
    return startDate
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function bonusEnds1() {
    return bonusEnds1
}

function bonusEnds() {
    return bonusEnds
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function hardcap() {
    return hardcap
}

function endDate() {
    return endDate
}

function forAirdrop() {
    return forAirdrop
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function bonusEnds2() {
    return bonusEnds2
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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
                    0x2145524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function forAirdropv1(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x735468652072657761726420666f7220612053454120686f6c6465727320796f752063616e206f6e6c792067657420312074696d65,
                    mem[217 len 11]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + forAirdrop < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += forAirdrop
    if balanceOf[address(arg1)] + forAirdrop < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += forAirdrop
    emit Transfer(forAirdrop, 0, arg1);
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
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
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

function GetSEAform(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp > endDate:
        revert with 0, 'Pre-sale of tokens is completed!'
    else:
        if totalSupply > hardcap:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x734d6178696d756d2070726573616c6520746f6b656e73202d203130302c30303020534541,
                        mem[201 len 27]
        else:
            if block.timestamp > bonusEnds:
                if block.timestamp >= bonusEnds1:
                    if block.timestamp <= bonusEnds1:
                        if block.timestamp <= bonusEnds2:
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    call stor14 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        emit Transfer(0, 0, msg.sender);
                                        if msg.sender == arg1:
                                        else:
                                            if not arg1:
                                            else:
                                                if balanceOf[address(arg1)] < 1000 * 10^18:
                                                    if balanceOf[address(arg1)] < 500 * 10^18:
                                                        if balanceOf[address(arg1)] < 200 * 10^18:
                                                            if totalSupply < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    emit Transfer(0, 0, arg1);
                                                        else:
                                                            if totalSupply < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    emit Transfer(0, 0, arg1);
                                                    else:
                                                        if totalSupply < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                emit Transfer(0, 0, arg1);
                                                else:
                                                    if totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            emit Transfer(0, 0, arg1);
                        else:
                            if block.timestamp >= bonusEnds3:
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        call stor14 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit Transfer(0, 0, msg.sender);
                                            if msg.sender == arg1:
                                            else:
                                                if not arg1:
                                                else:
                                                    if balanceOf[address(arg1)] < 1000 * 10^18:
                                                        if balanceOf[address(arg1)] < 500 * 10^18:
                                                            if balanceOf[address(arg1)] < 200 * 10^18:
                                                                if totalSupply < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        emit Transfer(0, 0, arg1);
                                                            else:
                                                                if totalSupply < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        emit Transfer(0, 0, arg1);
                                                        else:
                                                            if totalSupply < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    emit Transfer(0, 0, arg1);
                                                    else:
                                                        if totalSupply < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                emit Transfer(0, 0, arg1);
                            else:
                                if totalSupply + (167 * msg.value) < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    totalSupply += 167 * msg.value
                                    if balanceOf[address(msg.sender)] + (167 * msg.value) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        balanceOf[address(msg.sender)] += 167 * msg.value
                                        call stor14 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit Transfer((167 * msg.value), 0, msg.sender);
                                            if msg.sender == arg1:
                                            else:
                                                if not arg1:
                                                else:
                                                    if balanceOf[address(arg1)] < 1000 * 10^18:
                                                        if balanceOf[address(arg1)] < 500 * 10^18:
                                                            if balanceOf[address(arg1)] < 200 * 10^18:
                                                                if totalSupply + (2 * 167 * msg.value / 100) < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalSupply += 2 * 167 * msg.value / 100
                                                                    if balanceOf[address(arg1)] + (2 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] += 2 * 167 * msg.value / 100
                                                                        emit Transfer((2 * 167 * msg.value / 100), 0, arg1);
                                                            else:
                                                                if totalSupply + (3 * 167 * msg.value / 100) < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalSupply += 3 * 167 * msg.value / 100
                                                                    if balanceOf[address(arg1)] + (3 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] += 3 * 167 * msg.value / 100
                                                                        emit Transfer((3 * 167 * msg.value / 100), 0, arg1);
                                                        else:
                                                            if totalSupply + (5 * 167 * msg.value / 100) < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += 5 * 167 * msg.value / 100
                                                                if balanceOf[address(arg1)] + (5 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] += 5 * 167 * msg.value / 100
                                                                    emit Transfer((5 * 167 * msg.value / 100), 0, arg1);
                                                    else:
                                                        if totalSupply + (7 * 167 * msg.value / 100) < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalSupply += 7 * 167 * msg.value / 100
                                                            if balanceOf[address(arg1)] + (7 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[address(arg1)] += 7 * 167 * msg.value / 100
                                                                emit Transfer((7 * 167 * msg.value / 100), 0, arg1);
                    else:
                        if block.timestamp >= bonusEnds2:
                            if block.timestamp <= bonusEnds2:
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        call stor14 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit Transfer(0, 0, msg.sender);
                                            if msg.sender == arg1:
                                            else:
                                                if not arg1:
                                                else:
                                                    if balanceOf[address(arg1)] < 1000 * 10^18:
                                                        if balanceOf[address(arg1)] < 500 * 10^18:
                                                            if balanceOf[address(arg1)] < 200 * 10^18:
                                                                if totalSupply < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        emit Transfer(0, 0, arg1);
                                                            else:
                                                                if totalSupply < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        emit Transfer(0, 0, arg1);
                                                        else:
                                                            if totalSupply < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    emit Transfer(0, 0, arg1);
                                                    else:
                                                        if totalSupply < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                emit Transfer(0, 0, arg1);
                            else:
                                if block.timestamp >= bonusEnds3:
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            call stor14 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit Transfer(0, 0, msg.sender);
                                                if msg.sender == arg1:
                                                else:
                                                    if not arg1:
                                                    else:
                                                        if balanceOf[address(arg1)] < 1000 * 10^18:
                                                            if balanceOf[address(arg1)] < 500 * 10^18:
                                                                if balanceOf[address(arg1)] < 200 * 10^18:
                                                                    if totalSupply < totalSupply:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            emit Transfer(0, 0, arg1);
                                                                else:
                                                                    if totalSupply < totalSupply:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            emit Transfer(0, 0, arg1);
                                                            else:
                                                                if totalSupply < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        emit Transfer(0, 0, arg1);
                                                        else:
                                                            if totalSupply < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    emit Transfer(0, 0, arg1);
                                else:
                                    if totalSupply + (167 * msg.value) < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalSupply += 167 * msg.value
                                        if balanceOf[address(msg.sender)] + (167 * msg.value) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            balanceOf[address(msg.sender)] += 167 * msg.value
                                            call stor14 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit Transfer((167 * msg.value), 0, msg.sender);
                                                if msg.sender == arg1:
                                                else:
                                                    if not arg1:
                                                    else:
                                                        if balanceOf[address(arg1)] < 1000 * 10^18:
                                                            if balanceOf[address(arg1)] < 500 * 10^18:
                                                                if balanceOf[address(arg1)] < 200 * 10^18:
                                                                    if totalSupply + (2 * 167 * msg.value / 100) < totalSupply:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalSupply += 2 * 167 * msg.value / 100
                                                                        if balanceOf[address(arg1)] + (2 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg1)] += 2 * 167 * msg.value / 100
                                                                            emit Transfer((2 * 167 * msg.value / 100), 0, arg1);
                                                                else:
                                                                    if totalSupply + (3 * 167 * msg.value / 100) < totalSupply:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalSupply += 3 * 167 * msg.value / 100
                                                                        if balanceOf[address(arg1)] + (3 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg1)] += 3 * 167 * msg.value / 100
                                                                            emit Transfer((3 * 167 * msg.value / 100), 0, arg1);
                                                            else:
                                                                if totalSupply + (5 * 167 * msg.value / 100) < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalSupply += 5 * 167 * msg.value / 100
                                                                    if balanceOf[address(arg1)] + (5 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] += 5 * 167 * msg.value / 100
                                                                        emit Transfer((5 * 167 * msg.value / 100), 0, arg1);
                                                        else:
                                                            if totalSupply + (7 * 167 * msg.value / 100) < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += 7 * 167 * msg.value / 100
                                                                if balanceOf[address(arg1)] + (7 * 167 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] += 7 * 167 * msg.value / 100
                                                                    emit Transfer((7 * 167 * msg.value / 100), 0, arg1);
                        else:
                            if totalSupply + (200 * msg.value) < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                totalSupply += 200 * msg.value
                                if balanceOf[address(msg.sender)] + (200 * msg.value) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                    call stor14 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        emit Transfer((200 * msg.value), 0, msg.sender);
                                        if msg.sender == arg1:
                                        else:
                                            if not arg1:
                                            else:
                                                if balanceOf[address(arg1)] < 1000 * 10^18:
                                                    if balanceOf[address(arg1)] < 500 * 10^18:
                                                        if balanceOf[address(arg1)] < 200 * 10^18:
                                                            if totalSupply + (2 * 200 * msg.value / 100) < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += 2 * 200 * msg.value / 100
                                                                if balanceOf[address(arg1)] + (2 * 200 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] += 2 * 200 * msg.value / 100
                                                                    emit Transfer((2 * 200 * msg.value / 100), 0, arg1);
                                                        else:
                                                            if totalSupply + (3 * 200 * msg.value / 100) < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += 3 * 200 * msg.value / 100
                                                                if balanceOf[address(arg1)] + (3 * 200 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] += 3 * 200 * msg.value / 100
                                                                    emit Transfer((3 * 200 * msg.value / 100), 0, arg1);
                                                    else:
                                                        if totalSupply + (5 * 200 * msg.value / 100) < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalSupply += 5 * 200 * msg.value / 100
                                                            if balanceOf[address(arg1)] + (5 * 200 * msg.value / 100) < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[address(arg1)] += 5 * 200 * msg.value / 100
                                                                emit Transfer((5 * 200 * msg.value / 100), 0, arg1);
                                                else:
                                                    if totalSupply + (7 * 200 * msg.value / 100) < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalSupply += 7 * 200 * msg.value / 100
                                                        if balanceOf[address(arg1)] + (7 * 200 * msg.value / 100) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[address(arg1)] += 7 * 200 * msg.value / 100
                                                            emit Transfer((7 * 200 * msg.value / 100), 0, arg1);
                else:
                    if totalSupply + (222 * msg.value) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        totalSupply += 222 * msg.value
                        if balanceOf[address(msg.sender)] + (222 * msg.value) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            balanceOf[address(msg.sender)] += 222 * msg.value
                            call stor14 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit Transfer((222 * msg.value), 0, msg.sender);
                                if msg.sender == arg1:
                                else:
                                    if not arg1:
                                    else:
                                        if balanceOf[address(arg1)] < 1000 * 10^18:
                                            if balanceOf[address(arg1)] < 500 * 10^18:
                                                if balanceOf[address(arg1)] < 200 * 10^18:
                                                    if totalSupply + (2 * 222 * msg.value / 100) < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalSupply += 2 * 222 * msg.value / 100
                                                        if balanceOf[address(arg1)] + (2 * 222 * msg.value / 100) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[address(arg1)] += 2 * 222 * msg.value / 100
                                                            emit Transfer((2 * 222 * msg.value / 100), 0, arg1);
                                                else:
                                                    if totalSupply + (3 * 222 * msg.value / 100) < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalSupply += 3 * 222 * msg.value / 100
                                                        if balanceOf[address(arg1)] + (3 * 222 * msg.value / 100) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[address(arg1)] += 3 * 222 * msg.value / 100
                                                            emit Transfer((3 * 222 * msg.value / 100), 0, arg1);
                                            else:
                                                if totalSupply + (5 * 222 * msg.value / 100) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalSupply += 5 * 222 * msg.value / 100
                                                    if balanceOf[address(arg1)] + (5 * 222 * msg.value / 100) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg1)] += 5 * 222 * msg.value / 100
                                                        emit Transfer((5 * 222 * msg.value / 100), 0, arg1);
                                        else:
                                            if totalSupply + (7 * 222 * msg.value / 100) < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += 7 * 222 * msg.value / 100
                                                if balanceOf[address(arg1)] + (7 * 222 * msg.value / 100) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg1)] += 7 * 222 * msg.value / 100
                                                    emit Transfer((7 * 222 * msg.value / 100), 0, arg1);
            else:
                if totalSupply + (250 * msg.value) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                else:
                    totalSupply += 250 * msg.value
                    if balanceOf[address(msg.sender)] + (250 * msg.value) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        balanceOf[address(msg.sender)] += 250 * msg.value
                        call stor14 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Transfer((250 * msg.value), 0, msg.sender);
                            if msg.sender == arg1:
                            else:
                                if not arg1:
                                else:
                                    if balanceOf[address(arg1)] < 1000 * 10^18:
                                        if balanceOf[address(arg1)] < 500 * 10^18:
                                            if balanceOf[address(arg1)] < 200 * 10^18:
                                                if totalSupply + (2 * 250 * msg.value / 100) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalSupply += 2 * 250 * msg.value / 100
                                                    if balanceOf[address(arg1)] + (2 * 250 * msg.value / 100) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg1)] += 2 * 250 * msg.value / 100
                                                        emit Transfer((2 * 250 * msg.value / 100), 0, arg1);
                                            else:
                                                if totalSupply + (3 * 250 * msg.value / 100) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalSupply += 3 * 250 * msg.value / 100
                                                    if balanceOf[address(arg1)] + (3 * 250 * msg.value / 100) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg1)] += 3 * 250 * msg.value / 100
                                                        emit Transfer((3 * 250 * msg.value / 100), 0, arg1);
                                        else:
                                            if totalSupply + (5 * 250 * msg.value / 100) < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += 5 * 250 * msg.value / 100
                                                if balanceOf[address(arg1)] + (5 * 250 * msg.value / 100) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg1)] += 5 * 250 * msg.value / 100
                                                    emit Transfer((5 * 250 * msg.value / 100), 0, arg1);
                                    else:
                                        if totalSupply + (7 * 250 * msg.value / 100) < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += 7 * 250 * msg.value / 100
                                            if balanceOf[address(arg1)] + (7 * 250 * msg.value / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg1)] += 7 * 250 * msg.value / 100
                                                emit Transfer((7 * 250 * msg.value / 100), 0, arg1);
}



}
