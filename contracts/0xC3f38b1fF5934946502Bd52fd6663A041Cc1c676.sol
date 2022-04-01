contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor6;
uint256 stor7;
uint256 cap;
uint256 totalLock;
uint256 lockFromBlock;
uint256 lockToBlock;
array of uint256 sub_040dbb3c;
mapping of uint256 lockOf;
mapping of uint256 lastUnlockBlock;

function owners(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_040dbb3c(?) payable {
    return sub_040dbb3c[0 len sub_040dbb3c.length]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function totalLock() payable {
    return totalLock
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)]
}

function lockFromBlock() payable {
    return lockFromBlock
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function lastUnlockBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUnlockBlock[address(arg1)]
}

function lockToBlock() payable {
    return lockToBlock
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

function circulatingSupply() payable {
    if totalLock > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - totalLock)
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor6[address(msg.sender)]
    if stor6[address(arg1)]:
        return 0
    stor7++
    stor6[address(arg1)] = 1
    emit AddOwner(msg.sender, arg1);
    return 1
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockOf[address(arg1)] + balanceOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (lockOf[address(arg1)] + balanceOf[address(arg1)])
}

function removeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor6[address(msg.sender)]
    if not stor6[address(arg1)]:
        return 0
    if stor7 <= 1:
        return 0
    stor7--
    stor6[address(arg1)] = 0
    emit RemoveOwner(msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor6[address(msg.sender)]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
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

function canUnlockAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < lockFromBlock:
        return 0
    if block.number >= lockToBlock:
        return lockOf[address(arg1)]
    if lastUnlockBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastUnlockBlock[address(arg1)] > lockToBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockOf[address(arg1)]:
        if lockToBlock - lastUnlockBlock[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if lockToBlock - lastUnlockBlock[address(arg1)]:
            return (0 / lockToBlock - lastUnlockBlock[address(arg1)])
    else:
        if lockOf[address(arg1)]:
            if (block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockOf[address(arg1)] != block.number - lastUnlockBlock[address(arg1)]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if lockToBlock - lastUnlockBlock[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if lockToBlock - lastUnlockBlock[address(arg1)]:
                return ((block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockToBlock - lastUnlockBlock[address(arg1)])
    revert
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor6[address(msg.sender)]
    if not arg1:
        revert with 0, 'ERC20: lock to the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ERC20: lock amount over blance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg2
    if balanceOf[address(this.address)] + arg2 < balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, arg1, this.address);
    if lockOf[address(arg1)] + arg2 < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += arg2
    if totalLock + arg2 < totalLock:
        revert with 0, 'SafeMath: addition overflow'
    totalLock += arg2
    if lastUnlockBlock[address(arg1)] < lockFromBlock:
        lastUnlockBlock[address(arg1)] = lockFromBlock
    emit Lock(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if not arg1:
        if totalSupply + arg3 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg3 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
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

function unlock() payable {
    if lockOf[address(msg.sender)] <= 0:
        revert with 0, 'ERC20: cannot unlock'
    if block.number < lockFromBlock:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 <= balanceOf[address(this.address)]:
            if not this.address:
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if totalSupply > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if 0 > balanceOf[address(this.address)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, this.address, msg.sender);
            if 0 > lockOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastUnlockBlock[address(msg.sender)] = block.number
            if 0 > totalLock:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if not this.address:
                if totalSupply + balanceOf[address(this.address)] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if totalSupply + balanceOf[address(this.address)] > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(this.address)] = 0
            if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
            lastUnlockBlock[address(msg.sender)] = block.number
            if balanceOf[address(this.address)] > totalLock:
                revert with 0, 'SafeMath: subtraction overflow'
            totalLock -= balanceOf[address(this.address)]
    else:
        if block.number >= lockToBlock:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if lockOf[address(msg.sender)] <= balanceOf[address(this.address)]:
                if not this.address:
                    if totalSupply + lockOf[address(msg.sender)] < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply + lockOf[address(msg.sender)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if lockOf[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] -= lockOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] + lockOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += lockOf[address(msg.sender)]
                emit Transfer(lockOf[address(msg.sender)], this.address, msg.sender);
                if lockOf[address(msg.sender)] > lockOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockOf[address(msg.sender)] = 0
                lastUnlockBlock[address(msg.sender)] = block.number
                if lockOf[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= lockOf[address(msg.sender)]
            else:
                if not this.address:
                    if totalSupply + balanceOf[address(this.address)] < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply + balanceOf[address(this.address)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] = 0
                if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
                lastUnlockBlock[address(msg.sender)] = block.number
                if balanceOf[address(this.address)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= balanceOf[address(this.address)]
        else:
            if lastUnlockBlock[address(msg.sender)] > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastUnlockBlock[address(msg.sender)] > lockToBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockOf[address(msg.sender)]:
                if lockToBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockToBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] <= balanceOf[address(this.address)]:
                    if not this.address:
                        if totalSupply + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    if balanceOf[address(msg.sender)] + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    emit Transfer((0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                else:
                    if not this.address:
                        if totalSupply + balanceOf[address(this.address)] < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + balanceOf[address(this.address)] > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] = 0
                    if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if balanceOf[address(this.address)] > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= balanceOf[address(this.address)]
            else:
                require lockOf[address(msg.sender)]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockOf[address(msg.sender)] != block.number - lastUnlockBlock[address(msg.sender)]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if lockToBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockToBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] <= balanceOf[address(this.address)]:
                    if not this.address:
                        if totalSupply + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    if balanceOf[address(msg.sender)] + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    emit Transfer(((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                else:
                    if not this.address:
                        if totalSupply + balanceOf[address(this.address)] < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + balanceOf[address(this.address)] > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] = 0
                    if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if balanceOf[address(this.address)] > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= balanceOf[address(this.address)]
}



}
