contract main {




// =====================  Runtime code  =====================


array of uint256 stor1;
address owner;
uint256 stor52;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct transactions;
uint256 stor157;
uint256 totalSupply;
uint256 stor159;
mapping of uint256 stor160;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function transactionsSize() {
    return transactions.length
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transactions(uint256 arg1) {
    require arg1 < transactions.length
    mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'transactions', 156) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'transactions', 156) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'transactions', 156) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(transactions[arg1].field_0)), 
           address(transactions[arg1].field_0),
           Array(len=stor[(2 * arg1) + ('name', 'transactions', 156) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'transactions', 156) + 1].length])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function lockOwnership() {
    require msg.sender == owner
    require not stor52
    emit OwnershipLocked(owner);
    stor52 = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if stor159 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor159
    return (stor160[address(arg1)] / stor159)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require not stor52
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTransactionEnabled(uint256 arg1, bool arg2) {
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'index must be in range of stored tx list'
    uint8(transactions[arg1].field_0) = uint8(arg2)
}

function addTransaction(address arg1, bytes arg2) {
    require msg.sender == owner
    transactions.length++
    uint8(transactions[transactions.length].field_0) = 1
    address(transactions[transactions.length].field_8) = arg1
    uint256(stor[sha3((2 * transactions.length) + ('name', 'transactions', 156) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function increaseAllowance(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    if not arg2:
        if 0 > stor160[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor160[address(arg1)] < stor160[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg2
        if arg2 * stor159 / arg2 != stor159:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg2 * stor159 > stor160[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor160[address(msg.sender)] += -1 * arg2 * stor159
        if stor160[address(arg1)] + (arg2 * stor159) < stor160[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor160[address(arg1)] += arg2 * stor159
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg3:
        if 0 > stor160[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor160[address(arg2)] < stor160[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg3
        if arg3 * stor159 / arg3 != stor159:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg3 * stor159 > stor160[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor160[address(arg1)] += -1 * arg3 * stor159
        if stor160[address(arg2)] + (arg3 * stor159) < stor160[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        stor160[address(arg2)] += arg3 * stor159
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function removeTransaction(uint256 arg1) {
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0, 'index out of bounds'
    if arg1 >= transactions.length - 1:
        transactions.length--
        if transactions.length > transactions.length - 1:
            mem[0] = 156
            idx = 2 * transactions.length - 1
            while sha3(156) + (2 * transactions.length) > idx + sha3(mem[0]):
                uint8(stor[idx + sha3(mem[0])].field_0) = 0
                address(stor[idx + sha3(mem[0])].field_8) = 0
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                idx = idx + 2
                continue 
    else:
        require transactions.length - 1 < transactions.length
        require arg1 < transactions.length
        uint8(transactions[arg1].field_0) = uint8(bool(uint8(transactions[transactions.length - 1].field_0)))
        Mask(248, 0, transactions[arg1].field_8) = address(transactions[transactions.length - 1].field_8)
        if 31 >= stor[(2 * transactions.length - 1) + ('name', 'transactions', 156) + 1].length:
            uint256(transactions[arg1].field_256) = uint256(transactions[transactions.length - 1].field_256)
            idx = 0
            while stor[(2 * arg1) + ('name', 'transactions', 156) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * arg1) + ('name', 'transactions', 156) + 1)].field_0) = 0
                idx = idx + 1
                continue 
            transactions.length--
            if transactions.length > transactions.length - 1:
                mem[0] = 156
                idx = 2 * transactions.length - 1
                while sha3(156) + (2 * transactions.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])].field_0) = 0
                    address(stor[idx + sha3(mem[0])].field_8) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    idx = idx + 2
                    continue 
        else:
            uint256(transactions[arg1].field_256) = Mask(255, 1, (256 * not bool(transactions[transactions.length - 1].field_256)) - 1 and uint256(transactions[transactions.length - 1].field_256)) + 1
            if not Mask(255, 1, (256 * not bool(transactions[transactions.length - 1].field_256)) - 1 and uint256(transactions[transactions.length - 1].field_256)):
                idx = 0
                while stor[(2 * arg1) + ('name', 'transactions', 156) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((2 * arg1) + ('name', 'transactions', 156) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(2 * transactions.length - 1) + ('name', 'transactions', 156) + 1].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((2 * arg1) + ('name', 'transactions', 156) + 1)].field_0) = uint256(stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 156) + 1)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(2 * transactions.length - 1) + ('name', 'transactions', 156) + 1].length + 31 / 32
                while stor[(2 * arg1) + ('name', 'transactions', 156) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((2 * arg1) + ('name', 'transactions', 156) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            transactions.length--
            if transactions.length > transactions.length - 1:
                mem[0] = 156
                idx = 2 * transactions.length - 1
                while sha3(156) + (2 * transactions.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])].field_0) = 0
                    address(stor[idx + sha3(mem[0])].field_8) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    idx = idx + 2
                    continue 
}

function rebase(int256 arg1) {
    require msg.sender == owner
    if stor157 + 1 < stor157:
        revert with 0, 'SafeMath: addition overflow'
    stor157++
    if not arg1:
        emit LogRebase(totalSupply, stor157);
    else:
        if arg1 >= 0:
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if totalSupply <= test266151307():
                mem[64] = 160
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor159 = -2007913129639936 / totalSupply
                mem[160] = totalSupply
                emit LogRebase(totalSupply, stor157);
                s = 0
                t = 0
                idx = 0
                while idx < transactions.length:
                    mem[0] = 156
                    if not uint8(transactions[idx].field_0):
                        s = s
                        t = (2 * idx) + sha3(156)
                        idx = idx + 1
                        continue 
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 156) + 1].length) + 32
                    mem[_381] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                    mem[0] = (2 * idx) + sha3(156) + 1
                    mem[_381 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                    s = _381 + 32
                    t = sha3(mem[0])
                    while _381 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(transactions[idx].field_8).mem[_381 + 32 len 4] with:
                         gas gas_remaining - 34710 wei
                        args mem[_381 + 36 len mem[_381] - 4]
                    if ext_call.success:
                        s = ext_call.success
                        t = (2 * idx) + sha3(156)
                        idx = idx + 1
                        continue 
                    _693 = mem[64]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                    mem[0] = (2 * idx) + sha3(156) + 1
                    mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                    s = mem[64] + 96
                    t = sha3(mem[0])
                    while _693 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + 96 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                           mem[mem[64] len _693 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + (s + -_693 + -stor[(2 * idx) + ('name', 'transactions', 156) + 1].length - 64 % 32) + -mem[64] + 96],
                                           address(transactions[idx].field_8),
                    revert with 0, 'Transaction Failed'
            else:
                totalSupply = test266151307()
                mem[64] = 160
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor159 = -2007913129639936 / totalSupply
                mem[160] = totalSupply
                emit LogRebase(totalSupply, stor157);
                s = 0
                t = 0
                idx = 0
                while idx < transactions.length:
                    mem[0] = 156
                    if not uint8(transactions[idx].field_0):
                        s = s
                        t = (2 * idx) + sha3(156)
                        idx = idx + 1
                        continue 
                    _385 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 156) + 1].length) + 32
                    mem[_385] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                    mem[0] = (2 * idx) + sha3(156) + 1
                    mem[_385 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                    s = _385 + 32
                    t = sha3(mem[0])
                    while _385 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(transactions[idx].field_8).mem[_385 + 32 len 4] with:
                         gas gas_remaining - 34710 wei
                        args mem[_385 + 36 len mem[_385] - 4]
                    if ext_call.success:
                        s = ext_call.success
                        t = (2 * idx) + sha3(156)
                        idx = idx + 1
                        continue 
                    _694 = mem[64]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                    mem[0] = (2 * idx) + sha3(156) + 1
                    mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                    s = mem[64] + 96
                    t = sha3(mem[0])
                    while _694 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + 96 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                           mem[mem[64] len _694 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + (s + -_694 + -stor[(2 * idx) + ('name', 'transactions', 156) + 1].length - 64 % 32) + -mem[64] + 96],
                                           address(transactions[idx].field_8),
                    revert with 0, 'Transaction Failed'
        else:
            require arg1 != 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if arg1 < 0:
                if -arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply += arg1
                if totalSupply <= test266151307():
                    mem[64] = 224
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    stor159 = -2007913129639936 / totalSupply
                    mem[224] = totalSupply
                    emit LogRebase(totalSupply, stor157);
                    s = 0
                    t = 0
                    idx = 0
                    while idx < transactions.length:
                        mem[0] = 156
                        if not uint8(transactions[idx].field_0):
                            s = s
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _389 = mem[64]
                        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 156) + 1].length) + 32
                        mem[_389] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[_389 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = _389 + 32
                        t = sha3(mem[0])
                        while _389 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(transactions[idx].field_8).mem[_389 + 32 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_389 + 36 len mem[_389] - 4]
                        if ext_call.success:
                            s = ext_call.success
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _695 = mem[64]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = mem[64] + 96
                        t = sha3(mem[0])
                        while _695 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + 96 > s + 32:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                               mem[mem[64] len _695 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + (s + -_695 + -stor[(2 * idx) + ('name', 'transactions', 156) + 1].length - 64 % 32) + -mem[64] + 96],
                                               address(transactions[idx].field_8),
                        revert with 0, 'Transaction Failed'
                else:
                    totalSupply = test266151307()
                    mem[64] = 224
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    stor159 = -2007913129639936 / totalSupply
                    mem[224] = totalSupply
                    emit LogRebase(totalSupply, stor157);
                    s = 0
                    t = 0
                    idx = 0
                    while idx < transactions.length:
                        mem[0] = 156
                        if not uint8(transactions[idx].field_0):
                            s = s
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _393 = mem[64]
                        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 156) + 1].length) + 32
                        mem[_393] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[_393 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = _393 + 32
                        t = sha3(mem[0])
                        while _393 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(transactions[idx].field_8).mem[_393 + 32 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_393 + 36 len mem[_393] - 4]
                        if ext_call.success:
                            s = ext_call.success
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _696 = mem[64]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = mem[64] + 96
                        t = sha3(mem[0])
                        while _696 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + 96 > s + 32:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                               mem[mem[64] len _696 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + (s + -_696 + -stor[(2 * idx) + ('name', 'transactions', 156) + 1].length - 64 % 32) + -mem[64] + 96],
                                               address(transactions[idx].field_8),
                        revert with 0, 'Transaction Failed'
            else:
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                if totalSupply <= test266151307():
                    mem[64] = 224
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    stor159 = -2007913129639936 / totalSupply
                    mem[224] = totalSupply
                    emit LogRebase(totalSupply, stor157);
                    s = 0
                    t = 0
                    idx = 0
                    while idx < transactions.length:
                        mem[0] = 156
                        if not uint8(transactions[idx].field_0):
                            s = s
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _398 = mem[64]
                        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 156) + 1].length) + 32
                        mem[_398] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[_398 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = _398 + 32
                        t = sha3(mem[0])
                        while _398 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(transactions[idx].field_8).mem[_398 + 32 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_398 + 36 len mem[_398] - 4]
                        if ext_call.success:
                            s = ext_call.success
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _697 = mem[64]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = mem[64] + 96
                        t = sha3(mem[0])
                        while _697 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + 96 > s + 32:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                               mem[mem[64] len _697 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + (s + -_697 + -stor[(2 * idx) + ('name', 'transactions', 156) + 1].length - 64 % 32) + -mem[64] + 96],
                                               address(transactions[idx].field_8),
                        revert with 0, 'Transaction Failed'
                else:
                    totalSupply = test266151307()
                    mem[64] = 224
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    stor159 = -2007913129639936 / totalSupply
                    mem[224] = totalSupply
                    emit LogRebase(totalSupply, stor157);
                    s = 0
                    t = 0
                    idx = 0
                    while idx < transactions.length:
                        mem[0] = 156
                        if not uint8(transactions[idx].field_0):
                            s = s
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _402 = mem[64]
                        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 156) + 1].length) + 32
                        mem[_402] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[_402 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = _402 + 32
                        t = sha3(mem[0])
                        while _402 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(transactions[idx].field_8).mem[_402 + 32 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_402 + 36 len mem[_402] - 4]
                        if ext_call.success:
                            s = ext_call.success
                            t = (2 * idx) + sha3(156)
                            idx = idx + 1
                            continue 
                        _698 = mem[64]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 156) + 1].length
                        mem[0] = (2 * idx) + sha3(156) + 1
                        mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 156) + 1)].field_0)
                        s = mem[64] + 96
                        t = sha3(mem[0])
                        while _698 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + 96 > s + 32:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                               mem[mem[64] len _698 + stor[(2 * idx) + ('name', 'transactions', 156) + 1].length + (s + -_698 + -stor[(2 * idx) + ('name', 'transactions', 156) + 1].length - 64 % 32) + -mem[64] + 96],
                                               address(transactions[idx].field_8),
                        revert with 0, 'Transaction Failed'
    return totalSupply
}



}
