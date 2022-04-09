contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 burnedSupply;
uint256 taxedSupply;
uint256 taxRate;
uint256 stor7;
address stor8;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address owner;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function burnedSupply() payable {
    return burnedSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function taxRate() payable {
    return taxRate
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function taxedSupply() payable {
    return taxedSupply
}

function _whitelistedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
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

function addWhitelistedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0[address(arg1)] = 1
}

function removeWhitelistedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0[address(arg1)] = 0
}

function setTaxAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8:
        revert with 0, 'tax address is already set'
    stor8 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if burnedSupply + arg1 < burnedSupply:
        revert with 0, 'SafeMath: addition overflow'
    burnedSupply += arg1
    emit Transfer(arg1, msg.sender, 0);
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
    if stor0[address(msg.sender)]:
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
    else:
        if stor0[address(arg1)]:
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
        else:
            if not arg2:
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if 0 / stor7 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 != arg2:
                    revert with 0, 'Tax value invalid'
                if not msg.sender:
                    revert with 0, 'ERC20: tax from the zero address'
                if not stor8:
                    revert with 0, 'ERC20: tax address not set'
                if 0 / stor7 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 33, 0x7345524332303a2074617820616d6f756e7420657863656564732062616c616e63, mem[289 len 31], mem[351 len 1]
                balanceOf[address(msg.sender)] -= 0 / stor7
                if balanceOf[stor8] + (0 / stor7) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += 0 / stor7
                if taxedSupply + (0 / stor7) < taxedSupply:
                    revert with 0, 'SafeMath: addition overflow'
                taxedSupply += 0 / stor7
                emit Transfer((0 / stor7), msg.sender, stor8);
                if arg2 - (0 / stor7) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (0 / stor7)
                if balanceOf[address(arg1)] + arg2 - (0 / stor7) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor7)
                emit Transfer((arg2 - (0 / stor7)), msg.sender, arg1);
            else:
                require arg2
                if arg2 * taxRate / arg2 != taxRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if arg2 * taxRate / stor7 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 != arg2:
                    revert with 0, 'Tax value invalid'
                if not msg.sender:
                    revert with 0, 'ERC20: tax from the zero address'
                if not stor8:
                    revert with 0, 'ERC20: tax address not set'
                if arg2 * taxRate / stor7 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 33, 0x7345524332303a2074617820616d6f756e7420657863656564732062616c616e63, mem[289 len 31], mem[351 len 1]
                balanceOf[address(msg.sender)] -= arg2 * taxRate / stor7
                if balanceOf[stor8] + (arg2 * taxRate / stor7) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += arg2 * taxRate / stor7
                if taxedSupply + (arg2 * taxRate / stor7) < taxedSupply:
                    revert with 0, 'SafeMath: addition overflow'
                taxedSupply += arg2 * taxRate / stor7
                emit Transfer((arg2 * taxRate / stor7), msg.sender, stor8);
                if arg2 - (arg2 * taxRate / stor7) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxRate / stor7)
                if balanceOf[address(arg1)] + arg2 - (arg2 * taxRate / stor7) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxRate / stor7)
                emit Transfer((arg2 - (arg2 * taxRate / stor7)), msg.sender, arg1);
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
    if stor0[address(arg1)]:
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
    else:
        if stor0[address(arg2)]:
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
        else:
            if not arg3:
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if 0 / stor7 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 != arg3:
                    revert with 0, 'Tax value invalid'
                if not arg1:
                    revert with 0, 'ERC20: tax from the zero address'
                if not stor8:
                    revert with 0, 'ERC20: tax address not set'
                if 0 / stor7 > balanceOf[address(arg1)]:
                    revert with 0, 32, 33, 0x7345524332303a2074617820616d6f756e7420657863656564732062616c616e63, mem[289 len 31], mem[351 len 1]
                balanceOf[address(arg1)] -= 0 / stor7
                if balanceOf[stor8] + (0 / stor7) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += 0 / stor7
                if taxedSupply + (0 / stor7) < taxedSupply:
                    revert with 0, 'SafeMath: addition overflow'
                taxedSupply += 0 / stor7
                emit Transfer((0 / stor7), arg1, stor8);
                if arg3 - (0 / stor7) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (0 / stor7)
                if balanceOf[address(arg2)] + arg3 - (0 / stor7) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / stor7)
                emit Transfer((arg3 - (0 / stor7)), arg1, arg2);
            else:
                require arg3
                if arg3 * taxRate / arg3 != taxRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if arg3 * taxRate / stor7 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 != arg3:
                    revert with 0, 'Tax value invalid'
                if not arg1:
                    revert with 0, 'ERC20: tax from the zero address'
                if not stor8:
                    revert with 0, 'ERC20: tax address not set'
                if arg3 * taxRate / stor7 > balanceOf[address(arg1)]:
                    revert with 0, 32, 33, 0x7345524332303a2074617820616d6f756e7420657863656564732062616c616e63, mem[289 len 31], mem[351 len 1]
                balanceOf[address(arg1)] -= arg3 * taxRate / stor7
                if balanceOf[stor8] + (arg3 * taxRate / stor7) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += arg3 * taxRate / stor7
                if taxedSupply + (arg3 * taxRate / stor7) < taxedSupply:
                    revert with 0, 'SafeMath: addition overflow'
                taxedSupply += arg3 * taxRate / stor7
                emit Transfer((arg3 * taxRate / stor7), arg1, stor8);
                if arg3 - (arg3 * taxRate / stor7) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxRate / stor7)
                if balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / stor7) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / stor7)
                emit Transfer((arg3 - (arg3 * taxRate / stor7)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[488 len 24],
                            mem[536 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
