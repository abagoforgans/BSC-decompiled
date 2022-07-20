contract main {




// =====================  Runtime code  =====================


const sub_9e3ce1cf(?) = 57005


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_e3b38aa5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
address sub_e140e428Address;
address sub_f3a69401Address;
address sub_1218710aAddress;
uint8 stor12; offset 160
uint8 swapAndLiquifyEnabled; offset 168
address _routerAddress;
uint256 stor1AEC;

function name() payable {
    return name[0 len name.length]
}

function sub_1218710a(?) payable {
    return sub_1218710aAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function swapAndLiquifyEnabled() payable {
    return bool(swapAndLiquifyEnabled)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_99c6132d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function sub_e140e428(?) payable {
    return sub_e140e428Address
}

function sub_e3b38aa5(?) payable {
    return sub_e3b38aa5
}

function _router() payable {
    return _routerAddress
}

function sub_f3a69401(?) payable {
    return sub_f3a69401Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'zero address'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_597298a4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_f3a69401Address = arg1
    allowance[this.address][address(arg1)] = -1
    emit Approval(-1, this.address, sub_f3a69401Address);
}

function updateRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    _routerAddress = arg1
    allowance[this.address][address(arg1)] = -1
    emit Approval(-1, this.address, _routerAddress);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor8[msg.sender]:
        revert with 0, 'Not a miner'
    if not arg1:
        revert with 0, 'zero address'
    if sub_e3b38aa5 < arg2:
        revert with 0, 'mint too much'
    sub_e3b38aa5 -= arg2
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit 0x72ddf252: arg2, 0, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'balance not enough'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if sub_e140e428Address != arg1:
        balanceOf[address(arg1)] += arg2
        emit 0x72ddf252: arg2, msg.sender, arg1
    else:
        if stor8[address(msg.sender)]:
            balanceOf[address(arg1)] += arg2
            emit 0x72ddf252: arg2, msg.sender, arg1
        else:
            if stor8[address(arg1)]:
                balanceOf[address(arg1)] += arg2
                emit 0x72ddf252: arg2, msg.sender, arg1
            else:
                if stor12:
                    balanceOf[address(arg1)] += arg2
                    emit 0x72ddf252: arg2, msg.sender, arg1
                else:
                    stor12 = 1
                    if 100000 * 10^decimals >= totalSupply:
                        if arg2 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[this.address] += arg2 / 100
                        if not swapAndLiquifyEnabled:
                            emit 0x72ddf252: (arg2 / 100), msg.sender, this.address
                            require ext_code.size(sub_f3a69401Address)
                            call sub_f3a69401Address.donate(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg2 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor12 = 0
                            balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[address(arg1)]
                            emit 0x72ddf252: (arg2 - (arg2 / 100)), msg.sender, arg1
                        else:
                            require ext_code.size(_routerAddress)
                            call _routerAddress.swapAndLiquifyToken(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg2 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 / 100 > arg2 - (arg2 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[this.address] += arg2 / 100
                            emit 0x72ddf252: (arg2 / 100), msg.sender, this.address
                            require ext_code.size(sub_f3a69401Address)
                            call sub_f3a69401Address.donate(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg2 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor12 = 0
                            balanceOf[address(arg1)] = arg2 - (2 * arg2 / 100) + balanceOf[address(arg1)]
                            emit 0x72ddf252: (arg2 - (2 * arg2 / 100)), msg.sender, arg1
                    else:
                        if arg2 / 100 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply - (arg2 / 100) >= 100000 * 10^decimals:
                            if arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 / 100
                            if (arg2 / 100) + stor1AEC < stor1AEC:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1AEC += arg2 / 100
                            emit 0x72ddf252: (arg2 / 100), msg.sender, 57005
                            if arg2 / 100 > arg2 - (arg2 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[this.address] += arg2 / 100
                            if not swapAndLiquifyEnabled:
                                emit 0x72ddf252: (arg2 / 100), msg.sender, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg1)] = arg2 - (2 * arg2 / 100) + balanceOf[address(arg1)]
                                emit 0x72ddf252: (arg2 - (2 * arg2 / 100)), msg.sender, arg1
                            else:
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapAndLiquifyToken(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg2 / 100 > arg2 - (2 * arg2 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[this.address] += arg2 / 100
                                emit 0x72ddf252: (arg2 / 100), msg.sender, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg1)] = arg2 - (3 * arg2 / 100) + balanceOf[address(arg1)]
                                emit 0x72ddf252: (arg2 - (3 * arg2 / 100)), msg.sender, arg1
                        else:
                            if 100000 * 10^decimals > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply - (100000 * 10^decimals) > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply - (100000 * 10^decimals) > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply = 100000 * 10^decimals
                            if totalSupply - (100000 * 10^decimals) + stor1AEC < stor1AEC:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1AEC = totalSupply - (100000 * 10^decimals) + stor1AEC
                            emit 0x72ddf252: (totalSupply - (100000 * 10^decimals)), msg.sender, 57005
                            if arg2 / 100 > arg2 - totalSupply + (100000 * 10^decimals):
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[this.address] += arg2 / 100
                            if not swapAndLiquifyEnabled:
                                emit 0x72ddf252: (arg2 / 100), msg.sender, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg1)] = arg2 - totalSupply + (100000 * 10^decimals) - (arg2 / 100) + balanceOf[address(arg1)]
                                emit 0x72ddf252: (arg2 - totalSupply + (100000 * 10^decimals) - (arg2 / 100)), msg.sender, arg1
                            else:
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapAndLiquifyToken(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg2 / 100 > arg2 - totalSupply + (100000 * 10^decimals) - (arg2 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[this.address] += arg2 / 100
                                emit 0x72ddf252: (arg2 / 100), msg.sender, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg1)] = arg2 - totalSupply + (100000 * 10^decimals) - (2 * arg2 / 100) + balanceOf[address(arg1)]
                                emit 0x72ddf252: (arg2 - totalSupply + (100000 * 10^decimals) - (2 * arg2 / 100)), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'allowance not enough'
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg2:
        revert with 0, 'zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'balance not enough'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if sub_e140e428Address != arg2:
        balanceOf[address(arg2)] += arg3
        emit 0x72ddf252: arg3, arg1, arg2
    else:
        if stor8[address(arg1)]:
            balanceOf[address(arg2)] += arg3
            emit 0x72ddf252: arg3, arg1, arg2
        else:
            if stor8[address(arg2)]:
                balanceOf[address(arg2)] += arg3
                emit 0x72ddf252: arg3, arg1, arg2
            else:
                if stor12:
                    balanceOf[address(arg2)] += arg3
                    emit 0x72ddf252: arg3, arg1, arg2
                else:
                    stor12 = 1
                    if 100000 * 10^decimals >= totalSupply:
                        if arg3 / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[this.address] += arg3 / 100
                        if not swapAndLiquifyEnabled:
                            emit 0x72ddf252: (arg3 / 100), arg1, this.address
                            require ext_code.size(sub_f3a69401Address)
                            call sub_f3a69401Address.donate(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg3 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor12 = 0
                            balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[address(arg2)]
                            emit 0x72ddf252: (arg3 - (arg3 / 100)), arg1, arg2
                        else:
                            require ext_code.size(_routerAddress)
                            call _routerAddress.swapAndLiquifyToken(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg3 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg3 / 100 > arg3 - (arg3 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[this.address] += arg3 / 100
                            emit 0x72ddf252: (arg3 / 100), arg1, this.address
                            require ext_code.size(sub_f3a69401Address)
                            call sub_f3a69401Address.donate(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg3 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor12 = 0
                            balanceOf[address(arg2)] = arg3 - (2 * arg3 / 100) + balanceOf[address(arg2)]
                            emit 0x72ddf252: (arg3 - (2 * arg3 / 100)), arg1, arg2
                    else:
                        if arg3 / 100 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply - (arg3 / 100) >= 100000 * 10^decimals:
                            if arg3 / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 / 100
                            if (arg3 / 100) + stor1AEC < stor1AEC:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1AEC += arg3 / 100
                            emit 0x72ddf252: (arg3 / 100), arg1, 57005
                            if arg3 / 100 > arg3 - (arg3 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[this.address] += arg3 / 100
                            if not swapAndLiquifyEnabled:
                                emit 0x72ddf252: (arg3 / 100), arg1, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg3 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg2)] = arg3 - (2 * arg3 / 100) + balanceOf[address(arg2)]
                                emit 0x72ddf252: (arg3 - (2 * arg3 / 100)), arg1, arg2
                            else:
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapAndLiquifyToken(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg3 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg3 / 100 > arg3 - (2 * arg3 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[this.address] += arg3 / 100
                                emit 0x72ddf252: (arg3 / 100), arg1, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg3 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg2)] = arg3 - (3 * arg3 / 100) + balanceOf[address(arg2)]
                                emit 0x72ddf252: (arg3 - (3 * arg3 / 100)), arg1, arg2
                        else:
                            if 100000 * 10^decimals > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply - (100000 * 10^decimals) > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply - (100000 * 10^decimals) > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply = 100000 * 10^decimals
                            if totalSupply - (100000 * 10^decimals) + stor1AEC < stor1AEC:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1AEC = totalSupply - (100000 * 10^decimals) + stor1AEC
                            emit 0x72ddf252: (totalSupply - (100000 * 10^decimals)), arg1, 57005
                            if arg3 / 100 > arg3 - totalSupply + (100000 * 10^decimals):
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[this.address] += arg3 / 100
                            if not swapAndLiquifyEnabled:
                                emit 0x72ddf252: (arg3 / 100), arg1, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg3 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg2)] = arg3 - totalSupply + (100000 * 10^decimals) - (arg3 / 100) + balanceOf[address(arg2)]
                                emit 0x72ddf252: (arg3 - totalSupply + (100000 * 10^decimals) - (arg3 / 100)), arg1, arg2
                            else:
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapAndLiquifyToken(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg3 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg3 / 100 > arg3 - totalSupply + (100000 * 10^decimals) - (arg3 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[this.address] += arg3 / 100
                                emit 0x72ddf252: (arg3 / 100), arg1, this.address
                                require ext_code.size(sub_f3a69401Address)
                                call sub_f3a69401Address.donate(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (arg3 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12 = 0
                                balanceOf[address(arg2)] = arg3 - totalSupply + (100000 * 10^decimals) - (2 * arg3 / 100) + balanceOf[address(arg2)]
                                emit 0x72ddf252: (arg3 - totalSupply + (100000 * 10^decimals) - (2 * arg3 / 100)), arg1, arg2
    return 1
}



}
