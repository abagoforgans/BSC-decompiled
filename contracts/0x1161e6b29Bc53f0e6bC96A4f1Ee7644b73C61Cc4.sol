contract main {




// =====================  Runtime code  =====================


address owner; offset 8
address tokenV2Address;
address tokenV1Address;
uint256 rate;
uint8 stor6;

function tokenV2() payable {
    return tokenV2Address
}

function rate() payable {
    return rate
}

function migrationStarted() payable {
    return bool(stor6)
}

function tokenV1() payable {
    return tokenV1Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function stopMigration() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = 0
}

function startMigration() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_993916ed(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenV1Address = address(arg1)
    tokenV2Address = address(arg2)
    rate = arg3
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

function sub_52e8842e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenV1Address)
    staticcall tokenV1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenV1Address)
    call tokenV1Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b07c9d23(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenV2Address)
    staticcall tokenV2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenV2Address)
    call tokenV2Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function migrateToV2() payable {
    if bool(stor6) != 1:
        revert with 0, 'Migration not started yet'
    require ext_code.size(tokenV1Address)
    staticcall tokenV1Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You must hold V1 tokens to migrate'
    if not rate:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(tokenV2Address)
    staticcall tokenV2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] / rate:
        revert with 0, 'No enough V2 liquidity'
    require ext_code.size(tokenV1Address)
    call tokenV1Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenV2Address)
    call tokenV2Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit MigrateToV2(msg.sender, ext_call.return_data[0] / rate);
}



}
