contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address uniswapV2routerAddress;
address uniswapV2FactoryAddress;
uint8 gasReward; offset 160
address gasTokenAddress;

function name() payable {
    return name[0 len name.length]
}

function uniswapV2router() payable {
    return uniswapV2routerAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function gasReward() payable {
    return gasReward
}

function uniswapV2Factory() payable {
    return uniswapV2FactoryAddress
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

function gasToken() payable {
    return gasTokenAddress
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

function setGasBackRate(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasReward = arg1
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

function AirDropforBORGETH_toOneUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function AirDropforBORGETH_Subscriber111(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + 111 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 111 * 10^18
    if balanceOf[address(arg1)] + 111 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 111 * 10^18
    emit Transfer(111 * 10^18, 0, arg1);
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

function AirDropforBORGETH_Subscribers111(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + 111 * 10^18 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 111 * 10^18
        if balanceOf[mem[(32 * idx) + 140 len 20]] + 111 * 10^18 < balanceOf[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + 111 * 10^18
        mem[(32 * arg1.length) + 128] = 111 * 10^18
        emit Transfer(111 * 10^18, 0, address(_19));
        idx = idx + 1
        continue 
}

function AirDropforBORGETH_MultiSender(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        if balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] < balanceOf[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_22));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if gasReward <= 0:
        revert with 0, 'SafeMath: division by zero'
    require gasReward
    if arg1 == this.address:
        if msg.sender == this.address:
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
            if arg2 / gasReward > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            balanceOf[address(msg.sender)] -= arg2 / gasReward
            if arg2 / gasReward > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2 / gasReward
            emit Transfer((arg2 / gasReward), msg.sender, 0);
            if arg2 / gasReward > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
            if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[454 len 26],
                            mem[506 len 6]
        else:
            if msg.sender == uniswapV2routerAddress:
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                if arg2 / gasReward > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                balanceOf[address(msg.sender)] -= arg2 / gasReward
                if arg2 / gasReward > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2 / gasReward
                emit Transfer((arg2 / gasReward), msg.sender, 0);
                if arg2 / gasReward > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
            else:
                if msg.sender == uniswapV2FactoryAddress:
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(msg.sender)] -= arg2 / gasReward
                    if arg2 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2 / gasReward
                    emit Transfer((arg2 / gasReward), msg.sender, 0);
                    if arg2 / gasReward > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                else:
                    if not arg2 / gasReward / 3:
                        require ext_code.size(gasTokenAddress)
                        call gasTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg2 / gasReward > balanceOf[address(msg.sender)]:
                            revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                    else:
                        require arg2 / gasReward / 3
                        if 2 * arg2 / gasReward / 3 / arg2 / gasReward / 3 != 2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(gasTokenAddress)
                        call gasTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 2 * arg2 / gasReward / 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg2 / gasReward > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        2 * arg2 / gasReward / 3 % 32768,
                                        mem[292 len 28],
                                        mem[350 len 2]
                    ('le', ('div', ('param', 'arg2'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    balanceOf[address(msg.sender)] -= arg2 / gasReward
                    if arg2 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2 / gasReward
                    emit Transfer((arg2 / gasReward), msg.sender, 0);
                    if arg2 / gasReward > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
    else:
        if arg1 == uniswapV2routerAddress:
            if msg.sender == this.address:
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                if arg2 / gasReward > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                balanceOf[address(msg.sender)] -= arg2 / gasReward
                if arg2 / gasReward > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2 / gasReward
                emit Transfer((arg2 / gasReward), msg.sender, 0);
                if arg2 / gasReward > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
            else:
                if msg.sender == uniswapV2routerAddress:
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(msg.sender)] -= arg2 / gasReward
                    if arg2 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2 / gasReward
                    emit Transfer((arg2 / gasReward), msg.sender, 0);
                    if arg2 / gasReward > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                else:
                    if msg.sender == uniswapV2FactoryAddress:
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        if arg2 / gasReward > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        balanceOf[address(msg.sender)] -= arg2 / gasReward
                        if arg2 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2 / gasReward
                        emit Transfer((arg2 / gasReward), msg.sender, 0);
                        if arg2 / gasReward > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                    else:
                        if not arg2 / gasReward / 3:
                            require ext_code.size(gasTokenAddress)
                            call gasTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                        else:
                            require arg2 / gasReward / 3
                            if 2 * arg2 / gasReward / 3 / arg2 / gasReward / 3 != 2:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(gasTokenAddress)
                            call gasTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 2 * arg2 / gasReward / 3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            34,
                                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                            2 * arg2 / gasReward / 3 % 32768,
                                            mem[292 len 28],
                                            mem[350 len 2]
                        ('le', ('div', ('param', 'arg2'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        balanceOf[address(msg.sender)] -= arg2 / gasReward
                        if arg2 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2 / gasReward
                        emit Transfer((arg2 / gasReward), msg.sender, 0);
                        if arg2 / gasReward > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                        if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[518 len 26],
                                        mem[570 len 6]
        else:
            if arg1 == uniswapV2FactoryAddress:
                if msg.sender == this.address:
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(msg.sender)] -= arg2 / gasReward
                    if arg2 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2 / gasReward
                    emit Transfer((arg2 / gasReward), msg.sender, 0);
                    if arg2 / gasReward > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                else:
                    if msg.sender == uniswapV2routerAddress:
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        if arg2 / gasReward > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        balanceOf[address(msg.sender)] -= arg2 / gasReward
                        if arg2 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2 / gasReward
                        emit Transfer((arg2 / gasReward), msg.sender, 0);
                        if arg2 / gasReward > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                    else:
                        if msg.sender == uniswapV2FactoryAddress:
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                            balanceOf[address(msg.sender)] -= arg2 / gasReward
                            if arg2 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 / gasReward
                            emit Transfer((arg2 / gasReward), msg.sender, 0);
                            if arg2 / gasReward > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                            if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[454 len 26],
                                            mem[506 len 6]
                        else:
                            if not arg2 / gasReward / 3:
                                require ext_code.size(gasTokenAddress)
                                call gasTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not msg.sender:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                    revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                            else:
                                require arg2 / gasReward / 3
                                if 2 * arg2 / gasReward / 3 / arg2 / gasReward / 3 != 2:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(gasTokenAddress)
                                call gasTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 2 * arg2 / gasReward / 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not msg.sender:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                2 * arg2 / gasReward / 3 % 32768,
                                                mem[292 len 28],
                                                mem[350 len 2]
                            ('le', ('div', ('param', 'arg2'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            balanceOf[address(msg.sender)] -= arg2 / gasReward
                            if arg2 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 / gasReward
                            emit Transfer((arg2 / gasReward), msg.sender, 0);
                            if arg2 / gasReward > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
            else:
                if not arg2 / gasReward / 3:
                    require ext_code.size(gasTokenAddress)
                    call gasTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if msg.sender == this.address:
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg2 / gasReward > balanceOf[address(msg.sender)]:
                            revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                        balanceOf[address(msg.sender)] -= arg2 / gasReward
                        if arg2 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2 / gasReward
                        emit Transfer((arg2 / gasReward), msg.sender, 0);
                        if arg2 / gasReward > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                        if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[518 len 26],
                                        mem[570 len 6]
                    else:
                        if msg.sender == uniswapV2routerAddress:
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                            balanceOf[address(msg.sender)] -= arg2 / gasReward
                            if arg2 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 / gasReward
                            emit Transfer((arg2 / gasReward), msg.sender, 0);
                            if arg2 / gasReward > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
                        else:
                            if msg.sender == uniswapV2FactoryAddress:
                                if not msg.sender:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                    revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                                balanceOf[address(msg.sender)] -= arg2 / gasReward
                                if arg2 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg2 / gasReward
                                emit Transfer((arg2 / gasReward), msg.sender, 0);
                                if arg2 / gasReward > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                            else:
                                if not arg2 / gasReward / 3:
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                        revert with 0, 'sERC20: burn amount exceeds balanc', mem[356 len 28], mem[414 len 2]
                                else:
                                    require arg2 / gasReward / 3
                                    if 2 * arg2 / gasReward / 3 / arg2 / gasReward / 3 != 2:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 2 * arg2 / gasReward / 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                    2 * arg2 / gasReward / 3 % 32768,
                                                    mem[356 len 28],
                                                    mem[414 len 2]
                                ('le', ('div', ('param', 'arg2'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                balanceOf[address(msg.sender)] -= arg2 / gasReward
                                if arg2 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg2 / gasReward
                                emit Transfer((arg2 / gasReward), msg.sender, 0);
                                if arg2 / gasReward > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                                if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                else:
                    require arg2 / gasReward / 3
                    if arg2 / gasReward / 3 / arg2 / gasReward / 3 != 1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(gasTokenAddress)
                    call gasTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), arg2 / gasReward / 3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if msg.sender == this.address:
                        if not msg.sender:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg2 / gasReward > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        uint16(arg2 / gasReward / 3),
                                        mem[292 len 28],
                                        mem[350 len 2]
                        balanceOf[address(msg.sender)] -= arg2 / gasReward
                        if arg2 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2 / gasReward
                        emit Transfer((arg2 / gasReward), msg.sender, 0);
                        if arg2 / gasReward > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                        if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[518 len 26],
                                        mem[570 len 6]
                    else:
                        if msg.sender == uniswapV2routerAddress:
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            34,
                                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                            uint16(arg2 / gasReward / 3),
                                            mem[292 len 28],
                                            mem[350 len 2]
                            balanceOf[address(msg.sender)] -= arg2 / gasReward
                            if arg2 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 / gasReward
                            emit Transfer((arg2 / gasReward), msg.sender, 0);
                            if arg2 / gasReward > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
                        else:
                            if msg.sender == uniswapV2FactoryAddress:
                                if not msg.sender:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                uint16(arg2 / gasReward / 3),
                                                mem[292 len 28],
                                                mem[350 len 2]
                                balanceOf[address(msg.sender)] -= arg2 / gasReward
                                if arg2 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg2 / gasReward
                                emit Transfer((arg2 / gasReward), msg.sender, 0);
                                if arg2 / gasReward > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                            else:
                                if not arg2 / gasReward / 3:
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                        revert with 0, 'sERC20: burn amount exceeds balanc', mem[356 len 28], mem[414 len 2]
                                else:
                                    require arg2 / gasReward / 3
                                    if 2 * arg2 / gasReward / 3 / arg2 / gasReward / 3 != 2:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 2 * arg2 / gasReward / 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg2 / gasReward > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                    2 * arg2 / gasReward / 3 % 32768,
                                                    mem[356 len 28],
                                                    mem[414 len 2]
                                ('le', ('div', ('param', 'arg2'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                balanceOf[address(msg.sender)] -= arg2 / gasReward
                                if arg2 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg2 / gasReward
                                emit Transfer((arg2 / gasReward), msg.sender, 0);
                                if arg2 / gasReward > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                                if arg2 - (arg2 / gasReward) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('param', 'arg2'), ('stor', ('name', 'gasReward', 8))))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / gasReward)
    if balanceOf[address(arg1)] + arg2 - (arg2 / gasReward) < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / gasReward)
    emit Transfer((arg2 - (arg2 / gasReward)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if gasReward <= 0:
        revert with 0, 'SafeMath: division by zero'
    require gasReward
    if arg1 == this.address:
        if arg2 == this.address:
            if not arg1:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
            if arg3 / gasReward > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            balanceOf[address(arg1)] -= arg3 / gasReward
            if arg3 / gasReward > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg3 / gasReward
            emit Transfer((arg3 / gasReward), arg1, 0);
            if arg3 / gasReward > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
            if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[454 len 26],
                            mem[506 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
            if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
            emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
            if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[552 len 24],
                            mem[600 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
        else:
            if arg2 == uniswapV2routerAddress:
                if not arg1:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                if arg3 / gasReward > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                balanceOf[address(arg1)] -= arg3 / gasReward
                if arg3 / gasReward > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg3 / gasReward
                emit Transfer((arg3 / gasReward), arg1, 0);
                if arg3 / gasReward > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[552 len 24],
                                mem[600 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
            else:
                if arg2 == uniswapV2FactoryAddress:
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg3 / gasReward > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(arg1)] -= arg3 / gasReward
                    if arg3 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg3 / gasReward
                    emit Transfer((arg3 / gasReward), arg1, 0);
                    if arg3 / gasReward > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                    if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                    emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                    if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[552 len 24],
                                    mem[600 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                else:
                    if not arg3 / gasReward / 3:
                        require ext_code.size(gasTokenAddress)
                        call gasTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg2), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg3 / gasReward > balanceOf[address(arg1)]:
                            revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                    else:
                        require arg3 / gasReward / 3
                        if arg3 / gasReward / 3 / arg3 / gasReward / 3 != 1:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(gasTokenAddress)
                        call gasTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg2), arg3 / gasReward / 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg3 / gasReward > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        uint16(arg3 / gasReward / 3),
                                        mem[292 len 28],
                                        mem[350 len 2]
                    ('le', ('div', ('param', 'arg3'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                    balanceOf[address(arg1)] -= arg3 / gasReward
                    if arg3 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg3 / gasReward
                    emit Transfer((arg3 / gasReward), arg1, 0);
                    if arg3 / gasReward > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                    if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                    emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                    if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[616 len 24],
                                    mem[664 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
    else:
        if arg1 == uniswapV2routerAddress:
            if arg2 == this.address:
                if not arg1:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                if arg3 / gasReward > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                balanceOf[address(arg1)] -= arg3 / gasReward
                if arg3 / gasReward > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg3 / gasReward
                emit Transfer((arg3 / gasReward), arg1, 0);
                if arg3 / gasReward > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[552 len 24],
                                mem[600 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
            else:
                if arg2 == uniswapV2routerAddress:
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg3 / gasReward > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(arg1)] -= arg3 / gasReward
                    if arg3 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg3 / gasReward
                    emit Transfer((arg3 / gasReward), arg1, 0);
                    if arg3 / gasReward > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                    if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                    emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                    if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[552 len 24],
                                    mem[600 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                else:
                    if arg2 == uniswapV2FactoryAddress:
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        if arg3 / gasReward > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        balanceOf[address(arg1)] -= arg3 / gasReward
                        if arg3 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 / gasReward
                        emit Transfer((arg3 / gasReward), arg1, 0);
                        if arg3 / gasReward > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                        if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                        emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                        if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[552 len 24],
                                        mem[600 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                    else:
                        if not arg3 / gasReward / 3:
                            require ext_code.size(gasTokenAddress)
                            call gasTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg2), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg3 / gasReward > balanceOf[address(arg1)]:
                                revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                        else:
                            require arg3 / gasReward / 3
                            if arg3 / gasReward / 3 / arg3 / gasReward / 3 != 1:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(gasTokenAddress)
                            call gasTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3 / gasReward / 3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg3 / gasReward > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            34,
                                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                            uint16(arg3 / gasReward / 3),
                                            mem[292 len 28],
                                            mem[350 len 2]
                        ('le', ('div', ('param', 'arg3'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                        balanceOf[address(arg1)] -= arg3 / gasReward
                        if arg3 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 / gasReward
                        emit Transfer((arg3 / gasReward), arg1, 0);
                        if arg3 / gasReward > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                        if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[518 len 26],
                                        mem[570 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                        if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                        emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                        if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[616 len 24],
                                        mem[664 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
        else:
            if arg1 == uniswapV2FactoryAddress:
                if arg2 == this.address:
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg3 / gasReward > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(arg1)] -= arg3 / gasReward
                    if arg3 / gasReward > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg3 / gasReward
                    emit Transfer((arg3 / gasReward), arg1, 0);
                    if arg3 / gasReward > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                    if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                    emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                    if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[552 len 24],
                                    mem[600 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                else:
                    if arg2 == uniswapV2routerAddress:
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        if arg3 / gasReward > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        balanceOf[address(arg1)] -= arg3 / gasReward
                        if arg3 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 / gasReward
                        emit Transfer((arg3 / gasReward), arg1, 0);
                        if arg3 / gasReward > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                        if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                        emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                        if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[552 len 24],
                                        mem[600 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                    else:
                        if arg2 == uniswapV2FactoryAddress:
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            if arg3 / gasReward > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                            balanceOf[address(arg1)] -= arg3 / gasReward
                            if arg3 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 / gasReward
                            emit Transfer((arg3 / gasReward), arg1, 0);
                            if arg3 / gasReward > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                            if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[454 len 26],
                                            mem[506 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                            if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                            emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                            if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[552 len 24],
                                            mem[600 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                        else:
                            if not arg3 / gasReward / 3:
                                require ext_code.size(gasTokenAddress)
                                call gasTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg2), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not arg1:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg3 / gasReward > balanceOf[address(arg1)]:
                                    revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                            else:
                                require arg3 / gasReward / 3
                                if arg3 / gasReward / 3 / arg3 / gasReward / 3 != 1:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(gasTokenAddress)
                                call gasTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3 / gasReward / 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not arg1:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg3 / gasReward > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                uint16(arg3 / gasReward / 3),
                                                mem[292 len 28],
                                                mem[350 len 2]
                            ('le', ('div', ('param', 'arg3'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                            balanceOf[address(arg1)] -= arg3 / gasReward
                            if arg3 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 / gasReward
                            emit Transfer((arg3 / gasReward), arg1, 0);
                            if arg3 / gasReward > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                            if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                            emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                            if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[616 len 24],
                                            mem[664 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
            else:
                if not arg3 / gasReward / 3:
                    require ext_code.size(gasTokenAddress)
                    call gasTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 == this.address:
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg3 / gasReward > balanceOf[address(arg1)]:
                            revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                        balanceOf[address(arg1)] -= arg3 / gasReward
                        if arg3 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 / gasReward
                        emit Transfer((arg3 / gasReward), arg1, 0);
                        if arg3 / gasReward > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                        if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[518 len 26],
                                        mem[570 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                        if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                        emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                        if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[616 len 24],
                                        mem[664 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                    else:
                        if arg2 == uniswapV2routerAddress:
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg3 / gasReward > balanceOf[address(arg1)]:
                                revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                            balanceOf[address(arg1)] -= arg3 / gasReward
                            if arg3 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 / gasReward
                            emit Transfer((arg3 / gasReward), arg1, 0);
                            if arg3 / gasReward > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                            if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                            emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                            if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[616 len 24],
                                            mem[664 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                        else:
                            if arg2 == uniswapV2FactoryAddress:
                                if not arg1:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg3 / gasReward > balanceOf[address(arg1)]:
                                    revert with 0, 'sERC20: burn amount exceeds balanc', mem[292 len 28], mem[350 len 2]
                                balanceOf[address(arg1)] -= arg3 / gasReward
                                if arg3 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg3 / gasReward
                                emit Transfer((arg3 / gasReward), arg1, 0);
                                if arg3 / gasReward > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                                if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                                emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                                if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[616 len 24],
                                                mem[664 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                            else:
                                if not arg3 / gasReward / 3:
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg2), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg3 / gasReward > balanceOf[address(arg1)]:
                                        revert with 0, 'sERC20: burn amount exceeds balanc', mem[356 len 28], mem[414 len 2]
                                else:
                                    require arg3 / gasReward / 3
                                    if arg3 / gasReward / 3 / arg3 / gasReward / 3 != 1:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3 / gasReward / 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg3 / gasReward > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                    uint16(arg3 / gasReward / 3),
                                                    mem[356 len 28],
                                                    mem[414 len 2]
                                ('le', ('div', ('param', 'arg3'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                balanceOf[address(arg1)] -= arg3 / gasReward
                                if arg3 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg3 / gasReward
                                emit Transfer((arg3 / gasReward), arg1, 0);
                                if arg3 / gasReward > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                                if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                                if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                                emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                                if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[680 len 24],
                                                mem[728 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
                else:
                    require arg3 / gasReward / 3
                    if 2 * arg3 / gasReward / 3 / arg3 / gasReward / 3 != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(gasTokenAddress)
                    call gasTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 2 * arg3 / gasReward / 3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 == this.address:
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg3 / gasReward > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        2 * arg3 / gasReward / 3 % 32768,
                                        mem[292 len 28],
                                        mem[350 len 2]
                        balanceOf[address(arg1)] -= arg3 / gasReward
                        if arg3 / gasReward > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 / gasReward
                        emit Transfer((arg3 / gasReward), arg1, 0);
                        if arg3 / gasReward > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                        if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[518 len 26],
                                        mem[570 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                        if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                        emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                        if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[616 len 24],
                                        mem[664 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                    else:
                        if arg2 == uniswapV2routerAddress:
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg3 / gasReward > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            34,
                                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                            2 * arg3 / gasReward / 3 % 32768,
                                            mem[292 len 28],
                                            mem[350 len 2]
                            balanceOf[address(arg1)] -= arg3 / gasReward
                            if arg3 / gasReward > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 / gasReward
                            emit Transfer((arg3 / gasReward), arg1, 0);
                            if arg3 / gasReward > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                            if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                            emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                            if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[616 len 24],
                                            mem[664 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                        else:
                            if arg2 == uniswapV2FactoryAddress:
                                if not arg1:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg3 / gasReward > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                2 * arg3 / gasReward / 3 % 32768,
                                                mem[292 len 28],
                                                mem[350 len 2]
                                balanceOf[address(arg1)] -= arg3 / gasReward
                                if arg3 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg3 / gasReward
                                emit Transfer((arg3 / gasReward), arg1, 0);
                                if arg3 / gasReward > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                                if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                                emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                                if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[616 len 24],
                                                mem[664 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                            else:
                                if not arg3 / gasReward / 3:
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg2), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg3 / gasReward > balanceOf[address(arg1)]:
                                        revert with 0, 'sERC20: burn amount exceeds balanc', mem[356 len 28], mem[414 len 2]
                                else:
                                    require arg3 / gasReward / 3
                                    if arg3 / gasReward / 3 / arg3 / gasReward / 3 != 1:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(gasTokenAddress)
                                    call gasTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3 / gasReward / 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[389 len 31]
                                    if arg3 / gasReward > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                    uint16(arg3 / gasReward / 3),
                                                    mem[356 len 28],
                                                    mem[414 len 2]
                                ('le', ('div', ('param', 'arg3'), ('stor', ('name', 'gasReward', 8))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                balanceOf[address(arg1)] -= arg3 / gasReward
                                if arg3 / gasReward > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg3 / gasReward
                                emit Transfer((arg3 / gasReward), arg1, 0);
                                if arg3 / gasReward > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                                if arg3 - (arg3 / gasReward) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / gasReward)
                                if balanceOf[address(arg2)] + arg3 - (arg3 / gasReward) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / gasReward)
                                emit Transfer((arg3 - (arg3 / gasReward)), arg1, arg2);
                                if arg3 - (arg3 / gasReward) > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[680 len 24],
                                                mem[728 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / gasReward)
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / gasReward)), arg1, msg.sender);
    return 1
}



}
