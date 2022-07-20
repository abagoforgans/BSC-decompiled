contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 limitSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;
address stor10;
address stor11;
address stor12;
uint256 stor13;
uint256 sub_38ac5beb;
mapping of uint256 stor15;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function limitSupply() {
    return limitSupply
}

function decimals() {
    return decimals
}

function sub_38ac5beb(?) {
    return sub_38ac5beb
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function availableSupply() {
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (limitSupply - totalSupply)
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
        revert with 0, 'SafeMath: subtraction overflow'
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
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 232 len 28]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor9[address(arg1)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[232 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[230 len 30]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        require ext_code.size(arg1)
        call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_b32820e9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor11, 0
    else:
        require arg1
        if 50 * arg1 / arg1 != 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, 50 * arg1 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor11, 50 * arg1 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor12, 0
    else:
        require arg1
        if 9 * arg1 / arg1 != 9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor12, 9 * arg1 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 100 * 10^18:
        stor15[address(msg.sender)]++
        sub_38ac5beb--
        if not stor13:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply - totalSupply < 0:
                revert with 0, 'Supply exceed'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
        else:
            require stor13
            if 10^18 * stor13 / stor13 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply - totalSupply < 10^18 * stor13:
                revert with 0, 'Supply exceed'
            if totalSupply + (10^18 * stor13) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^18 * stor13
            if balanceOf[address(msg.sender)] + (10^18 * stor13) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 10^18 * stor13
            emit Transfer((10^18 * stor13), 0, msg.sender);
    if arg1 == 25 * 10^16 * 3600:
        stor15[address(msg.sender)] += 10
        sub_38ac5beb -= 10
        if not stor13:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply - totalSupply < 0:
                revert with 0, 'Supply exceed'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
        else:
            require stor13
            if 10 * 10^18 * stor13 / stor13 != 10 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply - totalSupply < 10 * 10^18 * stor13:
                revert with 0, 'Supply exceed'
            if totalSupply + (10 * 10^18 * stor13) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10 * 10^18 * stor13
            if balanceOf[address(msg.sender)] + (10 * 10^18 * stor13) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 10 * 10^18 * stor13
            emit Transfer((10 * 10^18 * stor13), 0, msg.sender);
}



}
