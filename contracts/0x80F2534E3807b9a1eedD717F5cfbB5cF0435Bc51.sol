contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_b29f1b2c;
address sub_bdbca0faAddress;
address sub_ff0f6537Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_73781e14Address;

function sub_73781e14(?) payable {
    return sub_73781e14Address
}

function owner() payable {
    return owner
}

function sub_b29f1b2c(?) payable {
    require calldata.size - 4 >= 32
    return sub_b29f1b2c[arg1].field_0, sub_b29f1b2c[arg1].field_256
}

function sub_bdbca0fa(?) payable {
    return sub_bdbca0faAddress
}

function Active() payable {
    return bool(uint8(stor4.field_160))
}

function sub_ff0f6537(?) payable {
    return sub_ff0f6537Address
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

function setActive(bool arg1) payable {
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

function sub_9e4dfd61(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor4.field_160):
        revert with 0, 'Marketplace is not active'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not approved'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.0xbaafbcb6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NFT is sent to Game and cannot be traded'
    if not sub_b29f1b2c[arg1].field_0:
        revert with 0, 'No sale offer'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner'
    emit 0x4f664d71: arg1, 1, msg.sender
    sub_b29f1b2c[arg1].field_0 = 0
    sub_b29f1b2c[arg1].field_256 = 0
}

function sub_797e8b72(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        revert with 0, 'Marketplace is not active'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not approved'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.0xbaafbcb6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NFT is sent to Game and cannot be traded'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not NFT owner'
    if sub_b29f1b2c[arg1].field_0:
        revert with 0, 'Item is already in sale'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 3:
        revert with 0, 'You need to own at least 3 roosters to become a seller'
    sub_b29f1b2c[arg1].field_0 = msg.sender
    sub_b29f1b2c[arg1].field_256 = arg2
    emit 0x65a00946: arg1, 1, msg.sender, arg2
}

function sub_8d624ede(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_ff0f6537Address)
    staticcall sub_ff0f6537Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x666666666666666666666666666666666666666666666666666666666666666:
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    call sub_ff0f6537Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), 40 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] > 0x666666666666666666666666666666666666666666666666666666666666666:
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    call sub_ff0f6537Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 40 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    call sub_ff0f6537Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), 10 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_ff0f6537Address)
    staticcall sub_ff0f6537Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ff0f6537Address)
    call sub_ff0f6537Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e17e5eea(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor4.field_160):
        revert with 0, 'Marketplace is not active'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'NFT owner not allowed'
    if not sub_bdbca0faAddress:
        revert with 0, 'Rooster is not ready'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.0xbaafbcb6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NFT is sent to Game and cannot be traded'
    if not sub_b29f1b2c[arg1].field_0:
        revert with 0, 'No active sell offer'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_b29f1b2c[arg1].field_0:
        sub_b29f1b2c[arg1].field_0 = 0
        sub_b29f1b2c[arg1].field_256 = 0
        emit 0x4f664d71: arg1, 1, sub_b29f1b2c[arg1].field_0
        revert with 0, 'Invalid sell offer'
    require ext_code.size(sub_bdbca0faAddress)
    staticcall sub_bdbca0faAddress.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_b29f1b2c[arg1].field_0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        sub_b29f1b2c[arg1].field_0 = 0
        sub_b29f1b2c[arg1].field_256 = 0
        emit 0x4f664d71: arg1, 1, sub_b29f1b2c[arg1].field_0
        revert with 0, 'Invalid sell offer'
    if sub_b29f1b2c[arg1].field_256 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if sub_b29f1b2c[arg1].field_256 > !(5 * sub_b29f1b2c[arg1].field_256 / 100):
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    staticcall sub_ff0f6537Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_b29f1b2c[arg1].field_256 + (5 * sub_b29f1b2c[arg1].field_256 / 100):
        revert with 0, 'Not enough RICE'
    if sub_b29f1b2c[arg1].field_256 > !(5 * sub_b29f1b2c[arg1].field_256 / 100):
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    staticcall sub_ff0f6537Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_b29f1b2c[arg1].field_256 + (5 * sub_b29f1b2c[arg1].field_256 / 100):
        revert with 0, 'RICE allowance is not enough'
    if sub_b29f1b2c[arg1].field_256 < 5 * sub_b29f1b2c[arg1].field_256 / 100:
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    call sub_ff0f6537Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_b29f1b2c[arg1].field_0, sub_b29f1b2c[arg1].field_256 - (5 * sub_b29f1b2c[arg1].field_256 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 5 * sub_b29f1b2c[arg1].field_256 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(sub_ff0f6537Address)
    call sub_ff0f6537Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_73781e14Address, 2 * 5 * sub_b29f1b2c[arg1].field_256 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bdbca0faAddress)
    call sub_bdbca0faAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_b29f1b2c[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3787c5ad: arg1, 1, sub_b29f1b2c[arg1].field_0, msg.sender, sub_b29f1b2c[arg1].field_256, 1
    sub_b29f1b2c[arg1].field_0 = 0
    sub_b29f1b2c[arg1].field_256 = 0
}



}
