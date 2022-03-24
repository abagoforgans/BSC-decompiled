contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 taxFee;
uint256 uniswapSellTaxFee;
uint256 stor9;
address storeAddress;
uint256 maxTransactionAmount;
address stor12;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function uniswapSellTaxFee() payable {
    return uniswapSellTaxFee
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function taxFee() payable {
    return taxFee
}

function maxTransactionAmount() payable {
    return maxTransactionAmount
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function storeAddress() payable {
    return storeAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 20:
        return 0
    taxFee = arg1
    if arg1 >= uniswapSellTaxFee:
        stor9 = taxFee
    else:
        stor9 = uniswapSellTaxFee
    return 1
}

function setUniswapSellTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 20:
        return 0
    uniswapSellTaxFee = arg1
    if arg1 <= taxFee:
        stor9 = taxFee
    else:
        stor9 = uniswapSellTaxFee
    return 1
}

function setStoreAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Should not be zero address'
    if this.address == arg1:
        revert with 0, 'Should not be token address'
    storeAddress = arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor12 != arg1:
        if arg2 < arg2:
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
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        if not arg2:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[264 len 28]
            if not arg1:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[262 len 30]
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
        else:
            if stor9 * arg2 / arg2 != stor9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (stor9 * arg2 / 100) + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[264 len 28]
            if not arg1:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[262 len 30]
            allowance[address(msg.sender)][address(arg1)] = (stor9 * arg2 / 100) + arg2
            emit Approval(((stor9 * arg2 / 100) + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f45524332303a2073746f72652061646472657373206973206e6f742073657420796574,
                    mem[200 len 28]
    if arg1 != owner:
        if owner != msg.sender:
            if arg2 > maxTransactionAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7345524332303a207472616e7366657220616d6f756e742065786365656473206c696d69,
                            mem[200 len 28]
    if stor12 == arg1:
        if not arg2:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] = balanceOf[stor10]
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, storeAddress);
        else:
            if stor9 * arg2 / arg2 != stor9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (stor9 * arg2 / 100) + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if (stor9 * arg2 / 100) + arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor9 * arg2 / 100) - arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if (stor9 * arg2 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += stor9 * arg2 / 100
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer((stor9 * arg2 / 100), msg.sender, storeAddress);
    else:
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] = balanceOf[stor10]
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, storeAddress);
        else:
            if taxFee * arg2 / arg2 != taxFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if taxFee * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < arg2 - (taxFee * arg2 / 100):
                revert with 0, 'SafeMath: addition overflow'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 - (taxFee * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (taxFee * arg2 / 100) + balanceOf[arg1]
            if (taxFee * arg2 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += taxFee * arg2 / 100
            emit Transfer((arg2 - (taxFee * arg2 / 100)), msg.sender, arg1);
            emit Transfer((taxFee * arg2 / 100), msg.sender, storeAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f45524332303a2073746f72652061646472657373206973206e6f742073657420796574,
                    mem[200 len 28]
    if arg2 != owner:
        if arg1 != owner:
            if arg3 > maxTransactionAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7345524332303a207472616e7366657220616d6f756e742065786365656473206c696d69,
                            mem[200 len 28]
    if stor12 == arg2:
        if not arg3:
            if arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            if balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] = balanceOf[stor10]
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, storeAddress);
        else:
            if stor9 * arg3 / arg3 != stor9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (stor9 * arg3 / 100) + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            if (stor9 * arg3 / 100) + arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor9 * arg3 / 100) - arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            if (stor9 * arg3 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += stor9 * arg3 / 100
            emit Transfer(arg3, arg1, arg2);
            emit Transfer((stor9 * arg3 / 100), arg1, storeAddress);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[328 len 24],
                        mem[376 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    else:
        if not arg3:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            if balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] = balanceOf[stor10]
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, storeAddress);
        else:
            if taxFee * arg3 / arg3 != taxFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if taxFee * arg3 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 < arg3 - (taxFee * arg3 / 100):
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 - (taxFee * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (taxFee * arg3 / 100) + balanceOf[arg2]
            if (taxFee * arg3 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += taxFee * arg3 / 100
            emit Transfer((arg3 - (taxFee * arg3 / 100)), arg1, arg2);
            emit Transfer((taxFee * arg3 / 100), arg1, storeAddress);
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
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
