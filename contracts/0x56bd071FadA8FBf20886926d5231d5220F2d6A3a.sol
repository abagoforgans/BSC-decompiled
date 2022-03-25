contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
address chefAddress;
address oldFactoryAddress;
address factoryAddress;
uint256 desiredLiquidity;
address adminAddress;

function oldFactory() payable {
    return oldFactoryAddress
}

function chef() payable {
    return chefAddress
}

function desiredLiquidity() payable {
    return desiredLiquidity
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    factoryAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_168):
        chefAddress = arg1
        oldFactoryAddress = arg2
        factoryAddress = arg3
        adminAddress = arg4
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_168):
            chefAddress = arg1
            oldFactoryAddress = arg2
            factoryAddress = arg3
            adminAddress = arg4
        else:
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
            chefAddress = arg1
            oldFactoryAddress = arg2
            factoryAddress = arg3
            adminAddress = arg4
            uint8(stor0.field_168) = 0
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if chefAddress != msg.sender:
        revert with 0, 'not from master chef'
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != oldFactoryAddress:
        revert with 0, 'not from old factory'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(factoryAddress)
        call factoryAddress.0xc9c65396 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe70616972206d7573742068617665206e6f206578697374696e6720737570706c,
                    mem[197 len 31]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        desiredLiquidity = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.burn(address rg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        desiredLiquidity = -1
    return address(ext_call.return_data[0])
}



}
