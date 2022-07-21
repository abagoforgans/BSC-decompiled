contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address sub_00144691Address;
address sub_14e61b72Address;
address governanceAddress;
address sub_9125a56cAddress;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function sub_00144691(?) payable {
    return sub_00144691Address
}

function name() payable {
    return name[0 len name.length]
}

function sub_14e61b72(?) payable {
    return sub_14e61b72Address
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_9125a56c(?) payable {
    return sub_9125a56cAddress
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

function sub_607f96e9(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_14e61b72Address = arg1
}

function sub_9f9cea48(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_9125a56cAddress = arg1
}

function sub_a990a097(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_00144691Address = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
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

function increaseAllowance(address arg1, uint256 arg2) payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(msg.sender)] - arg2 < 10^14:
        revert with 0, 'balance must greater then 0.0001'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if sub_14e61b72Address == msg.sender:
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if totalSupply <= 88:
            if not arg2:
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if 98 * arg2 / arg2 != 98:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if balanceOf[address(arg1)] + (98 * arg2 / 100) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 98 * arg2 / 100
            if not arg2:
                emit Transfer(0, msg.sender, arg1);
            else:
                require arg2
                if 98 * arg2 / arg2 != 98:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                emit Transfer((98 * arg2 / 100), msg.sender, arg1);
            if not arg2:
                if balanceOf[stor1] < balanceOf[stor1]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if 2 * arg2 / arg2 != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if balanceOf[stor1] + (2 * arg2 / 100) < balanceOf[stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor1] += 2 * arg2 / 100
            if not arg2:
                emit Transfer(0, msg.sender, sub_00144691Address);
            else:
                require arg2
                if 2 * arg2 / arg2 != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                emit Transfer((2 * arg2 / 100), msg.sender, sub_00144691Address);
        else:
            if not arg2:
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if 90 * arg2 / arg2 != 90:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if balanceOf[address(arg1)] + (90 * arg2 / 100) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 90 * arg2 / 100
            if msg.sender == sub_9125a56cAddress:
                if not arg2:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require arg2
                    if 98 * arg2 / arg2 != 98:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                    emit Transfer((98 * arg2 / 100), msg.sender, arg1);
                if not arg2:
                    if balanceOf[stor1] < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg2
                    if 8 * arg2 / arg2 != 8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                    if balanceOf[stor1] + (8 * arg2 / 100) < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor1] += 8 * arg2 / 100
                if not arg2:
                    emit Transfer(0, msg.sender, sub_00144691Address);
                else:
                    require arg2
                    if 8 * arg2 / arg2 != 8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                    emit Transfer((8 * arg2 / 100), msg.sender, sub_00144691Address);
                if not arg2:
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, msg.sender, 0);
                else:
                    require arg2
                    if 2 * arg2 / arg2 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 2 * arg2 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 2 * arg2 / 100
                    emit Transfer((2 * arg2 / 100), msg.sender, 0);
            else:
                if not arg2:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require arg2
                    if 90 * arg2 / arg2 != 90:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                if not arg2:
                    if balanceOf[stor1] < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg2
                    if 2 * arg2 / arg2 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                    if balanceOf[stor1] + (2 * arg2 / 100) < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor1] += 2 * arg2 / 100
                if not arg2:
                    emit Transfer(0, msg.sender, sub_00144691Address);
                else:
                    require arg2
                    if 2 * arg2 / arg2 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                    emit Transfer((2 * arg2 / 100), msg.sender, sub_00144691Address);
                if not arg2:
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, msg.sender, 0);
                else:
                    require arg2
                    if 8 * arg2 / arg2 != 8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 8 * arg2 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 8 * arg2 / 100
                    emit Transfer((8 * arg2 / 100), msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(arg1)] - arg3 < 10^14:
        revert with 0, 'balance must greater then 0.0001'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if sub_14e61b72Address == msg.sender:
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
    else:
        if totalSupply <= 88:
            if not arg3:
                if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg3
                if 98 * arg3 / arg3 != 98:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if balanceOf[address(arg2)] + (98 * arg3 / 100) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 98 * arg3 / 100
            if not arg3:
                emit Transfer(0, arg1, arg2);
            else:
                require arg3
                if 98 * arg3 / arg3 != 98:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                emit Transfer((98 * arg3 / 100), arg1, arg2);
            if not arg3:
                if balanceOf[stor1] < balanceOf[stor1]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg3
                if 2 * arg3 / arg3 != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if balanceOf[stor1] + (2 * arg3 / 100) < balanceOf[stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor1] += 2 * arg3 / 100
            if not arg3:
                emit Transfer(0, arg1, sub_00144691Address);
            else:
                require arg3
                if 2 * arg3 / arg3 != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                emit Transfer((2 * arg3 / 100), arg1, sub_00144691Address);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[520 len 24],
                            mem[568 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
        else:
            if not arg3:
                if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg3
                if 90 * arg3 / arg3 != 90:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if balanceOf[address(arg2)] + (90 * arg3 / 100) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 90 * arg3 / 100
            if arg1 == sub_9125a56cAddress:
                if not arg3:
                    emit Transfer(0, arg1, arg2);
                else:
                    require arg3
                    if 98 * arg3 / arg3 != 98:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                    emit Transfer((98 * arg3 / 100), arg1, arg2);
                if not arg3:
                    if balanceOf[stor1] < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg3
                    if 8 * arg3 / arg3 != 8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                    if balanceOf[stor1] + (8 * arg3 / 100) < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor1] += 8 * arg3 / 100
                if not arg3:
                    emit Transfer(0, arg1, sub_00144691Address);
                else:
                    require arg3
                    if 8 * arg3 / arg3 != 8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                    emit Transfer((8 * arg3 / 100), arg1, sub_00144691Address);
                if not arg3:
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, arg1, 0);
                else:
                    require arg3
                    if 2 * arg3 / arg3 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 2 * arg3 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 2 * arg3 / 100
                    emit Transfer((2 * arg3 / 100), arg1, 0);
            else:
                if not arg3:
                    emit Transfer(0, arg1, arg2);
                else:
                    require arg3
                    if 90 * arg3 / arg3 != 90:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                if not arg3:
                    if balanceOf[stor1] < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg3
                    if 2 * arg3 / arg3 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                    if balanceOf[stor1] + (2 * arg3 / 100) < balanceOf[stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor1] += 2 * arg3 / 100
                if not arg3:
                    emit Transfer(0, arg1, sub_00144691Address);
                else:
                    require arg3
                    if 2 * arg3 / arg3 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                    emit Transfer((2 * arg3 / 100), arg1, sub_00144691Address);
                if not arg3:
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, arg1, 0);
                else:
                    require arg3
                    if 8 * arg3 / arg3 != 8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[613 len 31]
                    if 8 * arg3 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 8 * arg3 / 100
                    emit Transfer((8 * arg3 / 100), arg1, 0);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[648 len 24],
                            mem[696 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
