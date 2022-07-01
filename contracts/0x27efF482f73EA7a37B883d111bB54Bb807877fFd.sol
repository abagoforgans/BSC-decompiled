contract main {




// =====================  Runtime code  =====================


address owner;
address cakeAddress;
uint256 sub_6f727a5e;
uint256 sub_684c599f;
address sub_cfb46341Address;
address sub_7847c8f4Address;

function Cake() payable {
    return cakeAddress
}

function sub_684c599f(?) payable {
    return sub_684c599f
}

function sub_6f727a5e(?) payable {
    return sub_6f727a5e
}

function sub_7847c8f4(?) payable {
    return sub_7847c8f4Address
}

function owner() payable {
    return owner
}

function sub_cfb46341(?) payable {
    return sub_cfb46341Address
}

function _fallback() payable {
    revert
}

function updateCakeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Recharge :: zero address dected'
    cakeAddress = arg1
}

function setSupportWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Recharge :: zero address dected'
    sub_7847c8f4Address = arg1
    emit 0x8db8c38b: arg1, msg.sender
}

function setBusinessWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Recharge :: zero address dected'
    sub_cfb46341Address = arg1
    emit 0x36b8df36: arg1, msg.sender
}

function sub_a9c87589(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 != 1000:
        revert with 0, 'Invalid '
    sub_6f727a5e = arg1
    sub_684c599f = arg2
    emit 0x3bf495d2: arg1, arg2, msg.sender
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function failSafe(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FailSafe(address(arg2), eth.balance(this.address), this.address);
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit FailSafe(address(arg2), arg3, arg1);
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Recharge :: Deposit number of tokens'
    if arg1 and sub_684c599f > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * sub_684c599f / 1000:
        revert with 0, 17
    require ext_code.size(cakeAddress)
    call cakeAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_cfb46341Address, arg1 - (arg1 * sub_684c599f / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(cakeAddress)
    call cakeAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_7847c8f4Address, arg1 * sub_684c599f / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x1325f824: arg1, msg.sender
}



}
