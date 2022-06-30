contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 maxSupply;
address sub_070f5930Address;
uint256 stor5;
address sub_32036841Address;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address governanceAddress; offset 8
mapping of uint8 stor12;

function name() payable {
    return name[0 len name.length]
}

function sub_070f5930(?) payable {
    return sub_070f5930Address
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_32036841(?) payable {
    return sub_32036841Address
}

function governance() payable {
    return governanceAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_be3b8e8c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function _fallback() payable {
    revert
}

function updateBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor5 = arg1
}

function sub_410a2e07(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_32036841Address = arg1
}

function blockUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor8[address(arg1)] = 1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor12[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor12[address(arg1)] = 0
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > stor0[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    stor0[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_32036841Address)
    staticcall sub_32036841Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return stor0[address(arg1)]
    if stor7[address(arg1)]:
        return stor0[address(arg1)]
    require ext_code.size(sub_32036841Address)
    staticcall sub_32036841Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + stor0[address(arg1)] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + stor0[address(arg1)])
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
    if stor8[address(msg.sender)]:
        revert with 0, 'forbid'
    require ext_code.size(sub_32036841Address)
    staticcall sub_32036841Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if not stor7[address(msg.sender)]:
            require ext_code.size(sub_32036841Address)
            staticcall sub_32036841Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + ext_call.return_data[0] < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + ext_call.return_data[0] > maxSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7345524332303a2063616e6e6f74206d696e74206f766572206d617820737570706c,
                            mem[198 len 30]
            if totalSupply + ext_call.return_data[0] < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += ext_call.return_data[0]
            if stor0[address(msg.sender)] + ext_call.return_data[0] < stor0[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor0[address(msg.sender)] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], 0, msg.sender);
            stor7[address(msg.sender)] = 1
    if arg2 > stor0[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor0[address(msg.sender)] -= arg2
    if not arg2:
        if stor0[stor4] < stor0[stor4]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor0[address(arg1)] + arg2 < stor0[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor0[address(arg1)] += arg2
    else:
        require arg2
        if arg2 * stor5 / arg2 != stor5:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if stor0[stor4] + (arg2 * stor5 / 100) < stor0[stor4]:
            revert with 0, 'SafeMath: addition overflow'
        stor0[stor4] += arg2 * stor5 / 100
        if arg2 * stor5 / 100 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor0[address(arg1)] + arg2 - (arg2 * stor5 / 100) < stor0[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor0[address(arg1)] = stor0[address(arg1)] + arg2 - (arg2 * stor5 / 100)
    emit Transfer(arg2, msg.sender, arg1);
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
    if stor8[address(arg1)]:
        revert with 0, 'forbid'
    require ext_code.size(sub_32036841Address)
    staticcall sub_32036841Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if not stor7[address(arg1)]:
            require ext_code.size(sub_32036841Address)
            staticcall sub_32036841Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + ext_call.return_data[0] < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + ext_call.return_data[0] > maxSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7345524332303a2063616e6e6f74206d696e74206f766572206d617820737570706c,
                            mem[198 len 30]
            if totalSupply + ext_call.return_data[0] < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += ext_call.return_data[0]
            if stor0[address(arg1)] + ext_call.return_data[0] < stor0[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            stor0[address(arg1)] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], 0, arg1);
            stor7[address(arg1)] = 1
    if arg3 > stor0[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor0[address(arg1)] -= arg3
    if not arg3:
        if stor0[stor4] < stor0[stor4]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor0[address(arg2)] + arg3 < stor0[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        stor0[address(arg2)] += arg3
    else:
        require arg3
        if arg3 * stor5 / arg3 != stor5:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if stor0[stor4] + (arg3 * stor5 / 100) < stor0[stor4]:
            revert with 0, 'SafeMath: addition overflow'
        stor0[stor4] += arg3 * stor5 / 100
        if arg3 * stor5 / 100 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor0[address(arg2)] + arg3 - (arg3 * stor5 / 100) < stor0[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        stor0[address(arg2)] = stor0[address(arg2)] + arg3 - (arg3 * stor5 / 100)
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
