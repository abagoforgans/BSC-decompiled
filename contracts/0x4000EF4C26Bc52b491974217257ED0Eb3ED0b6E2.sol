contract main {




// =====================  Runtime code  =====================


const sub_1906d23f(?) = ext_call.return_data[0]


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address thugsAddress; offset 8

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

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function thugs() payable {
    return thugsAddress
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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(thugsAddress)
    staticcall thugsAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(thugsAddress)
        call thugsAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(thugsAddress)
        call thugsAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * arg1 / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(thugsAddress)
    staticcall thugsAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x50c50ed05068cecd877d8588aaad749ee18d53e8)
    staticcall 0x50c50ed05068cecd877d8588aaad749ee18d53e8.0x31bdda99 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not arg1:
            if not totalSupply:
                if not msg.sender:
                    revert with 0, 'BEP20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, msg.sender);
            else:
                if not ext_call.return_data[0]:
                    if not msg.sender:
                        revert with 0, 'BEP20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                    emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
        else:
            if 10^9 * arg1 / arg1 != 10^9:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                if not msg.sender:
                    revert with 0, 'BEP20: mint to the zero address'
                if (10^9 * arg1 / 10^9) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^9 * arg1 / 10^9
                if (10^9 * arg1 / 10^9) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^9 * arg1 / 10^9
                emit Transfer((10^9 * arg1 / 10^9), 0, msg.sender);
            else:
                if not ext_call.return_data[0]:
                    if not msg.sender:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (10^9 * arg1 / 10^9) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^9 * arg1 / 10^9
                    if (10^9 * arg1 / 10^9) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 10^9 * arg1 / 10^9
                    emit Transfer((10^9 * arg1 / 10^9), 0, msg.sender);
                else:
                    if not 10^9 * arg1 / 10^9:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * 10^9 * arg1 / 10^9 / 10^9 * arg1 / 10^9 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (totalSupply * 10^9 * arg1 / 10^9 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * 10^9 * arg1 / 10^9 / ext_call.return_data[0]
                        if (totalSupply * 10^9 * arg1 / 10^9 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * 10^9 * arg1 / 10^9 / ext_call.return_data[0]
                        emit Transfer((totalSupply * 10^9 * arg1 / 10^9 / ext_call.return_data[0]), 0, msg.sender);
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            if not totalSupply:
                if not msg.sender:
                    revert with 0, 'BEP20: mint to the zero address'
                if (-ext_call.return_data[0] * arg1 / 100 / 10^9) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += -ext_call.return_data[0] * arg1 / 100 / 10^9
                if (-ext_call.return_data[0] * arg1 / 100 / 10^9) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += -ext_call.return_data[0] * arg1 / 100 / 10^9
                emit Transfer((-ext_call.return_data[0] * arg1 / 100 / 10^9), 0, msg.sender);
            else:
                if not ext_call.return_data[0]:
                    if not msg.sender:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (-ext_call.return_data[0] * arg1 / 100 / 10^9) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += -ext_call.return_data[0] * arg1 / 100 / 10^9
                    if (-ext_call.return_data[0] * arg1 / 100 / 10^9) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += -ext_call.return_data[0] * arg1 / 100 / 10^9
                    emit Transfer((-ext_call.return_data[0] * arg1 / 100 / 10^9), 0, msg.sender);
                else:
                    if not -ext_call.return_data[0] * arg1 / 100 / 10^9:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * -ext_call.return_data[0] * arg1 / 100 / 10^9 / -ext_call.return_data[0] * arg1 / 100 / 10^9 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (totalSupply * -ext_call.return_data[0] * arg1 / 100 / 10^9 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * -ext_call.return_data[0] * arg1 / 100 / 10^9 / ext_call.return_data[0]
                        if (totalSupply * -ext_call.return_data[0] * arg1 / 100 / 10^9 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * -ext_call.return_data[0] * arg1 / 100 / 10^9 / ext_call.return_data[0]
                        emit Transfer((totalSupply * -ext_call.return_data[0] * arg1 / 100 / 10^9 / ext_call.return_data[0]), 0, msg.sender);
        else:
            if 10^9 * arg1 / arg1 != 10^9:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                if not msg.sender:
                    revert with 0, 'BEP20: mint to the zero address'
                if ((10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9
                if ((10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9
                emit Transfer(((10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9), 0, msg.sender);
            else:
                if not ext_call.return_data[0]:
                    if not msg.sender:
                        revert with 0, 'BEP20: mint to the zero address'
                    if ((10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9
                    if ((10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9
                    emit Transfer(((10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9), 0, msg.sender);
                else:
                    if not (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 / (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (totalSupply * (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 / ext_call.return_data[0]
                        if (totalSupply * (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 / ext_call.return_data[0]
                        emit Transfer((totalSupply * (10^9 * arg1) - (ext_call.return_data[0] * arg1 / 100) / 10^9 / ext_call.return_data[0]), 0, msg.sender);
    require ext_code.size(thugsAddress)
    call thugsAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
