contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 sub_5906c12b;
address owner;

function exchangeRate() {
    return sub_5906c12b
}

function sub_5906c12b(?) {
    return sub_5906c12b
}

function owner() {
    return owner
}

function Token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function claimProfits() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8497c915(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5906c12b == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ICO: new price is not different from the old price'
    emit 0x8e12e1fd: msg.sender, arg1
    sub_5906c12b = arg1
}

function sub_a82462a8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if tokenAddress == address(('cd', 4)[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ICO: new token address is the same as the old one'
    emit 0x24b80aba: msg.sender, address(('cd', 4)[0])
    tokenAddress = address(('cd', 4)[0])
}

function sub_92a23cdd(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ICO: Token address is not set yet'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy() payable {
    if not tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ICO: Token address is not set yet'
    if not sub_5906c12b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ICO: Price for one token not set yet'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ICO: Amount have to be bigger then 0'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ICO: No more tokens for sale'
    if not sub_5906c12b:
        revert with 'NH{q', 18
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value / sub_5906c12b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokenBought(msg.sender, msg.value / sub_5906c12b);
}



}
