contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address taxerAddress;
address taxDestinationAddress;
uint256 taxRate;
uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function name() payable {
    return name[0 len name.length]
}

function isInWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function taxer() payable {
    return taxerAddress
}

function totalSupply() payable {
    return totalSupply
}

function taxDestination() payable {
    return taxDestinationAddress
}

function decimals() payable {
    return decimals
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

function getLockStatus() payable {
    return bool(stor9)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function _fallback() payable {
    revert
}

function unlock() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = 0
}

function setTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if taxerAddress != msg.sender:
        revert with 0, 'Only for taxer.'
    taxRate = arg1
}

function setTaxer(address arg1) payable {
    require calldata.size - 4 >= 32
    if taxerAddress != msg.sender:
        revert with 0, 'Only for taxer.'
    taxerAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if taxerAddress != msg.sender:
        revert with 0, 'Only for taxer.'
    stor10[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if taxerAddress != msg.sender:
        revert with 0, 'Only for taxer.'
    stor10[address(arg1)] = 0
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
}

function setTaxDestination(address arg1) payable {
    require calldata.size - 4 >= 32
    if taxerAddress != msg.sender:
        revert with 0, 'Only for taxer.'
    taxDestinationAddress = arg1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor11[address(msg.sender)]:
        revert with 0, 'Restricted to minters.'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
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
    emit Transfer(arg1, msg.sender, 0);
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
    if owner != msg.sender:
        if stor9:
            revert with 0, 'Transfer is locking'
    if not arg2:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'insufficient balance.'
        if not msg.sender:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
        if not arg1:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[294 len 26],
                        mem[346 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require arg2
        if arg2 * taxRate / arg2 != taxRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if bool(stor10[address(msg.sender)]) == 1:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'insufficient balance.'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 * taxRate / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'insufficient balance.'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 - (arg2 * taxRate / 100) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxRate / 100)
            if balanceOf[address(arg1)] + arg2 - (arg2 * taxRate / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxRate / 100)
            emit Transfer((arg2 - (arg2 * taxRate / 100)), msg.sender, arg1);
            if arg2 * taxRate / 100:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                if not taxDestinationAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                if arg2 * taxRate / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(msg.sender)] -= arg2 * taxRate / 100
                if balanceOf[stor7] + (arg2 * taxRate / 100) < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += arg2 * taxRate / 100
                emit Transfer((arg2 * taxRate / 100), msg.sender, taxDestinationAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != owner:
        if stor9:
            revert with 0, 'TransferFrom is locking'
    if not arg3:
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'insufficient balance.'
        if not arg1:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
        if not arg2:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[294 len 26],
                        mem[346 len 6]
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
                        mem[392 len 24],
                        mem[440 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        require arg3
        if arg3 * taxRate / arg3 != taxRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if bool(stor10[address(arg1)]) == 1:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'insufficient balance.'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
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
                            mem[392 len 24],
                            mem[440 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if arg3 * taxRate / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'insufficient balance.'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 - (arg3 * taxRate / 100) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxRate / 100)
            if balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 100)
            emit Transfer((arg3 - (arg3 * taxRate / 100)), arg1, arg2);
            if arg3 - (arg3 * taxRate / 100) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[392 len 24],
                            mem[440 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * taxRate / 100)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * taxRate / 100)), arg1, msg.sender);
            if arg3 * taxRate / 100:
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                if not taxDestinationAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[519 len 29]
                if arg3 * taxRate / 100 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[486 len 26],
                                mem[538 len 6]
                balanceOf[address(arg1)] -= arg3 * taxRate / 100
                if balanceOf[stor7] + (arg3 * taxRate / 100) < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += arg3 * taxRate / 100
                emit Transfer((arg3 * taxRate / 100), arg1, taxDestinationAddress);
                if arg3 * taxRate / 100 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[584 len 24],
                                mem[632 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3 * taxRate / 100
                emit Approval((allowance[address(arg1)][address(msg.sender)] - (arg3 * taxRate / 100)), arg1, msg.sender);
    return 1
}



}
