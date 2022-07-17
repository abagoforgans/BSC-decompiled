contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 _balances;
uint256 sub_de879229;
uint256 sub_bea95549;
address sub_d6f03b2dAddress;
address sub_5a2f5963Address;
uint256 sub_88b1e1f5;
uint256 sub_c7eacf29;
uint256 _unlockTime;

function sub_5a2f5963(?) payable {
    return sub_5a2f5963Address
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function sub_88b1e1f5(?) payable {
    return sub_88b1e1f5
}

function owner() payable {
    return owner
}

function sub_bea95549(?) payable {
    return sub_bea95549
}

function _unlockTime() payable {
    return _unlockTime
}

function sub_c7eacf29(?) payable {
    return sub_c7eacf29
}

function sub_d6f03b2d(?) payable {
    return sub_d6f03b2dAddress
}

function sub_de879229(?) payable {
    return sub_de879229
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOpenTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_88b1e1f5 = arg1
}

function setUnLockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _unlockTime = arg1
}

function setCloseTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c7eacf29 = arg1
}

function setPaymentToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5a2f5963Address = arg1
}

function sub_e5971878(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6f03b2dAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function claim() payable {
    if block.timestamp < _unlockTime:
        revert with 0, 'It's not time to unlock yet'
    require ext_code.size(sub_d6f03b2dAddress)
    call sub_d6f03b2dAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _balances[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    _balances[msg.sender] = 0
}

function withdrawFund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5a2f5963Address)
    call sub_5a2f5963Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_38e4f064(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_88b1e1f5 > block.timestamp:
        revert with 0, 'It's is not during open time'
    if block.timestamp > sub_c7eacf29:
        revert with 0, 'It's is not during open time'
    if sub_bea95549 > sub_de879229:
        revert with 0, 'total allocation is sold out'
    if arg1 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    require ext_code.size(sub_5a2f5963Address)
    call sub_5a2f5963Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if _balances[msg.sender] > !(100 * arg1 / 14):
        revert with 0, 17
    _balances[msg.sender] += 100 * arg1 / 14
    if sub_bea95549 > !(100 * arg1 / 14):
        revert with 0, 17
    sub_bea95549 += 100 * arg1 / 14
}



}
