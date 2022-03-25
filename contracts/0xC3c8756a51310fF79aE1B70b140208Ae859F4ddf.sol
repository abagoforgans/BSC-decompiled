contract main {




// =====================  Runtime code  =====================


address configAddress;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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
    require arg1 == arg1
    return balanceOf[arg1]
}

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setupConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWNER FORBIDDEN'
    configAddress = arg1
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'CTNA: INSUFFICIENT_BALANCE'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if not arg1:
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'CTNA: INSUFFICIENT_ALLOWANCE'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'CTNA: INSUFFICIENT_BALANCE'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    if not arg2:
        if arg3 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize() payable {
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEVELOPER FORBIDDEN'
    require ext_code.size(configAddress)
    staticcall configAddress.mint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if balanceOf[address(this.address)] < 100000 * 10^18:
        revert with 0, 'CTNA: INSUFFICIENT_BALANCE'
    if 100000 * 10^18 > balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(this.address)] -= 100000 * 10^18
    if balanceOf[address(ext_call.return_data[0])] + 100000 * 10^18 < balanceOf[address(ext_call.return_data[0])]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(ext_call.return_data[0])] += 100000 * 10^18
    if not address(ext_call.return_data[0]):
        if 100000 * 10^18 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= 100000 * 10^18
    emit Transfer(100000 * 10^18, this.address, address(ext_call.return_data[0]));
}



}
