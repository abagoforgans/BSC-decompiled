contract main {




// =====================  Runtime code  =====================


const MAX = -1


address stor0;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor0 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_703685dd(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_413fd9f0(?) payable {
    if not this.address:
        revert with 0, 'BEP20: mint to the zero address'
    totalSupply += 100 * 10^18
    balanceOf[address(this.address)] += 100 * 10^18
    emit Transfer(100 * 10^18, 0, this.address);
    allowance[address(this.address)][stor7] = totalSupply
    emit Approval(totalSupply, this.address, stor7);
    require ext_code.size(stor7)
    call stor7.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, totalSupply, 0, 0, stor0, block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
