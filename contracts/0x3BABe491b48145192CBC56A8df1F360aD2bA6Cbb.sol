contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(ext_code.size(arg1))
}

function approve(address arg1, uint256 arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 0x56d262c586c21532502c5fdb85908845fdf6fb86 == arg2:
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
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
    else:
        if not arg3:
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
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[arg2]
            emit Transfer(0, arg1, arg2);
        else:
            if 95 * arg3 / arg3 != 95:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
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
            if 95 * arg3 / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= 95 * arg3 / 100
            if (95 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = (95 * arg3 / 100) + balanceOf[arg2]
            emit Transfer((95 * arg3 / 100), arg1, arg2);
        if not arg3:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3] < balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, arg1, 0x976e3c01509f7f7b6baf717b30a5a7412d2412b3);
        else:
            if 5 * arg3 / arg3 != 5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if 5 * arg3 / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= 5 * arg3 / 100
            if (5 * arg3 / 100) + balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3] < balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3] += 5 * arg3 / 100
            emit Transfer((5 * arg3 / 100), arg1, 0x976e3c01509f7f7b6baf717b30a5a7412d2412b3);
    if arg3 > allowance[address(arg1)][msg.sender]:
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
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0x56d262c586c21532502c5fdb85908845fdf6fb86 == msg.sender:
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
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not ext_code.size(msg.sender):
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
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
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
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, msg.sender, arg1);
            else:
                if 95 * arg2 / arg2 != 95:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                emit Transfer((95 * arg2 / 100), msg.sender, arg1);
            if not arg2:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3] < balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, 0x976e3c01509f7f7b6baf717b30a5a7412d2412b3);
            else:
                if 5 * arg2 / arg2 != 5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                if (5 * arg2 / 100) + balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3] < balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[0x976e3c01509f7f7b6baf717b30a5a7412d2412b3] += 5 * arg2 / 100
                emit Transfer((5 * arg2 / 100), msg.sender, 0x976e3c01509f7f7b6baf717b30a5a7412d2412b3);
    return 1
}



}
