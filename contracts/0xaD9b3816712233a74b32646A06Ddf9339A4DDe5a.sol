contract main {




// =====================  Runtime code  =====================


#
#  - symbol()
#
uint256 cap;
array of uint256 name;
uint8 decimals;
address owner; offset 8
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
address stor10; offset 8
uint256 stor10;
address stor11;
address stor12;
address stor13;
uint256 stor14;
mapping of struct stor15;
array of struct stor16;
mapping of uint256 stor17;
mapping of uint8 stor18;
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

function owner() {
    return owner
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
    if address(stor10.field_8) != msg.sender:
        revert with 0, 'Permission denied'
    stor14 = arg1
    return 1
}

function black(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = arg2
}

function sub_ab57c235(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg1:
        revert with 0, 'recovery'
    stor13 = arg1
    return 1
}

function addLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg1:
        revert with 0, 'recovery'
    if stor12 != 0:
        revert with 0, 'recovery'
    stor12 = arg1
    return 1
}

function clearETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14 != 1000:
        revert with 0, 'Permission denied'
    stor14 = 0
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
    if address(stor10.field_8) != 0:
        revert with 0, 'recovery'
    if stor11 != 0:
        revert with 0, 'recovery'
    if not arg1:
        revert with 0, 'recovery'
    if not arg2:
        revert with 0, 'recovery'
    address(stor10.field_8) = arg1
    stor11 = arg2
    return 1
}

function Liquidity(address arg1) {
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
    stor12 = arg1
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

function sub_459c80a1(?) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_0 != 1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_256 > stor15[address(arg1)][idx].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        if s + stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256
        continue 
    return s
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_0 != 1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_256 > stor15[address(arg1)][idx].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        if s + stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256
        continue 
    return (stor17[address(arg1)] + s)
}

function update(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14 != 1:
        revert with 0, 'Permission denied'
    if arg1 == 1:
        uint256(stor10.field_0) = arg2 == 1 or Mask(248, 8, uint256(stor10.field_0))
    else:
        if arg1 == 2:
            stor6 = arg2
        else:
            if arg1 == 3:
                stor7 = arg2
            else:
                if arg1 == 4:
                    stor9 = arg2
                else:
                    if arg1 != 5:
                        if arg1 >= 100000:
                            if arg1 < 200000:
                                if 100000 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require arg1 - 100000 < stor16.length
                                stor16[arg1 - 100000].field_0 = arg2
                            else:
                                if arg1 < 300000:
                                    if 200000 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require arg1 - 200000 < stor16.length
                                    stor16[arg1 - 200000].field_256 = arg2
                                else:
                                    if arg1 < 400000:
                                        if 300000 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require arg1 - 300000 < stor16.length
                                        stor16[arg1 - 300000].field_512 = arg2
                                    else:
                                        if arg1 < 500000:
                                            if 400000 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require arg1 - 400000 < stor16.length
                                            stor16[arg1 - 400000].field_768 = arg2
                    else:
                        if stor12:
                            stor17[stor12] = arg2
                        else:
                            if arg1 >= 100000:
                                if arg1 < 200000:
                                    if 100000 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require arg1 - 100000 < stor16.length
                                    stor16[arg1 - 100000].field_0 = arg2
                                else:
                                    if arg1 < 300000:
                                        if 200000 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require arg1 - 200000 < stor16.length
                                        stor16[arg1 - 200000].field_256 = arg2
                                    else:
                                        if arg1 < 400000:
                                            if 300000 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require arg1 - 300000 < stor16.length
                                            stor16[arg1 - 300000].field_512 = arg2
                                        else:
                                            if arg1 < 500000:
                                                if 400000 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require arg1 - 400000 < stor16.length
                                                stor16[arg1 - 400000].field_768 = arg2
    stor14 = 0
    return 1
}

function Airdrop() payable {
    if msg.value < stor9:
        revert with 0, 'The amount is too small'
    if not uint8(stor10.field_0):
        revert with 0, 'End of this round'
    require stor5 < stor16.length
    require stor5 < stor16.length
    if block.timestamp < stor16[stor5].field_256:
        if not msg.value:
            if stor12:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require msg.value
            if msg.value * stor16[stor5].field_768 / msg.value != stor16[stor5].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor12:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value * stor16[stor5].field_768 > 0:
                if stor4 + (msg.value * stor16[stor5].field_768) < stor4:
                    revert with 0, 'SafeMath: addition overflow'
                stor4 += msg.value * stor16[stor5].field_768
                if stor4 > cap:
                    cap = stor4
                if stor15[address(msg.sender)][stor5].field_512 + (msg.value * stor16[stor5].field_768) < stor15[address(msg.sender)][stor5].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                stor15[address(msg.sender)][stor5].field_512 += msg.value * stor16[stor5].field_768
                if stor15[address(msg.sender)][stor5].field_0 != 1:
                    stor15[address(msg.sender)][stor5].field_0 = 1
                emit Transfer((msg.value * stor16[stor5].field_768), this.address, msg.sender);
    else:
        if not stor16[stor5].field_768:
            stor16.length++
            stor16[stor16.length].field_0 = stor16[stor5].field_256
            stor16[stor16.length].field_256 = stor16[stor5].field_256 + stor7
            stor16[stor16.length].field_512 = stor16[stor5].field_256 + stor8 + stor7
            stor16[stor16.length].field_768 = 0
        else:
            require stor16[stor5].field_768
            if stor16[stor5].field_768 * stor6 / stor16[stor5].field_768 != stor6:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            stor16.length++
            stor16[stor16.length].field_0 = stor16[stor5].field_256
            stor16[stor16.length].field_256 = stor16[stor5].field_256 + stor7
            stor16[stor16.length].field_512 = stor16[stor5].field_256 + stor8 + stor7
            stor16[stor16.length].field_768 = stor16[stor5].field_768 * stor6 / 10000
        stor5 = stor16.length - 1
        require stor5 < stor16.length
        if not msg.value:
            if stor12:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require msg.value
            if msg.value * stor16[stor5].field_768 / msg.value != stor16[stor5].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor12:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value * stor16[stor5].field_768 > 0:
                if stor4 + (msg.value * stor16[stor5].field_768) < stor4:
                    revert with 0, 'SafeMath: addition overflow'
                stor4 += msg.value * stor16[stor5].field_768
                if stor4 > cap:
                    cap = stor4
                if stor15[address(msg.sender)][stor5].field_512 + (msg.value * stor16[stor5].field_768) < stor15[address(msg.sender)][stor5].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                stor15[address(msg.sender)][stor5].field_512 += msg.value * stor16[stor5].field_768
                if stor15[address(msg.sender)][stor5].field_0 != 1:
                    stor15[address(msg.sender)][stor5].field_0 = 1
                emit Transfer((msg.value * stor16[stor5].field_768), this.address, msg.sender);
    return 1
}

function sub_bd095f42(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_0 == 1:
            require idx < stor16.length
            mem[0] = 16
            _57 = mem[64]
            mem[64] = mem[64] + 128
            mem[_57] = stor16[idx].field_0
            mem[_57 + 32] = stor16[idx].field_256
            mem[_57 + 64] = stor16[idx].field_512
            mem[_57 + 96] = stor16[idx].field_768
            mem[0] = idx
            mem[32] = sha3(address(arg1), 15)
            if stor15[address(arg1)][idx].field_0 == 1:
                if block.timestamp > stor16[idx].field_256:
                    if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                        if block.timestamp >= stor16[idx].field_512:
                            if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                    if stor15[address(arg1)][idx].field_512 > stor15[address(arg1)][idx].field_256:
                                        if stor15[address(arg1)][idx].field_256 > stor15[address(arg1)][idx].field_512:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp - stor16[idx].field_256 > 0:
                                if block.timestamp >= stor16[idx].field_512:
                                    if block.timestamp - stor16[idx].field_256 > 0:
                                        if block.timestamp >= stor16[idx].field_512:
                                            if stor15[address(arg1)][idx].field_512 > stor15[address(arg1)][idx].field_256:
                                                if stor15[address(arg1)][idx].field_256 > stor15[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not stor15[address(arg1)][idx].field_512:
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if 0 / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(arg1)][idx].field_256:
                                            if stor15[address(arg1)][idx].field_256 > 0 / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(arg1)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require stor15[address(arg1)][idx].field_512
                                        if (block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor15[address(arg1)][idx].field_512 != block.timestamp - stor16[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if (block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(arg1)][idx].field_256:
                                            if stor15[address(arg1)][idx].field_256 > (block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(arg1)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function getInfo() payable {
    mem[64] = 96
    require not msg.value
    require stor5 < stor16.length
    idx = 0
    s = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_0 != 1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        if s + stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256
        continue 
    idx = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_0 == 1:
            require idx < stor16.length
            mem[0] = 16
            _86 = mem[64]
            mem[64] = mem[64] + 128
            mem[_86] = stor16[idx].field_0
            mem[_86 + 32] = stor16[idx].field_256
            mem[_86 + 64] = stor16[idx].field_512
            mem[_86 + 96] = stor16[idx].field_768
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 15)
            if stor15[address(msg.sender)][idx].field_0 == 1:
                if block.timestamp > stor16[idx].field_256:
                    if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                        if block.timestamp >= stor16[idx].field_512:
                            if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                    if stor15[address(msg.sender)][idx].field_512 > stor15[address(msg.sender)][idx].field_256:
                                        if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp - stor16[idx].field_256 > 0:
                                if block.timestamp >= stor16[idx].field_512:
                                    if block.timestamp - stor16[idx].field_256 > 0:
                                        if block.timestamp >= stor16[idx].field_512:
                                            if stor15[address(msg.sender)][idx].field_512 > stor15[address(msg.sender)][idx].field_256:
                                                if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not stor15[address(msg.sender)][idx].field_512:
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if 0 / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(msg.sender)][idx].field_256:
                                            if stor15[address(msg.sender)][idx].field_256 > 0 / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require stor15[address(msg.sender)][idx].field_512
                                        if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor15[address(msg.sender)][idx].field_512 != block.timestamp - stor16[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(msg.sender)][idx].field_256:
                                            if stor15[address(msg.sender)][idx].field_256 > (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if stor17[address(msg.sender)] < stor17[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    return bool(uint8(stor10.field_0)), 
           stor16[stor5].field_768,
           stor5,
           eth.balance(msg.sender),
           stor17[address(msg.sender)],
           stor17[address(msg.sender)] + s,
           stor9,
           block.timestamp
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
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
    if stor18[address(msg.sender)] == 1:
        revert with 0, 'Transaction recovery'
    if stor18[address(msg.sender)] == 3:
        revert with 0, 'Transaction recovery'
    if stor18[address(arg1)] == 2:
        revert with 0, 'Transaction recovery'
    if stor18[address(arg1)] == 3:
        revert with 0, 'Transaction recovery'
    idx = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_0 == 1:
            require idx < stor16.length
            mem[0] = 16
            _289 = mem[64]
            mem[64] = mem[64] + 128
            mem[_289] = stor16[idx].field_0
            mem[_289 + 32] = stor16[idx].field_256
            mem[_289 + 64] = stor16[idx].field_512
            mem[_289 + 96] = stor16[idx].field_768
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 15)
            if stor15[address(msg.sender)][idx].field_0 == 1:
                if block.timestamp > stor16[idx].field_256:
                    if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                        if block.timestamp >= stor16[idx].field_512:
                            if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                    if stor15[address(msg.sender)][idx].field_512 > stor15[address(msg.sender)][idx].field_256:
                                        if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp - stor16[idx].field_256 > 0:
                                if block.timestamp >= stor16[idx].field_512:
                                    if block.timestamp - stor16[idx].field_256 > 0:
                                        if block.timestamp >= stor16[idx].field_512:
                                            if stor15[address(msg.sender)][idx].field_512 > stor15[address(msg.sender)][idx].field_256:
                                                if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not stor15[address(msg.sender)][idx].field_512:
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if 0 / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(msg.sender)][idx].field_256:
                                            if stor15[address(msg.sender)][idx].field_256 > 0 / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require stor15[address(msg.sender)][idx].field_512
                                        if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor15[address(msg.sender)][idx].field_512 != block.timestamp - stor16[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(msg.sender)][idx].field_256:
                                            if stor15[address(msg.sender)][idx].field_256 > (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if stor17[address(msg.sender)] < stor17[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if stor17[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: Insufficient balance'
    idx = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_0 == 1:
            require idx < stor16.length
            mem[0] = 16
            _565 = mem[64]
            mem[64] = mem[64] + 128
            mem[_565] = stor16[idx].field_0
            mem[_565 + 32] = stor16[idx].field_256
            mem[_565 + 64] = stor16[idx].field_512
            mem[_565 + 96] = stor16[idx].field_768
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 15)
            if arg2 > 0:
                if stor15[address(msg.sender)][idx].field_0 == 1:
                    if block.timestamp >= stor16[idx].field_256:
                        if stor15[address(msg.sender)][idx].field_0 != 1:
                            if arg2 <= 0:
                                if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor15[address(msg.sender)][idx].field_256 += arg2
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp <= stor16[idx].field_256:
                                if arg2 <= 0:
                                    if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor15[address(msg.sender)][idx].field_256 += arg2
                                else:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                            else:
                                if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                    if arg2 <= 0:
                                        if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor15[address(msg.sender)][idx].field_256 += arg2
                                    else:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if block.timestamp >= stor16[idx].field_512:
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            if arg2 <= 0:
                                                if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor15[address(msg.sender)][idx].field_256 += arg2
                                            else:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor15[address(msg.sender)][idx].field_256 += arg2
                                                else:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if stor15[address(msg.sender)][idx].field_512 <= stor15[address(msg.sender)][idx].field_256:
                                                    if arg2 <= 0:
                                                        if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 += arg2
                                                    else:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 <= stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256:
                                                        if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 += arg2
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor15[address(msg.sender)][idx].field_512 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_512
                                    else:
                                        if block.timestamp - stor16[idx].field_256 <= 0:
                                            if arg2 <= 0:
                                                if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor15[address(msg.sender)][idx].field_256 += arg2
                                            else:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if block.timestamp >= stor16[idx].field_512:
                                                if block.timestamp - stor16[idx].field_256 <= 0:
                                                    if arg2 <= 0:
                                                        if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 += arg2
                                                    else:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if block.timestamp < stor16[idx].field_512:
                                                        if arg2 <= 0:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg2
                                                        else:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_512 <= stor15[address(msg.sender)][idx].field_256:
                                                            if arg2 <= 0:
                                                                if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor15[address(msg.sender)][idx].field_256 += arg2
                                                            else:
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 <= stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256:
                                                                if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor15[address(msg.sender)][idx].field_256 += arg2
                                                            else:
                                                                if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor15[address(msg.sender)][idx].field_512 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_512
                                            else:
                                                if not stor15[address(msg.sender)][idx].field_512:
                                                    if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require stor16[idx].field_512 - stor16[idx].field_256
                                                    if 0 / stor16[idx].field_512 - stor16[idx].field_256 <= stor15[address(msg.sender)][idx].field_256:
                                                        if arg2 <= 0:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg2
                                                        else:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_256 > 0 / stor16[idx].field_512 - stor16[idx].field_256:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 <= (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg2
                                                        else:
                                                            if (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16[idx].field_512 - stor16[idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 = 0 / stor16[idx].field_512 - stor16[idx].field_256
                                                else:
                                                    require stor15[address(msg.sender)][idx].field_512
                                                    if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor15[address(msg.sender)][idx].field_512 != block.timestamp - stor16[idx].field_256:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require stor16[idx].field_512 - stor16[idx].field_256
                                                    if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 <= stor15[address(msg.sender)][idx].field_256:
                                                        if arg2 <= 0:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg2
                                                        else:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_256 > (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 <= ((block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg2 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg2
                                                        else:
                                                            if ((block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 = (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256
                        if stor15[address(msg.sender)][idx].field_256 >= stor15[address(msg.sender)][idx].field_512:
                            stor15[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    if arg2 > 0:
        if arg2 > stor17[address(msg.sender)]:
            revert with 0, 'ERC20: Insufficient balance'
        stor17[address(msg.sender)] -= arg2
    if stor13 != msg.sender:
        if stor17[address(arg1)] + arg2 < stor17[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor17[address(arg1)] += arg2
    else:
        if stor15[address(arg1)][stor5].field_512 + arg2 < stor15[address(arg1)][stor5].field_512:
            revert with 0, 'SafeMath: addition overflow'
        stor15[address(arg1)][stor5].field_512 += arg2
        if stor15[address(arg1)][stor5].field_0 != 1:
            stor15[address(arg1)][stor5].field_0 = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
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
    if stor18[address(arg1)] == 1:
        revert with 0, 'Transaction recovery'
    if stor18[address(arg1)] == 3:
        revert with 0, 'Transaction recovery'
    if stor18[address(arg2)] == 2:
        revert with 0, 'Transaction recovery'
    if stor18[address(arg2)] == 3:
        revert with 0, 'Transaction recovery'
    idx = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_0 == 1:
            require idx < stor16.length
            mem[0] = 16
            _397 = mem[64]
            mem[64] = mem[64] + 128
            mem[_397] = stor16[idx].field_0
            mem[_397 + 32] = stor16[idx].field_256
            mem[_397 + 64] = stor16[idx].field_512
            mem[_397 + 96] = stor16[idx].field_768
            mem[0] = idx
            mem[32] = sha3(address(arg1), 15)
            if stor15[address(arg1)][idx].field_0 == 1:
                if block.timestamp > stor16[idx].field_256:
                    if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                        if block.timestamp >= stor16[idx].field_512:
                            if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                if stor16[idx].field_512 - stor16[idx].field_256 > 0:
                                    if stor15[address(arg1)][idx].field_512 > stor15[address(arg1)][idx].field_256:
                                        if stor15[address(arg1)][idx].field_256 > stor15[address(arg1)][idx].field_512:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp - stor16[idx].field_256 > 0:
                                if block.timestamp >= stor16[idx].field_512:
                                    if block.timestamp - stor16[idx].field_256 > 0:
                                        if block.timestamp >= stor16[idx].field_512:
                                            if stor15[address(arg1)][idx].field_512 > stor15[address(arg1)][idx].field_256:
                                                if stor15[address(arg1)][idx].field_256 > stor15[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(arg1)][idx].field_512 - stor15[address(arg1)][idx].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not stor15[address(arg1)][idx].field_512:
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if 0 / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(arg1)][idx].field_256:
                                            if stor15[address(arg1)][idx].field_256 > 0 / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(arg1)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require stor15[address(arg1)][idx].field_512
                                        if (block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor15[address(arg1)][idx].field_512 != block.timestamp - stor16[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor16[idx].field_512 - stor16[idx].field_256
                                        if (block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 > stor15[address(arg1)][idx].field_256:
                                            if stor15[address(arg1)][idx].field_256 > (block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * stor15[address(arg1)][idx].field_512) - (stor16[idx].field_256 * stor15[address(arg1)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(arg1)][idx].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 17
    if stor17[address(arg1)] < stor17[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if stor17[address(arg1)] < arg3:
        revert with 0, 'ERC20: Insufficient balance'
    idx = 0
    while idx <= stor16.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_0 == 1:
            require idx < stor16.length
            mem[0] = 16
            _781 = mem[64]
            mem[64] = mem[64] + 128
            mem[_781] = stor16[idx].field_0
            mem[_781 + 32] = stor16[idx].field_256
            mem[_781 + 64] = stor16[idx].field_512
            mem[_781 + 96] = stor16[idx].field_768
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 15)
            if arg3 > 0:
                if stor15[address(msg.sender)][idx].field_0 == 1:
                    if block.timestamp >= stor16[idx].field_256:
                        if stor15[address(msg.sender)][idx].field_0 != 1:
                            if arg3 <= 0:
                                if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor15[address(msg.sender)][idx].field_256 += arg3
                            else:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp <= stor16[idx].field_256:
                                if arg3 <= 0:
                                    if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor15[address(msg.sender)][idx].field_256 += arg3
                                else:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                            else:
                                if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                    if arg3 <= 0:
                                        if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor15[address(msg.sender)][idx].field_256 += arg3
                                    else:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if block.timestamp >= stor16[idx].field_512:
                                        if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                            if arg3 <= 0:
                                                if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor15[address(msg.sender)][idx].field_256 += arg3
                                            else:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                                if arg3 <= 0:
                                                    if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor15[address(msg.sender)][idx].field_256 += arg3
                                                else:
                                                    if 0 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if stor15[address(msg.sender)][idx].field_512 <= stor15[address(msg.sender)][idx].field_256:
                                                    if arg3 <= 0:
                                                        if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 += arg3
                                                    else:
                                                        if 0 > arg3:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg3 <= stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256:
                                                        if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 += arg3
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 > arg3:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor15[address(msg.sender)][idx].field_512 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_512
                                    else:
                                        if block.timestamp - stor16[idx].field_256 <= 0:
                                            if arg3 <= 0:
                                                if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor15[address(msg.sender)][idx].field_256 += arg3
                                            else:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if block.timestamp >= stor16[idx].field_512:
                                                if block.timestamp - stor16[idx].field_256 <= 0:
                                                    if arg3 <= 0:
                                                        if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor15[address(msg.sender)][idx].field_256 += arg3
                                                    else:
                                                        if 0 > arg3:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if block.timestamp < stor16[idx].field_512:
                                                        if arg3 <= 0:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg3
                                                        else:
                                                            if 0 > arg3:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_512 <= stor15[address(msg.sender)][idx].field_256:
                                                            if arg3 <= 0:
                                                                if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor15[address(msg.sender)][idx].field_256 += arg3
                                                            else:
                                                                if 0 > arg3:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if stor15[address(msg.sender)][idx].field_256 > stor15[address(msg.sender)][idx].field_512:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg3 <= stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256:
                                                                if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor15[address(msg.sender)][idx].field_256 += arg3
                                                            else:
                                                                if stor15[address(msg.sender)][idx].field_512 - stor15[address(msg.sender)][idx].field_256 > arg3:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor15[address(msg.sender)][idx].field_512 < stor15[address(msg.sender)][idx].field_256:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_512
                                            else:
                                                if not stor15[address(msg.sender)][idx].field_512:
                                                    if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require stor16[idx].field_512 - stor16[idx].field_256
                                                    if 0 / stor16[idx].field_512 - stor16[idx].field_256 <= stor15[address(msg.sender)][idx].field_256:
                                                        if arg3 <= 0:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg3
                                                        else:
                                                            if 0 > arg3:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_256 > 0 / stor16[idx].field_512 - stor16[idx].field_256:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg3 <= (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg3
                                                        else:
                                                            if (0 / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 > arg3:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16[idx].field_512 - stor16[idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 = 0 / stor16[idx].field_512 - stor16[idx].field_256
                                                else:
                                                    require stor15[address(msg.sender)][idx].field_512
                                                    if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor15[address(msg.sender)][idx].field_512 != block.timestamp - stor16[idx].field_256:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor16[idx].field_512 - stor16[idx].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require stor16[idx].field_512 - stor16[idx].field_256
                                                    if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 <= stor15[address(msg.sender)][idx].field_256:
                                                        if arg3 <= 0:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg3
                                                        else:
                                                            if 0 > arg3:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor15[address(msg.sender)][idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if stor15[address(msg.sender)][idx].field_256 > (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg3 <= ((block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256:
                                                            if stor15[address(msg.sender)][idx].field_256 + arg3 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 += arg3
                                                        else:
                                                            if ((block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256) - stor15[address(msg.sender)][idx].field_256 > arg3:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256 < stor15[address(msg.sender)][idx].field_256:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor15[address(msg.sender)][idx].field_256 = (block.timestamp * stor15[address(msg.sender)][idx].field_512) - (stor16[idx].field_256 * stor15[address(msg.sender)][idx].field_512) / stor16[idx].field_512 - stor16[idx].field_256
                        if stor15[address(msg.sender)][idx].field_256 >= stor15[address(msg.sender)][idx].field_512:
                            stor15[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    if arg3 <= 0:
        if arg1 != stor13:
            if stor17[address(arg2)] + arg3 < stor17[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 17
            stor17[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            _800 = mem[64]
            mem[64] = mem[64] + 96
            mem[_800] = 40
            mem[_800 + 32 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
            if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 40
            mem[mem[64] + 68 len 64] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_800 + 72 len 24]
        else:
            mem[0] = stor5
            mem[32] = sha3(address(arg2), 15)
            if stor15[address(arg2)][stor5].field_512 + arg3 < stor15[address(arg2)][stor5].field_512:
                revert with 0, 'SafeMath: addition overflow'
            stor15[address(arg2)][stor5].field_512 += arg3
            if stor15[address(arg2)][stor5].field_0 == 1:
                emit Transfer(arg3, arg1, arg2);
                _813 = mem[64]
                mem[64] = mem[64] + 96
                mem[_813] = 40
                mem[_813 + 32 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 40
                mem[mem[64] + 68 len 64] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_813 + 72 len 24]
            else:
                stor15[address(arg2)][stor5].field_0 = 1
                emit Transfer(arg3, arg1, arg2);
                _818 = mem[64]
                mem[64] = mem[64] + 96
                mem[_818] = 40
                mem[_818 + 32 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 40
                mem[mem[64] + 68 len 64] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_818 + 72 len 24]
    else:
        _769 = mem[64]
        mem[64] = mem[64] + 64
        mem[_769] = 27
        mem[_769 + 32] = 'ERC20: Insufficient balance'
        if arg3 > stor17[address(arg1)]:
            revert with 0, 'ERC20: Insufficient balance'
        stor17[address(arg1)] -= arg3
        if arg1 != stor13:
            if stor17[address(arg2)] + arg3 < stor17[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 17
            stor17[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            _820 = mem[64]
            mem[64] = mem[64] + 96
            mem[_820] = 40
            mem[_820 + 32 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
            if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 40
            mem[mem[64] + 68 len 64] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_820 + 72 len 24]
        else:
            mem[0] = stor5
            mem[32] = sha3(address(arg2), 15)
            if stor15[address(arg2)][stor5].field_512 + arg3 < stor15[address(arg2)][stor5].field_512:
                revert with 0, 'SafeMath: addition overflow'
            stor15[address(arg2)][stor5].field_512 += arg3
            if stor15[address(arg2)][stor5].field_0 == 1:
                emit Transfer(arg3, arg1, arg2);
                _840 = mem[64]
                mem[64] = mem[64] + 96
                mem[_840] = 40
                mem[_840 + 32 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 40
                mem[mem[64] + 68 len 64] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_840 + 72 len 24]
            else:
                stor15[address(arg2)][stor5].field_0 = 1
                emit Transfer(arg3, arg1, arg2);
                _856 = mem[64]
                mem[64] = mem[64] + 96
                mem[_856] = 40
                mem[_856 + 32 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 40
                mem[mem[64] + 68 len 64] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_856 + 72 len 24]
    mem[mem[64] + 100] = mem[mem[64] + 124 len 8]
    revert with 0, 32, 40, mem[mem[64] + 68 len 64]
}

function getTime() {
    require stor16.length <= test266151307()
    mem[96] = stor16.length
    if not stor16.length:
        require stor16.length <= test266151307()
        mem[(32 * stor16.length) + 128] = stor16.length
        if not stor16.length:
            require stor16.length <= test266151307()
            mem[(64 * stor16.length) + 160] = stor16.length
            if not stor16.length:
                require stor16.length <= test266151307()
                mem[(98 * stor16.length) + 192] = stor16.length
                mem[64] = (131 * stor16.length) + 224
                if not stor16.length:
                    idx = 0
                    while idx < stor16.length:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = stor16[idx].field_0
                        require idx < stor16.length
                        require idx < mem[(32 * stor16.length) + 128]
                        mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                        require idx < stor16.length
                        require idx < mem[(64 * stor16.length) + 160]
                        mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                        require idx < stor16.length
                        mem[0] = 16
                        require idx < mem[(98 * stor16.length) + 192]
                        mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                        idx = idx + 1
                        continue 
                    _368 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[96]
                    _370 = mem[96]
                    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 160
                    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
                    _721 = mem[(32 * stor16.length) + 128]
                    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
                    mem[mem[64] + 64] = (32 * _721) + (32 * mem[96]) + 192
                    mem[(32 * _721) + (32 * mem[96]) + _368 + 192] = mem[(98 * stor16.length) + 192]
                    _897 = mem[(98 * stor16.length) + 192]
                    mem[(32 * _721) + (32 * mem[96]) + _368 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
                    mem[_368 + 96] = (32 * _897) + (32 * _721) + (32 * mem[96]) + 224
                    mem[(32 * _897) + (32 * _721) + (32 * _370) + _368 + 224] = mem[(64 * stor16.length) + 160]
                    _1025 = mem[(64 * stor16.length) + 160]
                    mem[(32 * _897) + (32 * _721) + (32 * _370) + _368 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _1025) + (32 * _897) + (32 * _721) + (32 * _370) + _368 + -mem[64] + 256
                mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
                idx = 0
                while idx < stor16.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor16[idx].field_0
                    require idx < stor16.length
                    require idx < mem[(32 * stor16.length) + 128]
                    mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                    require idx < stor16.length
                    require idx < mem[(64 * stor16.length) + 160]
                    mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                    require idx < stor16.length
                    mem[0] = 16
                    require idx < mem[(98 * stor16.length) + 192]
                    mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                    idx = idx + 1
                    continue 
                _373 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _375 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
                _724 = mem[(32 * stor16.length) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
                mem[mem[64] + 64] = (32 * _724) + (32 * mem[96]) + 192
                mem[(32 * _724) + (32 * mem[96]) + _373 + 192] = mem[(98 * stor16.length) + 192]
                _900 = mem[(98 * stor16.length) + 192]
                mem[(32 * _724) + (32 * mem[96]) + _373 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
                mem[_373 + 96] = (32 * _900) + (32 * _724) + (32 * mem[96]) + 224
                mem[(32 * _900) + (32 * _724) + (32 * _375) + _373 + 224] = mem[(64 * stor16.length) + 160]
                _1028 = mem[(64 * stor16.length) + 160]
                mem[(32 * _900) + (32 * _724) + (32 * _375) + _373 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _1028) + (32 * _900) + (32 * _724) + (32 * _375) + _373 + -mem[64] + 256
            mem[(64 * stor16.length) + 192 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
            require stor16.length <= test266151307()
            mem[(98 * stor16.length) + 192] = stor16.length
            mem[64] = (131 * stor16.length) + 224
            if not stor16.length:
                idx = 0
                while idx < stor16.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor16[idx].field_0
                    require idx < stor16.length
                    require idx < mem[(32 * stor16.length) + 128]
                    mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                    require idx < stor16.length
                    require idx < mem[(64 * stor16.length) + 160]
                    mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                    require idx < stor16.length
                    mem[0] = 16
                    require idx < mem[(98 * stor16.length) + 192]
                    mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                    idx = idx + 1
                    continue 
                _378 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _380 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
                _727 = mem[(32 * stor16.length) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
                mem[mem[64] + 64] = (32 * _727) + (32 * mem[96]) + 192
                mem[(32 * _727) + (32 * mem[96]) + _378 + 192] = mem[(98 * stor16.length) + 192]
                _903 = mem[(98 * stor16.length) + 192]
                mem[(32 * _727) + (32 * mem[96]) + _378 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
                mem[_378 + 96] = (32 * _903) + (32 * _727) + (32 * mem[96]) + 224
                mem[(32 * _903) + (32 * _727) + (32 * _380) + _378 + 224] = mem[(64 * stor16.length) + 160]
                _1031 = mem[(64 * stor16.length) + 160]
                mem[(32 * _903) + (32 * _727) + (32 * _380) + _378 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _1031) + (32 * _903) + (32 * _727) + (32 * _380) + _378 + -mem[64] + 256
            mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
            idx = 0
            while idx < stor16.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor16[idx].field_0
                require idx < stor16.length
                require idx < mem[(32 * stor16.length) + 128]
                mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                require idx < stor16.length
                require idx < mem[(64 * stor16.length) + 160]
                mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                require idx < stor16.length
                mem[0] = 16
                require idx < mem[(98 * stor16.length) + 192]
                mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                idx = idx + 1
                continue 
            _383 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _385 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
            _730 = mem[(32 * stor16.length) + 128]
            mem[(32 * _385) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
            mem[mem[64] + 64] = (32 * _730) + (32 * _385) + 192
            mem[(32 * _730) + (32 * _385) + _383 + 192] = mem[(98 * stor16.length) + 192]
            _906 = mem[(98 * stor16.length) + 192]
            mem[(32 * _730) + (32 * _385) + _383 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
            mem[_383 + 96] = (32 * _906) + (32 * _730) + (32 * _385) + 224
            mem[(32 * _906) + (32 * _730) + (32 * _385) + _383 + 224] = mem[(64 * stor16.length) + 160]
            _1034 = mem[(64 * stor16.length) + 160]
            mem[(32 * _906) + (32 * _730) + (32 * _385) + _383 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1034) + (32 * _906) + (32 * _730) + (32 * _385) + _383 + -mem[64] + 256
        mem[(32 * stor16.length) + 160 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        require stor16.length <= test266151307()
        mem[(64 * stor16.length) + 160] = stor16.length
        if not stor16.length:
            require stor16.length <= test266151307()
            mem[(98 * stor16.length) + 192] = stor16.length
            mem[64] = (131 * stor16.length) + 224
            if not stor16.length:
                idx = 0
                while idx < stor16.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor16[idx].field_0
                    require idx < stor16.length
                    require idx < mem[(32 * stor16.length) + 128]
                    mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                    require idx < stor16.length
                    require idx < mem[(64 * stor16.length) + 160]
                    mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                    require idx < stor16.length
                    mem[0] = 16
                    require idx < mem[(98 * stor16.length) + 192]
                    mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                    idx = idx + 1
                    continue 
                _388 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _390 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
                _733 = mem[(32 * stor16.length) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
                mem[mem[64] + 64] = (32 * _733) + (32 * mem[96]) + 192
                mem[(32 * _733) + (32 * mem[96]) + _388 + 192] = mem[(98 * stor16.length) + 192]
                _909 = mem[(98 * stor16.length) + 192]
                mem[(32 * _733) + (32 * mem[96]) + _388 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
                mem[_388 + 96] = (32 * _909) + (32 * _733) + (32 * mem[96]) + 224
                mem[(32 * _909) + (32 * _733) + (32 * _390) + _388 + 224] = mem[(64 * stor16.length) + 160]
                _1037 = mem[(64 * stor16.length) + 160]
                mem[(32 * _909) + (32 * _733) + (32 * _390) + _388 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _1037) + (32 * _909) + (32 * _733) + (32 * _390) + _388 + -mem[64] + 256
            mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
            idx = 0
            while idx < stor16.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor16[idx].field_0
                require idx < stor16.length
                require idx < mem[(32 * stor16.length) + 128]
                mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                require idx < stor16.length
                require idx < mem[(64 * stor16.length) + 160]
                mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                require idx < stor16.length
                mem[0] = 16
                require idx < mem[(98 * stor16.length) + 192]
                mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                idx = idx + 1
                continue 
            _393 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _395 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
            _736 = mem[(32 * stor16.length) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
            mem[mem[64] + 64] = (32 * _736) + (32 * mem[96]) + 192
            mem[(32 * _736) + (32 * mem[96]) + _393 + 192] = mem[(98 * stor16.length) + 192]
            _912 = mem[(98 * stor16.length) + 192]
            mem[(32 * _736) + (32 * mem[96]) + _393 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
            mem[_393 + 96] = (32 * _912) + (32 * _736) + (32 * mem[96]) + 224
            mem[(32 * _912) + (32 * _736) + (32 * _395) + _393 + 224] = mem[(64 * stor16.length) + 160]
            _1040 = mem[(64 * stor16.length) + 160]
            mem[(32 * _912) + (32 * _736) + (32 * _395) + _393 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1040) + (32 * _912) + (32 * _736) + (32 * _395) + _393 + -mem[64] + 256
        mem[(64 * stor16.length) + 192 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        require stor16.length <= test266151307()
        mem[(98 * stor16.length) + 192] = stor16.length
        mem[64] = (131 * stor16.length) + 224
        if not stor16.length:
            idx = 0
            while idx < stor16.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor16[idx].field_0
                require idx < stor16.length
                require idx < mem[(32 * stor16.length) + 128]
                mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                require idx < stor16.length
                require idx < mem[(64 * stor16.length) + 160]
                mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                require idx < stor16.length
                mem[0] = 16
                require idx < mem[(98 * stor16.length) + 192]
                mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                idx = idx + 1
                continue 
            _398 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _400 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
            _739 = mem[(32 * stor16.length) + 128]
            mem[(32 * _400) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
            mem[mem[64] + 64] = (32 * _739) + (32 * _400) + 192
            mem[(32 * _739) + (32 * _400) + _398 + 192] = mem[(98 * stor16.length) + 192]
            _915 = mem[(98 * stor16.length) + 192]
            mem[(32 * _739) + (32 * _400) + _398 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
            mem[_398 + 96] = (32 * _915) + (32 * _739) + (32 * _400) + 224
            mem[(32 * _915) + (32 * _739) + (32 * _400) + _398 + 224] = mem[(64 * stor16.length) + 160]
            _1043 = mem[(64 * stor16.length) + 160]
            mem[(32 * _915) + (32 * _739) + (32 * _400) + _398 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1043) + (32 * _915) + (32 * _739) + (32 * _400) + _398 + -mem[64] + 256
        mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        idx = 0
        while idx < stor16.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor16[idx].field_0
            require idx < stor16.length
            require idx < mem[(32 * stor16.length) + 128]
            mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
            require idx < stor16.length
            require idx < mem[(64 * stor16.length) + 160]
            mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
            require idx < stor16.length
            mem[0] = 16
            require idx < mem[(98 * stor16.length) + 192]
            mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
            idx = idx + 1
            continue 
        _403 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _405 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
        _742 = mem[(32 * stor16.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
        mem[mem[64] + 64] = (32 * _742) + (32 * mem[96]) + 192
        mem[(32 * _742) + (32 * _405) + _403 + 192] = mem[(98 * stor16.length) + 192]
        _918 = mem[(98 * stor16.length) + 192]
        mem[(32 * _742) + (32 * _405) + _403 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
        mem[_403 + 96] = (32 * _918) + (32 * _742) + (32 * _405) + 224
        mem[(32 * _918) + (32 * _742) + (32 * _405) + _403 + 224] = mem[(64 * stor16.length) + 160]
        _1046 = mem[(64 * stor16.length) + 160]
        mem[(32 * _918) + (32 * _742) + (32 * _405) + _403 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1046) + (32 * _918) + (32 * _742) + (32 * _405) + _403 + -mem[64] + 256
    mem[128 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
    require stor16.length <= test266151307()
    mem[(32 * stor16.length) + 128] = stor16.length
    if not stor16.length:
        require stor16.length <= test266151307()
        mem[(64 * stor16.length) + 160] = stor16.length
        if not stor16.length:
            require stor16.length <= test266151307()
            mem[(98 * stor16.length) + 192] = stor16.length
            mem[64] = (131 * stor16.length) + 224
            if not stor16.length:
                idx = 0
                while idx < stor16.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor16[idx].field_0
                    require idx < stor16.length
                    require idx < mem[(32 * stor16.length) + 128]
                    mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                    require idx < stor16.length
                    require idx < mem[(64 * stor16.length) + 160]
                    mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                    require idx < stor16.length
                    mem[0] = 16
                    require idx < mem[(98 * stor16.length) + 192]
                    mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                    idx = idx + 1
                    continue 
                _408 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _410 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
                _745 = mem[(32 * stor16.length) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
                mem[mem[64] + 64] = (32 * _745) + (32 * mem[96]) + 192
                mem[(32 * _745) + (32 * _410) + _408 + 192] = mem[(98 * stor16.length) + 192]
                _921 = mem[(98 * stor16.length) + 192]
                mem[(32 * _745) + (32 * _410) + _408 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
                mem[_408 + 96] = (32 * _921) + (32 * _745) + (32 * _410) + 224
                mem[(32 * _921) + (32 * _745) + (32 * _410) + _408 + 224] = mem[(64 * stor16.length) + 160]
                _1049 = mem[(64 * stor16.length) + 160]
                mem[(32 * _921) + (32 * _745) + (32 * _410) + _408 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _1049) + (32 * _921) + (32 * _745) + (32 * _410) + _408 + -mem[64] + 256
            mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
            idx = 0
            while idx < stor16.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor16[idx].field_0
                require idx < stor16.length
                require idx < mem[(32 * stor16.length) + 128]
                mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                require idx < stor16.length
                require idx < mem[(64 * stor16.length) + 160]
                mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                require idx < stor16.length
                mem[0] = 16
                require idx < mem[(98 * stor16.length) + 192]
                mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                idx = idx + 1
                continue 
            _413 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _415 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
            _748 = mem[(32 * stor16.length) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
            mem[mem[64] + 64] = (32 * _748) + (32 * mem[96]) + 192
            mem[(32 * _748) + (32 * mem[96]) + _413 + 192] = mem[(98 * stor16.length) + 192]
            _924 = mem[(98 * stor16.length) + 192]
            mem[(32 * _748) + (32 * mem[96]) + _413 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
            mem[_413 + 96] = (32 * _924) + (32 * _748) + (32 * mem[96]) + 224
            mem[(32 * _924) + (32 * _748) + (32 * _415) + _413 + 224] = mem[(64 * stor16.length) + 160]
            _1052 = mem[(64 * stor16.length) + 160]
            mem[(32 * _924) + (32 * _748) + (32 * _415) + _413 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1052) + (32 * _924) + (32 * _748) + (32 * _415) + _413 + -mem[64] + 256
        mem[(64 * stor16.length) + 192 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        require stor16.length <= test266151307()
        mem[(98 * stor16.length) + 192] = stor16.length
        mem[64] = (131 * stor16.length) + 224
        if not stor16.length:
            idx = 0
            while idx < stor16.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor16[idx].field_0
                require idx < stor16.length
                require idx < mem[(32 * stor16.length) + 128]
                mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                require idx < stor16.length
                require idx < mem[(64 * stor16.length) + 160]
                mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                require idx < stor16.length
                mem[0] = 16
                require idx < mem[(98 * stor16.length) + 192]
                mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                idx = idx + 1
                continue 
            _418 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _420 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
            _751 = mem[(32 * stor16.length) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
            mem[mem[64] + 64] = (32 * _751) + (32 * mem[96]) + 192
            mem[(32 * _751) + (32 * _420) + _418 + 192] = mem[(98 * stor16.length) + 192]
            _927 = mem[(98 * stor16.length) + 192]
            mem[(32 * _751) + (32 * _420) + _418 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
            mem[_418 + 96] = (32 * _927) + (32 * _751) + (32 * _420) + 224
            mem[(32 * _927) + (32 * _751) + (32 * _420) + _418 + 224] = mem[(64 * stor16.length) + 160]
            _1055 = mem[(64 * stor16.length) + 160]
            mem[(32 * _927) + (32 * _751) + (32 * _420) + _418 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1055) + (32 * _927) + (32 * _751) + (32 * _420) + _418 + -mem[64] + 256
        mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        idx = 0
        while idx < stor16.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor16[idx].field_0
            require idx < stor16.length
            require idx < mem[(32 * stor16.length) + 128]
            mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
            require idx < stor16.length
            require idx < mem[(64 * stor16.length) + 160]
            mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
            require idx < stor16.length
            mem[0] = 16
            require idx < mem[(98 * stor16.length) + 192]
            mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
            idx = idx + 1
            continue 
        _423 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _425 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
        _754 = mem[(32 * stor16.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
        mem[mem[64] + 64] = (32 * _754) + (32 * mem[96]) + 192
        mem[(32 * _754) + (32 * _425) + _423 + 192] = mem[(98 * stor16.length) + 192]
        _930 = mem[(98 * stor16.length) + 192]
        mem[(32 * _754) + (32 * _425) + _423 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
        mem[_423 + 96] = (32 * _930) + (32 * _754) + (32 * _425) + 224
        mem[(32 * _930) + (32 * _754) + (32 * _425) + _423 + 224] = mem[(64 * stor16.length) + 160]
        _1058 = mem[(64 * stor16.length) + 160]
        mem[(32 * _930) + (32 * _754) + (32 * _425) + _423 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1058) + (32 * _930) + (32 * _754) + (32 * _425) + _423 + -mem[64] + 256
    mem[(32 * stor16.length) + 160 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
    require stor16.length <= test266151307()
    mem[(64 * stor16.length) + 160] = stor16.length
    if not stor16.length:
        require stor16.length <= test266151307()
        mem[(98 * stor16.length) + 192] = stor16.length
        mem[64] = (131 * stor16.length) + 224
        if not stor16.length:
            idx = 0
            while idx < stor16.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor16[idx].field_0
                require idx < stor16.length
                require idx < mem[(32 * stor16.length) + 128]
                mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
                require idx < stor16.length
                require idx < mem[(64 * stor16.length) + 160]
                mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
                require idx < stor16.length
                mem[0] = 16
                require idx < mem[(98 * stor16.length) + 192]
                mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
                idx = idx + 1
                continue 
            _428 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _430 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
            _757 = mem[(32 * stor16.length) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
            mem[mem[64] + 64] = (32 * _757) + (32 * mem[96]) + 192
            mem[(32 * _757) + (32 * _430) + _428 + 192] = mem[(98 * stor16.length) + 192]
            _933 = mem[(98 * stor16.length) + 192]
            mem[(32 * _757) + (32 * _430) + _428 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
            mem[_428 + 96] = (32 * _933) + (32 * _757) + (32 * _430) + 224
            mem[(32 * _933) + (32 * _757) + (32 * _430) + _428 + 224] = mem[(64 * stor16.length) + 160]
            _1061 = mem[(64 * stor16.length) + 160]
            mem[(32 * _933) + (32 * _757) + (32 * _430) + _428 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1061) + (32 * _933) + (32 * _757) + (32 * _430) + _428 + -mem[64] + 256
        mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        idx = 0
        while idx < stor16.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor16[idx].field_0
            require idx < stor16.length
            require idx < mem[(32 * stor16.length) + 128]
            mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
            require idx < stor16.length
            require idx < mem[(64 * stor16.length) + 160]
            mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
            require idx < stor16.length
            mem[0] = 16
            require idx < mem[(98 * stor16.length) + 192]
            mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
            idx = idx + 1
            continue 
        _433 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _435 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
        _760 = mem[(32 * stor16.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
        mem[mem[64] + 64] = (32 * _760) + (32 * mem[96]) + 192
        mem[(32 * _760) + (32 * mem[96]) + _433 + 192] = mem[(98 * stor16.length) + 192]
        _936 = mem[(98 * stor16.length) + 192]
        mem[(32 * _760) + (32 * mem[96]) + _433 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
        mem[_433 + 96] = (32 * _936) + (32 * _760) + (32 * mem[96]) + 224
        mem[(32 * _936) + (32 * _760) + (32 * _435) + _433 + 224] = mem[(64 * stor16.length) + 160]
        _1064 = mem[(64 * stor16.length) + 160]
        mem[(32 * _936) + (32 * _760) + (32 * _435) + _433 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1064) + (32 * _936) + (32 * _760) + (32 * _435) + _433 + -mem[64] + 256
    mem[(64 * stor16.length) + 192 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
    require stor16.length <= test266151307()
    mem[(98 * stor16.length) + 192] = stor16.length
    mem[64] = (131 * stor16.length) + 224
    if not stor16.length:
        idx = 0
        while idx < stor16.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor16[idx].field_0
            require idx < stor16.length
            require idx < mem[(32 * stor16.length) + 128]
            mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
            require idx < stor16.length
            require idx < mem[(64 * stor16.length) + 160]
            mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
            require idx < stor16.length
            mem[0] = 16
            require idx < mem[(98 * stor16.length) + 192]
            mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
            idx = idx + 1
            continue 
        _438 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _440 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
        _763 = mem[(32 * stor16.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
        mem[mem[64] + 64] = (32 * _763) + (32 * mem[96]) + 192
        mem[(32 * _763) + (32 * mem[96]) + _438 + 192] = mem[(98 * stor16.length) + 192]
        _939 = mem[(98 * stor16.length) + 192]
        mem[(32 * _763) + (32 * mem[96]) + _438 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
        mem[_438 + 96] = (32 * _939) + (32 * _763) + (32 * mem[96]) + 224
        mem[(32 * _939) + (32 * _763) + (32 * _440) + _438 + 224] = mem[(64 * stor16.length) + 160]
        _1067 = mem[(64 * stor16.length) + 160]
        mem[(32 * _939) + (32 * _763) + (32 * _440) + _438 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1067) + (32 * _939) + (32 * _763) + (32 * _440) + _438 + -mem[64] + 256
    mem[(98 * stor16.length) + 224 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
    idx = 0
    while idx < stor16.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor16[idx].field_0
        require idx < stor16.length
        require idx < mem[(32 * stor16.length) + 128]
        mem[(32 * idx) + (32 * stor16.length) + 160] = stor16[idx].field_256
        require idx < stor16.length
        require idx < mem[(64 * stor16.length) + 160]
        mem[(32 * idx) + (64 * stor16.length) + 192] = stor16[idx].field_768
        require idx < stor16.length
        mem[0] = 16
        require idx < mem[(98 * stor16.length) + 192]
        mem[(32 * idx) + (98 * stor16.length) + 224] = stor16[idx].field_512
        idx = idx + 1
        continue 
    _443 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _445 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor16.length) + 128]
    _766 = mem[(32 * stor16.length) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor16.length) + 128])] = mem[(32 * stor16.length) + 160 len floor32(mem[(32 * stor16.length) + 128])]
    mem[mem[64] + 64] = (32 * _766) + (32 * mem[96]) + 192
    mem[(32 * _766) + (32 * _445) + _443 + 192] = mem[(98 * stor16.length) + 192]
    _942 = mem[(98 * stor16.length) + 192]
    mem[(32 * _766) + (32 * _445) + _443 + 224 len floor32(mem[(98 * stor16.length) + 192])] = mem[(98 * stor16.length) + 224 len floor32(mem[(98 * stor16.length) + 192])]
    mem[_443 + 96] = (32 * _942) + (32 * _766) + (32 * _445) + 224
    mem[(32 * _942) + (32 * _766) + (32 * _445) + _443 + 224] = mem[(64 * stor16.length) + 160]
    _1070 = mem[(64 * stor16.length) + 160]
    mem[(32 * _942) + (32 * _766) + (32 * _445) + _443 + 256 len floor32(mem[(64 * stor16.length) + 160])] = mem[(64 * stor16.length) + 192 len floor32(mem[(64 * stor16.length) + 160])]
    return memory
      from mem[64]
       len (32 * _1070) + (32 * _942) + (32 * _766) + (32 * _445) + _443 + -mem[64] + 256
}



}
