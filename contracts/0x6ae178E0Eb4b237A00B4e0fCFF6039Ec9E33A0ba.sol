contract main {




// =====================  Runtime code  =====================


address owner;
address sub_fcfe20c2Address;
address sub_752e8813Address;
address sub_5ca49a87Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_bdbca0faAddress;
uint256 exchangeRate;

function ExchangeRate() payable {
    return exchangeRate
}

function sub_5ca49a87(?) payable {
    return sub_5ca49a87Address
}

function sub_752e8813(?) payable {
    return sub_752e8813Address
}

function owner() payable {
    return owner
}

function sub_bdbca0fa(?) payable {
    return sub_bdbca0faAddress
}

function sub_fcfe20c2(?) payable {
    return sub_fcfe20c2Address
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

function setExchangeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    exchangeRate = arg1
}

function sub_56448ed4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_752e8813Address = address(arg1)
}

function setStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
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

function sub_797e8739(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_752e8813Address)
    staticcall sub_752e8813Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_752e8813Address)
    call sub_752e8813Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor4.field_160):
        revert with 0, 'Bank is closed'
    if arg1 and exchangeRate > -1 / arg1:
        revert with 0, 17
    if arg1 * exchangeRate / 1000 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(sub_752e8813Address)
    staticcall sub_752e8813Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * arg1 * exchangeRate / 1000:
        revert with 0, 'Not enough balance'
    require ext_code.size(sub_5ca49a87Address)
    staticcall sub_5ca49a87Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        if ext_call.return_data[0] < 6:
            revert with 0, 'Require to have 1 Hen or 6 Roosters'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(sub_fcfe20c2Address)
    call sub_fcfe20c2Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_752e8813Address)
    call sub_752e8813Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1 * exchangeRate / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e531aa58(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_fcfe20c2Address)
    staticcall sub_fcfe20c2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x666666666666666666666666666666666666666666666666666666666666666:
        revert with 0, 17
    require ext_code.size(sub_fcfe20c2Address)
    call sub_fcfe20c2Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), 40 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] > 0x666666666666666666666666666666666666666666666666666666666666666:
        revert with 0, 17
    require ext_code.size(sub_fcfe20c2Address)
    call sub_fcfe20c2Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 40 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    require ext_code.size(sub_fcfe20c2Address)
    call sub_fcfe20c2Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), 10 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_fcfe20c2Address)
    staticcall sub_fcfe20c2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fcfe20c2Address)
    call sub_fcfe20c2Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
