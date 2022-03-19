contract main {




// =====================  Runtime code  =====================


address chefAddress;
address oldFactoryAddress;
address factoryAddress;
uint256 desiredLiquidity;

function oldFactory() payable {
    return oldFactoryAddress
}

function chef() payable {
    return chefAddress
}

function desiredLiquidity() payable {
    return desiredLiquidity
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if chefAddress != msg.sender:
        revert with 0, 'not from master chef'
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
            args msg.sender, 0xd9527176c13a7b9b38b8f31e5b6b2f3a789e7ce8, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
