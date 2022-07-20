contract main {




// =====================  Runtime code  =====================


uint256 cap;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return cap
}

function decimals() {
    return decimals
}

function cap() {
    return cap
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
  stop
}

function authNum(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0, 'Permission denied'
    stor12 = arg1
    return 1
}

function getBlock() {
    return bool(uint8(stor5.field_0)), 
           bool(uint8(stor5.field_8)),
           stor14,
           stor13,
           block.number,
           balanceOf[address(msg.sender)],
           stor8
}

function clearETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12 != 1000:
        revert with 0, 'Permission denied'
    stor12 = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAuth(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10 != 0:
        revert with 0, 'recovery'
    if stor11 != 0:
        revert with 0, 'recovery'
    if not arg1:
        revert with 0, 'recovery'
    if not arg2:
        revert with 0, 'recovery'
    stor10 = arg1
    stor11 = arg2
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
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

function set(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12 != 1:
        revert with 0, 'Permission denied'
    if arg1 == 3:
        uint256(stor5.field_0) = arg2 == 1 or Mask(248, 8, uint256(stor5.field_0))
    else:
        if arg1 == 4:
            Mask(248, 0, stor5.field_8) = Mask(248, 0, arg2 == 1)
        else:
            if arg1 == 5:
                stor6 = arg2
            else:
                if arg1 == 6:
                    stor7 = arg2
                else:
                    if arg1 == 7:
                        stor8 = arg2
                    else:
                        if arg1 == 8:
                            stor9 = arg2
                        else:
                            if arg1 == 9:
                                stor13 = arg2
                            else:
                                if arg1 == 10:
                                    stor14 = arg2
    stor12 = 0
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

function airdrop(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor5.field_0):
        revert with 0, 'Transaction recovery'
    if stor8 != msg.value:
        revert with 0, 'Transaction recovery'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if stor4 + stor9 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    stor4 += stor9
    if stor4 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if balanceOf[address(msg.sender)] + stor9 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += stor9
    emit Transfer(stor9, this.address, msg.sender);
    if arg1 != msg.sender:
        if arg1:
            if balanceOf[address(arg1)] > 0:
                if not stor9:
                    if not stor8:
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require stor8
                        if stor8 * stor6 / stor8 != stor6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        call arg1 with:
                           value stor8 * stor6 / 10000 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor9
                    if stor9 * stor7 / stor9 != stor7:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not stor8:
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 + (stor9 * stor7 / 10000) < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += stor9 * stor7 / 10000
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] + (stor9 * stor7 / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += stor9 * stor7 / 10000
                        emit Transfer((stor9 * stor7 / 10000), this.address, arg1);
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require stor8
                        if stor8 * stor6 / stor8 != stor6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 + (stor9 * stor7 / 10000) < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += stor9 * stor7 / 10000
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] + (stor9 * stor7 / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += stor9 * stor7 / 10000
                        emit Transfer((stor9 * stor7 / 10000), this.address, arg1);
                        call arg1 with:
                           value stor8 * stor6 / 10000 wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor5.field_8):
        revert with 0, 'Transaction recovery'
    if block.number > stor13:
        revert with 0, 'Transaction recovery'
    if msg.value < 10^16:
        revert with 0, 'Transaction recovery'
    if not msg.value:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if stor4 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, this.address, msg.sender);
        if arg1 != msg.sender:
            if arg1:
                if balanceOf[address(arg1)] > 0:
                    if not msg.value:
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        if msg.value * stor6 / msg.value != stor6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        call arg1 with:
                           value msg.value * stor6 / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.value
        if msg.value * stor14 / msg.value != stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if stor4 + (msg.value * stor14) < stor4:
            revert with 0, 'SafeMath: addition overflow'
        stor4 += msg.value * stor14
        if stor4 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if balanceOf[address(msg.sender)] + (msg.value * stor14) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += msg.value * stor14
        emit Transfer((msg.value * stor14), this.address, msg.sender);
        if arg1 != msg.sender:
            if arg1:
                if balanceOf[address(arg1)] > 0:
                    if not msg.value * stor14:
                        if not msg.value:
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, this.address, arg1);
                            call arg1 with:
                                 gas 2300 wei
                        else:
                            require msg.value
                            if msg.value * stor6 / msg.value != stor6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, this.address, arg1);
                            call arg1 with:
                               value msg.value * stor6 / 10000 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value * stor14
                        if msg.value * stor14 * stor7 / msg.value * stor14 != stor7:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not msg.value:
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 + (msg.value * stor14 * stor7 / 10000) < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += msg.value * stor14 * stor7 / 10000
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] + (msg.value * stor14 * stor7 / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += msg.value * stor14 * stor7 / 10000
                            emit Transfer((msg.value * stor14 * stor7 / 10000), this.address, arg1);
                            call arg1 with:
                                 gas 2300 wei
                        else:
                            require msg.value
                            if msg.value * stor6 / msg.value != stor6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 + (msg.value * stor14 * stor7 / 10000) < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += msg.value * stor14 * stor7 / 10000
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] + (msg.value * stor14 * stor7 / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += msg.value * stor14 * stor7 / 10000
                            emit Transfer((msg.value * stor14 * stor7 / 10000), this.address, arg1);
                            call arg1 with:
                               value msg.value * stor6 / 10000 wei
                                 gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
