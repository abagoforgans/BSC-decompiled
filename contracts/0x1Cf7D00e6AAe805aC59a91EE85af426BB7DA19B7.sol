contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address _owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 _previousTaxFee;
address stor14;
address sub_55fbc0c0Address;
address uniswapV2PairAddress;

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_55fbc0c0(?) {
    return sub_55fbc0c0Address
}

function _previousTaxFee() {
    return _previousTaxFee
}

function owner() {
    return _owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function receive() payable {
  stop
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function setUniswapV2Pair(address arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
    return 1
}

function claimTokens() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8 / totalSupply
    return (arg1 / stor8 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8 / totalSupply
    return (stor1[address(arg1)] / stor8 / totalSupply)
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
                    0x6f45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor4[address(msg.sender)]:
        if not arg2:
            if 0 > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor1[address(arg1)] < stor1[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg2
            if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if arg2 * stor8 / totalSupply > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor1[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
            if not arg2 * stor8 / totalSupply / 100:
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2 * stor8 / totalSupply / 100
                if 100 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if stor1[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg1)] += 100 * arg2 * stor8 / totalSupply / 100
        if not arg2 / 100:
            emit Transfer(0, msg.sender, arg1);
        else:
            require arg2 / 100
            if 100 * arg2 / 100 / arg2 / 100 != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            emit Transfer((100 * arg2 / 100), msg.sender, arg1);
    else:
        if stor4[address(arg1)]:
            if not arg2:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if arg2 * stor8 / totalSupply > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                if not arg2 * stor8 / totalSupply / 100:
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg2 * stor8 / totalSupply / 100
                    if 100 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if stor1[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += 100 * arg2 * stor8 / totalSupply / 100
            if not arg2 / 100:
                emit Transfer(0, msg.sender, arg1);
            else:
                require arg2 / 100
                if 100 * arg2 / 100 / arg2 / 100 != 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                emit Transfer((100 * arg2 / 100), msg.sender, arg1);
        else:
            if stor7 >= totalSupply - stor6:
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg2
                    if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if arg2 * stor8 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                    if not arg2 * stor8 / totalSupply / 100:
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require arg2 * stor8 / totalSupply / 100
                        if 100 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 100:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if stor1[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += 100 * arg2 * stor8 / totalSupply / 100
                if not arg2 / 100:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require arg2 / 100
                    if 100 * arg2 / 100 / arg2 / 100 != 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    emit Transfer((100 * arg2 / 100), msg.sender, arg1);
            else:
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2 / 100:
                        if stor1[stor14] < stor1[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, stor14);
                    else:
                        require arg2 / 100
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 3 * arg2 / 100:
                            if stor1[stor14] < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 3 * arg2 / 100
                            if 3 * arg2 / 100 * stor8 / totalSupply / 3 * arg2 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor1[stor14] + (3 * arg2 / 100 * stor8 / totalSupply) < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor14] += 3 * arg2 / 100 * stor8 / totalSupply
                        emit Transfer((3 * arg2 / 100), msg.sender, stor14);
                    if not arg2 / 100:
                        if stor7 < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require arg2 / 100
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if stor7 + (3 * arg2 / 100) < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        stor7 += 3 * arg2 / 100
                    if not arg2 / 100:
                        if stor1[stor16] < stor1[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, uniswapV2PairAddress);
                    else:
                        require arg2 / 100
                        if 2 * arg2 / 100 / arg2 / 100 != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not uint255(arg2 / 100):
                            if stor1[stor16] < stor1[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 2 * arg2 / 100
                            if 2 * arg2 / 100 * stor8 / totalSupply / 2 * arg2 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if stor1[stor16] + (2 * arg2 / 100 * stor8 / totalSupply) < stor1[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor16] += 2 * arg2 / 100 * stor8 / totalSupply
                        emit Transfer((2 * arg2 / 100), msg.sender, uniswapV2PairAddress);
                    if not arg2 / 100:
                        if stor1[stor15] < stor1[stor15]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, sub_55fbc0c0Address);
                    else:
                        require arg2 / 100
                        if arg2 / 100 / arg2 / 100 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        if not arg2 / 100:
                            if stor1[stor15] < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require arg2 / 100
                            if arg2 / 100 * stor8 / totalSupply / arg2 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if stor1[stor15] + (arg2 / 100 * stor8 / totalSupply) < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor15] += arg2 / 100 * stor8 / totalSupply
                        emit Transfer((arg2 / 100), msg.sender, sub_55fbc0c0Address);
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg2
                    if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if arg2 * stor8 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                    if not arg2 / 100:
                        if stor1[stor14] < stor1[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, stor14);
                    else:
                        require arg2 / 100
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 3 * arg2 / 100:
                            if stor1[stor14] < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 3 * arg2 / 100
                            if 3 * arg2 / 100 * stor8 / totalSupply / 3 * arg2 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor1[stor14] + (3 * arg2 / 100 * stor8 / totalSupply) < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor14] += 3 * arg2 / 100 * stor8 / totalSupply
                        emit Transfer((3 * arg2 / 100), msg.sender, stor14);
                    if not arg2 / 100:
                        if stor7 < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require arg2 / 100
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if stor7 + (3 * arg2 / 100) < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        stor7 += 3 * arg2 / 100
                    if not arg2 / 100:
                        if stor1[stor16] < stor1[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, uniswapV2PairAddress);
                    else:
                        require arg2 / 100
                        if 2 * arg2 / 100 / arg2 / 100 != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not uint255(arg2 / 100):
                            if stor1[stor16] < stor1[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 2 * arg2 / 100
                            if 2 * arg2 / 100 * stor8 / totalSupply / 2 * arg2 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if stor1[stor16] + (2 * arg2 / 100 * stor8 / totalSupply) < stor1[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor16] += 2 * arg2 / 100 * stor8 / totalSupply
                        emit Transfer((2 * arg2 / 100), msg.sender, uniswapV2PairAddress);
                    if not arg2 / 100:
                        if stor1[stor15] < stor1[stor15]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, sub_55fbc0c0Address);
                    else:
                        require arg2 / 100
                        if arg2 / 100 / arg2 / 100 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        if not arg2 / 100:
                            if stor1[stor15] < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require arg2 / 100
                            if arg2 / 100 * stor8 / totalSupply / arg2 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if stor1[stor15] + (arg2 / 100 * stor8 / totalSupply) < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor15] += arg2 / 100 * stor8 / totalSupply
                        emit Transfer((arg2 / 100), msg.sender, sub_55fbc0c0Address);
                    if not arg2 * stor8 / totalSupply / 100:
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require arg2 * stor8 / totalSupply / 100
                        if 94 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 94:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if stor1[address(arg1)] + (94 * arg2 * stor8 / totalSupply / 100) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += 94 * arg2 * stor8 / totalSupply / 100
                if not arg2 / 100:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require arg2 / 100
                    if 94 * arg2 / 100 / arg2 / 100 != 94:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    emit Transfer((94 * arg2 / 100), msg.sender, arg1);
    return 1
}



}
