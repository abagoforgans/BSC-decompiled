contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
uint8 stor7;
address stor7;
address stor7; offset 8
uint256 stor8;
uint256 stor9;
address stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor14;
uint256 stor15;
mapping of uint8 stor16;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function isOpen() payable {
    return bool(uint8(stor7.field_0))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0f14c59f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 0
}

function sub_9e5de98d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor7.field_0) = uint8(arg1)
}

function setLpAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 1
}

function sub_143f2e45(?) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor7.field_8) = arg1
    stor8 = arg2
    stor9 = arg3
    stor10 = arg4
    stor11 = arg5
    stor12 = arg6
    stor13 = arg7
    stor14 = arg8
    stor15 = arg9
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function out(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(this.address)] -= arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, this.address, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor8 <= 0:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not uint8(stor7.field_0):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor16[address(msg.sender)]:
                if not arg2:
                    if totalSupply < 1000000 * 10^18:
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                        if not address(stor7.field_8):
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        if balanceOf[address(stor7.field_0)] < balanceOf[address(stor7.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, address(stor7.field_8));
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, msg.sender, 0);
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                    else:
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                        if not address(stor7.field_8):
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        if balanceOf[address(stor7.field_0)] < balanceOf[address(stor7.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, address(stor7.field_8));
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, msg.sender, 0);
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[742 len 26],
                                        mem[794 len 6]
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    require arg2
                    if arg2 * stor8 / arg2 != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply < 1000000 * 10^18:
                        if 0 > arg2 * stor8 / 1000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                        if not address(stor7.field_8):
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg2 * stor8 / 1000 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(msg.sender)] -= arg2 * stor8 / 1000
                        if balanceOf[address(stor7.field_0)] + (arg2 * stor8 / 1000) < balanceOf[address(stor7.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor7.field_0)] += arg2 * stor8 / 1000
                        emit Transfer((arg2 * stor8 / 1000), msg.sender, address(stor7.field_8));
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, msg.sender, 0);
                        if arg2 * stor8 / 1000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > arg2 - (arg2 * stor8 / 1000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg2 - (arg2 * stor8 / 1000) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                    else:
                        if not arg2 * stor8 / 1000:
                            if 0 > arg2 * stor8 / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not address(stor7.field_8):
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if arg2 * stor8 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2 * stor8 / 1000
                            if balanceOf[address(stor7.field_0)] + (arg2 * stor8 / 1000) < balanceOf[address(stor7.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor7.field_0)] += arg2 * stor8 / 1000
                            emit Transfer((arg2 * stor8 / 1000), msg.sender, address(stor7.field_8));
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, msg.sender, 0);
                            if arg2 * stor8 / 1000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > arg2 - (arg2 * stor8 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg2 * stor8 / 1000
                            if arg2 * stor8 / 1000 * stor9 / arg2 * stor8 / 1000 != stor9:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if arg2 * stor8 / 1000 * stor9 / 1000 > arg2 * stor8 / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not address(stor7.field_8):
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if (arg2 * stor8 / 1000) - (arg2 * stor8 / 1000 * stor9 / 1000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * stor8 / 1000) + (arg2 * stor8 / 1000 * stor9 / 1000)
                            if balanceOf[address(stor7.field_0)] + (arg2 * stor8 / 1000) - (arg2 * stor8 / 1000 * stor9 / 1000) < balanceOf[address(stor7.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor7.field_0)] = balanceOf[address(stor7.field_0)] + (arg2 * stor8 / 1000) - (arg2 * stor8 / 1000 * stor9 / 1000)
                            emit Transfer(((arg2 * stor8 / 1000) - (arg2 * stor8 / 1000 * stor9 / 1000)), msg.sender, address(stor7.field_8));
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                            if arg2 * stor8 / 1000 * stor9 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                            balanceOf[address(msg.sender)] -= arg2 * stor8 / 1000 * stor9 / 1000
                            if arg2 * stor8 / 1000 * stor9 / 1000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 * stor8 / 1000 * stor9 / 1000
                            emit Transfer((arg2 * stor8 / 1000 * stor9 / 1000), msg.sender, 0);
                            if (arg2 * stor8 / 1000) - (arg2 * stor8 / 1000 * stor9 / 1000) > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 * stor8 / 1000 * stor9 / 1000 > arg2 - (arg2 * stor8 / 1000) + (arg2 * stor8 / 1000 * stor9 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                        if arg2 - (arg2 * stor8 / 1000) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[742 len 26],
                                        mem[794 len 6]
                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'stor8', 8))), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor8 / 1000)
                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor8 / 1000) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor8 / 1000)
                    emit Transfer((arg2 - (arg2 * stor8 / 1000)), msg.sender, arg1);
            else:
                if stor16[address(arg1)]:
                    if not arg2:
                        if totalSupply < 1000000 * 10^18:
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not stor10:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            if balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, stor10);
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, msg.sender, 0);
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                        else:
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not stor10:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            if balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, stor10);
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, msg.sender, 0);
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[742 len 26],
                                            mem[794 len 6]
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 * stor11 / arg2 != stor11:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply < 1000000 * 10^18:
                            if 0 > arg2 * stor11 / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not stor10:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if arg2 * stor11 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            balanceOf[address(msg.sender)] -= arg2 * stor11 / 1000
                            if balanceOf[stor10] + (arg2 * stor11 / 1000) < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += arg2 * stor11 / 1000
                            emit Transfer((arg2 * stor11 / 1000), msg.sender, stor10);
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, msg.sender, 0);
                            if arg2 * stor11 / 1000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > arg2 - (arg2 * stor11 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg2 - (arg2 * stor11 / 1000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                        else:
                            if not arg2 * stor11 / 1000:
                                if 0 > arg2 * stor11 / 1000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if not stor10:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                if arg2 * stor11 / 1000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2 * stor11 / 1000
                                if balanceOf[stor10] + (arg2 * stor11 / 1000) < balanceOf[stor10]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor10] += arg2 * stor11 / 1000
                                emit Transfer((arg2 * stor11 / 1000), msg.sender, stor10);
                                if not msg.sender:
                                    revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                if 0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                emit Transfer(0, msg.sender, 0);
                                if arg2 * stor11 / 1000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > arg2 - (arg2 * stor11 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg2 * stor11 / 1000
                                if arg2 * stor11 / 1000 * stor12 / arg2 * stor11 / 1000 != stor12:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if arg2 * stor11 / 1000 * stor12 / 1000 > arg2 * stor11 / 1000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if not stor10:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                if (arg2 * stor11 / 1000) - (arg2 * stor11 / 1000 * stor12 / 1000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * stor11 / 1000) + (arg2 * stor11 / 1000 * stor12 / 1000)
                                if balanceOf[stor10] + (arg2 * stor11 / 1000) - (arg2 * stor11 / 1000 * stor12 / 1000) < balanceOf[stor10]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor10] = balanceOf[stor10] + (arg2 * stor11 / 1000) - (arg2 * stor11 / 1000 * stor12 / 1000)
                                emit Transfer(((arg2 * stor11 / 1000) - (arg2 * stor11 / 1000 * stor12 / 1000)), msg.sender, stor10);
                                if not msg.sender:
                                    revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                if arg2 * stor11 / 1000 * stor12 / 1000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                balanceOf[address(msg.sender)] -= arg2 * stor11 / 1000 * stor12 / 1000
                                if arg2 * stor11 / 1000 * stor12 / 1000 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg2 * stor11 / 1000 * stor12 / 1000
                                emit Transfer((arg2 * stor11 / 1000 * stor12 / 1000), msg.sender, 0);
                                if (arg2 * stor11 / 1000) - (arg2 * stor11 / 1000 * stor12 / 1000) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 * stor11 / 1000 * stor12 / 1000 > arg2 - (arg2 * stor11 / 1000) + (arg2 * stor11 / 1000 * stor12 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                            if arg2 - (arg2 * stor11 / 1000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[742 len 26],
                                            mem[794 len 6]
                        ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'stor11', 11))), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor11 / 1000)
                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 1000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 1000)
                        emit Transfer((arg2 - (arg2 * stor11 / 1000)), msg.sender, arg1);
                else:
                    if ext_code.size(msg.sender) > 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if ext_code.size(arg1) > 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if totalSupply < 1000000 * 10^18:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not stor13:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    if balanceOf[stor13] < balanceOf[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, stor13);
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not stor13:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if balanceOf[stor13] < balanceOf[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, stor13);
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[742 len 26],
                                                    mem[794 len 6]
                                ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply < 1000000 * 10^18:
                                    if 0 > arg2 * stor14 / 1000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not stor13:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if arg2 * stor14 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 1000
                                    if balanceOf[stor13] + (arg2 * stor14 / 1000) < balanceOf[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor13] += arg2 * stor14 / 1000
                                    emit Transfer((arg2 * stor14 / 1000), msg.sender, stor13);
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if arg2 * stor14 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > arg2 - (arg2 * stor14 / 1000):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg2 - (arg2 * stor14 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                else:
                                    if not arg2 * stor14 / 1000:
                                        if 0 > arg2 * stor14 / 1000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not stor13:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg2 * stor14 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 1000
                                        if balanceOf[stor13] + (arg2 * stor14 / 1000) < balanceOf[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor13] += arg2 * stor14 / 1000
                                        emit Transfer((arg2 * stor14 / 1000), msg.sender, stor13);
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if arg2 * stor14 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > arg2 - (arg2 * stor14 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg2 * stor14 / 1000
                                        if arg2 * stor14 / 1000 * stor15 / arg2 * stor14 / 1000 != stor15:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if arg2 * stor14 / 1000 * stor15 / 1000 > arg2 * stor14 / 1000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not stor13:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if (arg2 * stor14 / 1000) - (arg2 * stor14 / 1000 * stor15 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * stor14 / 1000) + (arg2 * stor14 / 1000 * stor15 / 1000)
                                        if balanceOf[stor13] + (arg2 * stor14 / 1000) - (arg2 * stor14 / 1000 * stor15 / 1000) < balanceOf[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor13] = balanceOf[stor13] + (arg2 * stor14 / 1000) - (arg2 * stor14 / 1000 * stor15 / 1000)
                                        emit Transfer(((arg2 * stor14 / 1000) - (arg2 * stor14 / 1000 * stor15 / 1000)), msg.sender, stor13);
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                        if arg2 * stor14 / 1000 * stor15 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 1000 * stor15 / 1000
                                        if arg2 * stor14 / 1000 * stor15 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= arg2 * stor14 / 1000 * stor15 / 1000
                                        emit Transfer((arg2 * stor14 / 1000 * stor15 / 1000), msg.sender, 0);
                                        if (arg2 * stor14 / 1000) - (arg2 * stor14 / 1000 * stor15 / 1000) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 * stor14 / 1000 * stor15 / 1000 > arg2 - (arg2 * stor14 / 1000) + (arg2 * stor14 / 1000 * stor15 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                    if arg2 - (arg2 * stor14 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[742 len 26],
                                                    mem[794 len 6]
                                ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'stor14', 14))), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 1000)
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 1000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 1000)
                                emit Transfer((arg2 - (arg2 * stor14 / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor8 <= 0:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if not uint8(stor7.field_0):
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if stor16[address(arg1)]:
                if not arg3:
                    if totalSupply < 1000000 * 10^18:
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                        if not address(stor7.field_8):
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        if balanceOf[address(stor7.field_0)] < balanceOf[address(stor7.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, address(stor7.field_8));
                        if not arg1:
                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[776 len 24],
                                        mem[824 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                    else:
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                        if not address(stor7.field_8):
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        if balanceOf[address(stor7.field_0)] < balanceOf[address(stor7.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, address(stor7.field_8));
                        if not arg1:
                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[742 len 26],
                                        mem[794 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[840 len 24],
                                        mem[888 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                else:
                    require arg3
                    if arg3 * stor8 / arg3 != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply < 1000000 * 10^18:
                        if 0 > arg3 * stor8 / 1000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                        if not address(stor7.field_8):
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg3 * stor8 / 1000 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(arg1)] -= arg3 * stor8 / 1000
                        if balanceOf[address(stor7.field_0)] + (arg3 * stor8 / 1000) < balanceOf[address(stor7.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor7.field_0)] += arg3 * stor8 / 1000
                        emit Transfer((arg3 * stor8 / 1000), arg1, address(stor7.field_8));
                        if not arg1:
                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                        if arg3 * stor8 / 1000 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > arg3 - (arg3 * stor8 / 1000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg3 - (arg3 * stor8 / 1000) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor8 / 1000)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000)
                        emit Transfer((arg3 - (arg3 * stor8 / 1000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[776 len 24],
                                        mem[824 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                    else:
                        if not arg3 * stor8 / 1000:
                            if 0 > arg3 * stor8 / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not address(stor7.field_8):
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if arg3 * stor8 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3 * stor8 / 1000
                            if balanceOf[address(stor7.field_0)] + (arg3 * stor8 / 1000) < balanceOf[address(stor7.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor7.field_0)] += arg3 * stor8 / 1000
                            emit Transfer((arg3 * stor8 / 1000), arg1, address(stor7.field_8));
                            if not arg1:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, arg1, 0);
                            if arg3 * stor8 / 1000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > arg3 - (arg3 * stor8 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg3 * stor8 / 1000
                            if arg3 * stor8 / 1000 * stor9 / arg3 * stor8 / 1000 != stor9:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if arg3 * stor8 / 1000 * stor9 / 1000 > arg3 * stor8 / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not address(stor7.field_8):
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if (arg3 * stor8 / 1000) - (arg3 * stor8 / 1000 * stor9 / 1000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * stor8 / 1000) + (arg3 * stor8 / 1000 * stor9 / 1000)
                            if balanceOf[address(stor7.field_0)] + (arg3 * stor8 / 1000) - (arg3 * stor8 / 1000 * stor9 / 1000) < balanceOf[address(stor7.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor7.field_0)] = balanceOf[address(stor7.field_0)] + (arg3 * stor8 / 1000) - (arg3 * stor8 / 1000 * stor9 / 1000)
                            emit Transfer(((arg3 * stor8 / 1000) - (arg3 * stor8 / 1000 * stor9 / 1000)), arg1, address(stor7.field_8));
                            if not arg1:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                            if arg3 * stor8 / 1000 * stor9 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                            balanceOf[address(arg1)] -= arg3 * stor8 / 1000 * stor9 / 1000
                            if arg3 * stor8 / 1000 * stor9 / 1000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 * stor8 / 1000 * stor9 / 1000
                            emit Transfer((arg3 * stor8 / 1000 * stor9 / 1000), arg1, 0);
                            if (arg3 * stor8 / 1000) - (arg3 * stor8 / 1000 * stor9 / 1000) > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 * stor8 / 1000 * stor9 / 1000 > arg3 - (arg3 * stor8 / 1000) + (arg3 * stor8 / 1000 * stor9 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                        if arg3 - (arg3 * stor8 / 1000) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[742 len 26],
                                        mem[794 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor8 / 1000)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000)
                        emit Transfer((arg3 - (arg3 * stor8 / 1000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[840 len 24],
                                        mem[888 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
            else:
                if stor16[address(arg2)]:
                    if not arg3:
                        if totalSupply < 1000000 * 10^18:
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not stor10:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            if balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor10);
                            if not arg1:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, arg1, 0);
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[776 len 24],
                                            mem[824 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                        else:
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not stor10:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            if balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor10);
                            if not arg1:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, arg1, 0);
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[742 len 26],
                                            mem[794 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[840 len 24],
                                            mem[888 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                    else:
                        require arg3
                        if arg3 * stor11 / arg3 != stor11:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply < 1000000 * 10^18:
                            if 0 > arg3 * stor11 / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not stor10:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if arg3 * stor11 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            balanceOf[address(arg1)] -= arg3 * stor11 / 1000
                            if balanceOf[stor10] + (arg3 * stor11 / 1000) < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += arg3 * stor11 / 1000
                            emit Transfer((arg3 * stor11 / 1000), arg1, stor10);
                            if not arg1:
                                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, arg1, 0);
                            if arg3 * stor11 / 1000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > arg3 - (arg3 * stor11 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg3 - (arg3 * stor11 / 1000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 1000)
                            if balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 1000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 1000)
                            emit Transfer((arg3 - (arg3 * stor11 / 1000)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[776 len 24],
                                            mem[824 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                        else:
                            if not arg3 * stor11 / 1000:
                                if 0 > arg3 * stor11 / 1000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if not stor10:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                if arg3 * stor11 / 1000 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3 * stor11 / 1000
                                if balanceOf[stor10] + (arg3 * stor11 / 1000) < balanceOf[stor10]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor10] += arg3 * stor11 / 1000
                                emit Transfer((arg3 * stor11 / 1000), arg1, stor10);
                                if not arg1:
                                    revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                if 0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                emit Transfer(0, arg1, 0);
                                if arg3 * stor11 / 1000 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > arg3 - (arg3 * stor11 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg3 * stor11 / 1000
                                if arg3 * stor11 / 1000 * stor12 / arg3 * stor11 / 1000 != stor12:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if arg3 * stor11 / 1000 * stor12 / 1000 > arg3 * stor11 / 1000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if not stor10:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                if (arg3 * stor11 / 1000) - (arg3 * stor11 / 1000 * stor12 / 1000) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * stor11 / 1000) + (arg3 * stor11 / 1000 * stor12 / 1000)
                                if balanceOf[stor10] + (arg3 * stor11 / 1000) - (arg3 * stor11 / 1000 * stor12 / 1000) < balanceOf[stor10]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor10] = balanceOf[stor10] + (arg3 * stor11 / 1000) - (arg3 * stor11 / 1000 * stor12 / 1000)
                                emit Transfer(((arg3 * stor11 / 1000) - (arg3 * stor11 / 1000 * stor12 / 1000)), arg1, stor10);
                                if not arg1:
                                    revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                if arg3 * stor11 / 1000 * stor12 / 1000 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                balanceOf[address(arg1)] -= arg3 * stor11 / 1000 * stor12 / 1000
                                if arg3 * stor11 / 1000 * stor12 / 1000 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg3 * stor11 / 1000 * stor12 / 1000
                                emit Transfer((arg3 * stor11 / 1000 * stor12 / 1000), arg1, 0);
                                if (arg3 * stor11 / 1000) - (arg3 * stor11 / 1000 * stor12 / 1000) > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg3 * stor11 / 1000 * stor12 / 1000 > arg3 - (arg3 * stor11 / 1000) + (arg3 * stor11 / 1000 * stor12 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                            if arg3 - (arg3 * stor11 / 1000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[742 len 26],
                                            mem[794 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 1000)
                            if balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 1000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 1000)
                            emit Transfer((arg3 - (arg3 * stor11 / 1000)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[840 len 24],
                                            mem[888 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                else:
                    if ext_code.size(arg1) > 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[264 len 24],
                                        mem[312 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    else:
                        if ext_code.size(arg2) > 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[264 len 24],
                                            mem[312 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        else:
                            if not arg3:
                                if totalSupply < 1000000 * 10^18:
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not stor13:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    if balanceOf[stor13] < balanceOf[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, stor13);
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, arg1, 0);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[776 len 24],
                                                    mem[824 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                                else:
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not stor13:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if balanceOf[stor13] < balanceOf[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, stor13);
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, arg1, 0);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[742 len 26],
                                                    mem[794 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[840 len 24],
                                                    mem[888 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                            else:
                                require arg3
                                if arg3 * stor14 / arg3 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply < 1000000 * 10^18:
                                    if 0 > arg3 * stor14 / 1000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not stor13:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if arg3 * stor14 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= arg3 * stor14 / 1000
                                    if balanceOf[stor13] + (arg3 * stor14 / 1000) < balanceOf[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor13] += arg3 * stor14 / 1000
                                    emit Transfer((arg3 * stor14 / 1000), arg1, stor13);
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[421 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, arg1, 0);
                                    if arg3 * stor14 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > arg3 - (arg3 * stor14 / 1000):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg3 - (arg3 * stor14 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor14 / 1000)
                                    if balanceOf[address(arg2)] + arg3 - (arg3 * stor14 / 1000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor14 / 1000)
                                    emit Transfer((arg3 - (arg3 * stor14 / 1000)), arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[776 len 24],
                                                    mem[824 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                                else:
                                    if not arg3 * stor14 / 1000:
                                        if 0 > arg3 * stor14 / 1000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not stor13:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg3 * stor14 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(arg1)] -= arg3 * stor14 / 1000
                                        if balanceOf[stor13] + (arg3 * stor14 / 1000) < balanceOf[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor13] += arg3 * stor14 / 1000
                                        emit Transfer((arg3 * stor14 / 1000), arg1, stor13);
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        emit Transfer(0, arg1, 0);
                                        if arg3 * stor14 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > arg3 - (arg3 * stor14 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg3 * stor14 / 1000
                                        if arg3 * stor14 / 1000 * stor15 / arg3 * stor14 / 1000 != stor15:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if arg3 * stor14 / 1000 * stor15 / 1000 > arg3 * stor14 / 1000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not stor13:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if (arg3 * stor14 / 1000) - (arg3 * stor14 / 1000 * stor15 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * stor14 / 1000) + (arg3 * stor14 / 1000 * stor15 / 1000)
                                        if balanceOf[stor13] + (arg3 * stor14 / 1000) - (arg3 * stor14 / 1000 * stor15 / 1000) < balanceOf[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor13] = balanceOf[stor13] + (arg3 * stor14 / 1000) - (arg3 * stor14 / 1000 * stor15 / 1000)
                                        emit Transfer(((arg3 * stor14 / 1000) - (arg3 * stor14 / 1000 * stor15 / 1000)), arg1, stor13);
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[485 len 31]
                                        if arg3 * stor14 / 1000 * stor15 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[450 len 30], mem[510 len 2]
                                        balanceOf[address(arg1)] -= arg3 * stor14 / 1000 * stor15 / 1000
                                        if arg3 * stor14 / 1000 * stor15 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= arg3 * stor14 / 1000 * stor15 / 1000
                                        emit Transfer((arg3 * stor14 / 1000 * stor15 / 1000), arg1, 0);
                                        if (arg3 * stor14 / 1000) - (arg3 * stor14 / 1000 * stor15 / 1000) > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 * stor14 / 1000 * stor15 / 1000 > arg3 - (arg3 * stor14 / 1000) + (arg3 * stor14 / 1000 * stor15 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                    if arg3 - (arg3 * stor14 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[742 len 26],
                                                    mem[794 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor14 / 1000)
                                    if balanceOf[address(arg2)] + arg3 - (arg3 * stor14 / 1000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor14 / 1000)
                                    emit Transfer((arg3 - (arg3 * stor14 / 1000)), arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[840 len 24],
                                                    mem[888 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
