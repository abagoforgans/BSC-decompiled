contract main {




// =====================  Runtime code  =====================


const fries = 0x393b312c01048b3ed2720bf1b090084c09e408a1

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint8 stor6; offset 160
uint32 stor6;
address strategyAddress;
uint256 stor6;
address pancakeRouterAddress;
address tokenAddress;
array of struct sub_9a68480e;
mapping of struct userInfo;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function decimals() payable {
    return decimals
}

function strategyFinalized() payable {
    return bool(uint8(stor6.field_160))
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

function sub_9a68480e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9a68480e.length
    return sub_9a68480e[arg1].field_0
}

function strategy() payable {
    return strategyAddress
}

function pancakeRouter() payable {
    return pancakeRouterAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function token() payable {
    return tokenAddress
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

function finalStrategy() payable {
    if uint8(stor6.field_160):
        revert with 0, 'Vault: Strategy is final'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor6.field_160) = 1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uint8(stor6.field_160):
        revert with 0, 'Vault: Strategy is final'
    strategyAddress = arg1
}

function available() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balance() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
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
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getPricePerFullShare() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply)
    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
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
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function earn() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(stor6.field_0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd0e30db0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupply:
            if not userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_0 = 0
                userInfo[msg.sender].field_256 = 0
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[520 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[456 len 28], mem[584 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
            else:
                mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[552]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
        else:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_256 += 0 / 2 * ext_call.return_data[0]
            else:
                userInfo[msg.sender].field_0 = 0
                userInfo[msg.sender].field_256 = 0 / 2 * ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
            emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[584 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[520 len 28], mem[648 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            else:
                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[616]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalSupply:
                if not userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, msg.sender);
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                call tokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                else:
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_256 += 0 / 2 * ext_call.return_data[0]
                else:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0 / 2 * ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                call tokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalSupply:
                if not userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, msg.sender);
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                call tokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                else:
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 632 len 22]
            else:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_256 += 0 / 2 * ext_call.return_data[0]
                else:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0 / 2 * ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                call tokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd0e30db0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositAll() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupply:
            if not userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_0 = 0
                userInfo[msg.sender].field_256 = 0
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[520 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[456 len 28], mem[584 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
            else:
                mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[552]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
        else:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_256 += 0 / 2 * ext_call.return_data[0]
            else:
                userInfo[msg.sender].field_0 = 0
                userInfo[msg.sender].field_256 = 0 / 2 * ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
            emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[584 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[520 len 28], mem[648 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            else:
                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[616]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalSupply:
                if userInfo[msg.sender].field_256:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len 22]
            else:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_256 += 0 / 2 * ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 585 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                    else:
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0 / 2 * ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 585 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                    else:
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len 22]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalSupply:
                if userInfo[msg.sender].field_256:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len 22]
                else:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_256 += 0 / 2 * ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 585 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                    else:
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len 22]
                else:
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_256 = 0 / 2 * ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 585 len 64] = 0, strategyAddress, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                    else:
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd0e30db0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        mem[160] = 34
        mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        mem[256] = 30
        mem[288] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(strategyAddress)
        call strategyAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (0 / totalSupply)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[320] = 30
        mem[352] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[384] = 26
        mem[416] = 'SafeMath: division by zero'
        if not userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not arg1 / userInfo[msg.sender].field_256:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[740 len 0] = 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[708]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 787 len 22]
            if 0 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= arg1
        if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 / arg1 / userInfo[msg.sender].field_256 != userInfo[msg.sender].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
        mem[448] = 30
        mem[480] = 'SafeMath: subtraction overflow'
        if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[708]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 787 len 22]
            if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
            if arg1 > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= arg1
        mem[512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[516] = -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
        mem[548] = 0
        mem[612] = this.address
        mem[644] = block.timestamp
        mem[580] = 160
        mem[676] = sub_9a68480e.length
        if not sub_9a68480e.length:
            require ext_code.size(pancakeRouterAddress)
            call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 512
            require return_data.size >= 32
            _229 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32
            require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 <= 4294967296
            require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
            require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]
            _240 = mem[_229 + 512]
            mem[ceil32(return_data.size) + 544 len floor32(mem[_229 + 512])] = mem[_229 + 544 len floor32(mem[_229 + 512])]
            require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
            staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _240) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _240) + ceil32(return_data.size) + 772 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _240) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _240) + (4 * ceil32(return_data.size)) + 984 len 22]
                if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
                if arg1 > userInfo[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_256 -= arg1
            require return_data.size >= 32
            if not mem[(32 * _240) + ceil32(return_data.size) + 740]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
            mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _240) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _240) + (4 * ceil32(return_data.size)) + 878] = 32
                mem[(32 * _240) + (4 * ceil32(return_data.size)) + 910] = 32
                mem[(32 * _240) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _240) + (4 * ceil32(return_data.size)) + 874
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
                if arg1 > userInfo[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_256 -= arg1
            require return_data.size >= 32
            if mem[(32 * _240) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
                if arg1 > userInfo[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_256 -= arg1
            mem[(32 * _240) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _240) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _240) + (4 * ceil32(return_data.size)) + 910] = 42
            mem[(32 * _240) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _240) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[0] = 9
        mem[708] = address(sub_9a68480e.field_0)
        idx = 708
        s = 0
        while (32 * sub_9a68480e.length) + 708 > idx + 32:
            mem[idx + 32] = sub_9a68480e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(pancakeRouterAddress)
        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length, mem[708 len 32 * sub_9a68480e.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        _5512 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 <= 4294967296
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
        require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]
        _5578 = mem[_5512 + 512]
        mem[ceil32(return_data.size) + 544 len floor32(mem[_5512 + 512])] = mem[_5512 + 544 len floor32(mem[_5512 + 512])]
        require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
        staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _5578) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _5578) + ceil32(return_data.size) + 772 len 0] = 0
        call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _5578) + ceil32(return_data.size) + 772 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _5578) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _5578) + ceil32(return_data.size) + 740]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
        mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 910] = 32
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _5578) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _5578) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 878] = 32
                mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 910] = 42
                mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _5578) + (4 * ceil32(return_data.size)) + 874
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 942] = 32
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 974] = 30
            mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 1006] = Mask(240, 0, 'SafeMath: subtraction overflow')
            revert with memory
              from (32 * _5578) + (4 * ceil32(return_data.size)) + 938
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
        if arg1 <= userInfo[msg.sender].field_256:
            userInfo[msg.sender].field_256 -= arg1
        mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 1002] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 1006] = 32
        mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 1038] = 30
        mem[(32 * _5578) + (4 * ceil32(return_data.size)) + 1070] = Mask(240, 0, 'SafeMath: subtraction overflow')
        revert with memory
          from (32 * _5578) + (4 * ceil32(return_data.size)) + 1002
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not msg.sender:
        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
    mem[160] = 34
    mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] -= arg1
    mem[256] = 30
    mem[288] = 'SafeMath: subtraction overflow'
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    call strategyAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = 30
    mem[352] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[384] = 26
    mem[416] = 'SafeMath: division by zero'
    if not userInfo[msg.sender].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not arg1 / userInfo[msg.sender].field_256:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[708]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 787 len 22]
        if 0 > userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 > userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_256 -= arg1
    if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 / arg1 / userInfo[msg.sender].field_256 != userInfo[msg.sender].field_0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
    mem[448] = 30
    mem[480] = 'SafeMath: subtraction overflow'
    if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[708]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 787 len 22]
        if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
        if arg1 > userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_256 -= arg1
    mem[512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[516] = -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
    mem[548] = 0
    mem[612] = this.address
    mem[644] = block.timestamp
    mem[580] = 160
    mem[676] = sub_9a68480e.length
    if not sub_9a68480e.length:
        require ext_code.size(pancakeRouterAddress)
        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        _232 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 <= 4294967296
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
        require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]
        _241 = mem[_232 + 512]
        mem[ceil32(return_data.size) + 544 len floor32(mem[_232 + 512])] = mem[_232 + 544 len floor32(mem[_232 + 512])]
        require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
        staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _241) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _241) + ceil32(return_data.size) + 772 len 0] = 0
        call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _241) + ceil32(return_data.size) + 772 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _241) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _241) + ceil32(return_data.size) + 740]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _241) + (4 * ceil32(return_data.size)) + 984 len 22]
            if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
            if arg1 > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= arg1
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
        mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 910] = 32
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _241) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                mem[(32 * _241) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _241) + (4 * ceil32(return_data.size)) + 878] = 32
                mem[(32 * _241) + (4 * ceil32(return_data.size)) + 910] = 42
                mem[(32 * _241) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _241) + (4 * ceil32(return_data.size)) + 874
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 942] = 32
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 974] = 30
            mem[(32 * _241) + (4 * ceil32(return_data.size)) + 1006] = Mask(240, 0, 'SafeMath: subtraction overflow')
            revert with memory
              from (32 * _241) + (4 * ceil32(return_data.size)) + 938
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
        if arg1 <= userInfo[msg.sender].field_256:
            userInfo[msg.sender].field_256 -= arg1
        mem[(32 * _241) + (4 * ceil32(return_data.size)) + 1002] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _241) + (4 * ceil32(return_data.size)) + 1006] = 32
        mem[(32 * _241) + (4 * ceil32(return_data.size)) + 1038] = 30
        mem[(32 * _241) + (4 * ceil32(return_data.size)) + 1070] = Mask(240, 0, 'SafeMath: subtraction overflow')
        revert with memory
          from (32 * _241) + (4 * ceil32(return_data.size)) + 1002
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[0] = 9
    mem[708] = address(sub_9a68480e.field_0)
    idx = 708
    s = 0
    while (32 * sub_9a68480e.length) + 708 > idx + 32:
        mem[idx + 32] = sub_9a68480e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length, mem[708 len 32 * sub_9a68480e.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 512
    require return_data.size >= 32
    _5488 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32
    require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 <= 4294967296
    require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
    require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256) >> 32 + 512]
    _5572 = mem[_5488 + 512]
    mem[ceil32(return_data.size) + 544 len floor32(mem[_5488 + 512])] = mem[_5488 + 544 len floor32(mem[_5488 + 512])]
    require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
    staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _5572) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[(32 * _5572) + ceil32(return_data.size) + 772 len 0] = 0
    call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _5572) + ceil32(return_data.size) + 772 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[(32 * _5572) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(32 * _5572) + ceil32(return_data.size) + 740]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
    mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args ext_call.return_data[0], mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
    mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 878] = 32
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 910] = 32
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * _5572) + (4 * ceil32(return_data.size)) + 874
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        if not mem[(32 * _5572) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
            mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 910] = 42
            mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _5572) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 942] = 32
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 974] = 30
        mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 1006] = Mask(240, 0, 'SafeMath: subtraction overflow')
        revert with memory
          from (32 * _5572) + (4 * ceil32(return_data.size)) + 938
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * arg1 / userInfo[msg.sender].field_256
    if arg1 <= userInfo[msg.sender].field_256:
        userInfo[msg.sender].field_256 -= arg1
    mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 1002] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 1006] = 32
    mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 1038] = 30
    mem[(32 * _5572) + (4 * ceil32(return_data.size)) + 1070] = Mask(240, 0, 'SafeMath: subtraction overflow')
    revert with memory
      from (32 * _5572) + (4 * ceil32(return_data.size)) + 1002
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}

function withdrawAll() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        mem[160] = 34
        mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] = 0
        mem[256] = 30
        mem[288] = 'SafeMath: subtraction overflow'
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(strategyAddress)
        call strategyAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (0 / totalSupply)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[320] = 30
        mem[352] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[384] = 26
        mem[416] = 'SafeMath: division by zero'
        if not userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[740 len 0] = 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[708]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 787 len 22]
            if 0 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 / balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 != userInfo[msg.sender].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
        mem[448] = 30
        mem[480] = 'SafeMath: subtraction overflow'
        if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[740 len 0] = 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[708]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 787 len 22]
            if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
            if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        mem[512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[516] = -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
        mem[548] = 0
        mem[612] = this.address
        mem[644] = block.timestamp
        mem[580] = 160
        mem[676] = sub_9a68480e.length
        if not sub_9a68480e.length:
            require ext_code.size(pancakeRouterAddress)
            call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 512
            require return_data.size >= 32
            _230 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32
            require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 <= 4294967296
            require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
            require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]
            _241 = mem[_230 + 512]
            mem[ceil32(return_data.size) + 544 len floor32(mem[_230 + 512])] = mem[_230 + 544 len floor32(mem[_230 + 512])]
            require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
            staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _241) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _241) + ceil32(return_data.size) + 772 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _241) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _241) + ceil32(return_data.size) + 740]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 0] = 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _241) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _241) + (4 * ceil32(return_data.size)) + 984 len 22]
            if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
            if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        mem[0] = 9
        mem[708] = address(sub_9a68480e.field_0)
        idx = 708
        s = 0
        while (32 * sub_9a68480e.length) + 708 > idx + 32:
            mem[idx + 32] = sub_9a68480e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(pancakeRouterAddress)
        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length, mem[708 len 32 * sub_9a68480e.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        _5513 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 <= 4294967296
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
        require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]
        _5579 = mem[_5513 + 512]
        mem[ceil32(return_data.size) + 544 len floor32(mem[_5513 + 512])] = mem[_5513 + 544 len floor32(mem[_5513 + 512])]
        require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
        staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _5579) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _5579) + ceil32(return_data.size) + 772 len 0] = 0
        call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _5579) + ceil32(return_data.size) + 772 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _5579) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _5579) + ceil32(return_data.size) + 740]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 984 len 22]
            if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
            if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
        mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 910] = 32
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _5579) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _5579) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 878] = 32
                mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 910] = 42
                mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _5579) + (4 * ceil32(return_data.size)) + 874
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 942] = 32
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 974] = 30
            mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 1006] = Mask(240, 0, 'SafeMath: subtraction overflow')
            revert with memory
              from (32 * _5579) + (4 * ceil32(return_data.size)) + 938
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
        if balanceOf[address(msg.sender)] <= userInfo[msg.sender].field_256:
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 1002] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 1006] = 32
        mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 1038] = 30
        mem[(32 * _5579) + (4 * ceil32(return_data.size)) + 1070] = Mask(240, 0, 'SafeMath: subtraction overflow')
        revert with memory
          from (32 * _5579) + (4 * ceil32(return_data.size)) + 1002
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / 2 * ext_call.return_data[0] != balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not msg.sender:
        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
    mem[160] = 34
    mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] = 0
    mem[256] = 30
    mem[288] = 'SafeMath: subtraction overflow'
    if balanceOf[address(msg.sender)] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    call strategyAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = 30
    mem[352] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[384] = 26
    mem[416] = 'SafeMath: division by zero'
    if not userInfo[msg.sender].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[740 len 0] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[708]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 787 len 22]
        if 0 > userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
    if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 / balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 != userInfo[msg.sender].field_0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
    mem[448] = 30
    mem[480] = 'SafeMath: subtraction overflow'
    if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[740 len 0] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[740 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[708]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 787 len 22]
        if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
        if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
    mem[512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[516] = -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
    mem[548] = 0
    mem[612] = this.address
    mem[644] = block.timestamp
    mem[580] = 160
    mem[676] = sub_9a68480e.length
    if not sub_9a68480e.length:
        require ext_code.size(pancakeRouterAddress)
        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        _233 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 <= 4294967296
        require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
        require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]
        _242 = mem[_233 + 512]
        mem[ceil32(return_data.size) + 544 len floor32(mem[_233 + 512])] = mem[_233 + 544 len floor32(mem[_233 + 512])]
        require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
        staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _242) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _242) + ceil32(return_data.size) + 772 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _242) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _242) + ceil32(return_data.size) + 740]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
        mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _242) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _242) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _242) + (4 * ceil32(return_data.size)) + 910] = 32
            mem[(32 * _242) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _242) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
            if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        require return_data.size >= 32
        if mem[(32 * _242) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
            if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
            if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
        mem[(32 * _242) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _242) + (4 * ceil32(return_data.size)) + 878] = 32
        mem[(32 * _242) + (4 * ceil32(return_data.size)) + 910] = 42
        mem[(32 * _242) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _242) + (4 * ceil32(return_data.size)) + 874
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[0] = 9
    mem[708] = address(sub_9a68480e.field_0)
    idx = 708
    s = 0
    while (32 * sub_9a68480e.length) + 708 > idx + 32:
        mem[idx + 32] = sub_9a68480e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256, 0, 160, this.address, block.timestamp, sub_9a68480e.length, mem[708 len 32 * sub_9a68480e.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 512
    require return_data.size >= 32
    _5489 = mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32
    require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 <= 4294967296
    require mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 32 <= return_data.size
    require mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256) >> 32 + 512]
    _5573 = mem[_5489 + 512]
    mem[ceil32(return_data.size) + 544 len floor32(mem[_5489 + 512])] = mem[_5489 + 544 len floor32(mem[_5489 + 512])]
    require ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1)
    staticcall 0x393b312c01048b3ed2720bf1b090084c09e408a1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(0x393b312c01048b3ed2720bf1b090084c09e408a1):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _5573) + ceil32(return_data.size) + 708 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[(32 * _5573) + ceil32(return_data.size) + 772 len 0] = 0
    call 0x393b312c01048b3ed2720bf1b090084c09e408a1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _5573) + ceil32(return_data.size) + 772 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[(32 * _5573) + ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(32 * _5573) + ceil32(return_data.size) + 740]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 819 len 22]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 984 len 22]
        if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
        if balanceOf[address(msg.sender)] > userInfo[msg.sender].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 873 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
    mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 965 len 4] = 0
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args ext_call.return_data[0], mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 809 len 28], mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 937 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 873] = return_data.size
    mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 878] = 32
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 910] = 32
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * _5573) + (4 * ceil32(return_data.size)) + 874
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        if not mem[(32 * _5573) + ceil32(return_data.size) + ceil32(return_data.size) + 905]:
            mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 878] = 32
            mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 910] = 42
            mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _5573) + (4 * ceil32(return_data.size)) + 874
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256 > userInfo[msg.sender].field_0:
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 942] = 32
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 974] = 30
        mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 1006] = Mask(240, 0, 'SafeMath: subtraction overflow')
        revert with memory
          from (32 * _5573) + (4 * ceil32(return_data.size)) + 938
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    userInfo[msg.sender].field_0 += -1 * userInfo[msg.sender].field_0 * balanceOf[address(msg.sender)] / userInfo[msg.sender].field_256
    if balanceOf[address(msg.sender)] <= userInfo[msg.sender].field_256:
        userInfo[msg.sender].field_256 -= balanceOf[address(msg.sender)]
    mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 1002] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 1006] = 32
    mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 1038] = 30
    mem[(32 * _5573) + (4 * ceil32(return_data.size)) + 1070] = Mask(240, 0, 'SafeMath: subtraction overflow')
    revert with memory
      from (32 * _5573) + (4 * ceil32(return_data.size)) + 1002
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
