contract main {




// =====================  Runtime code  =====================


const INF = -1


uint8 stor0;
address stor0;
address sub_afbeb7bcAddress; offset 8
address sub_8800b7e4Address;
address stor2;
address stor3;
address sub_4f31637eAddress;
address stor5;

function sub_4f31637e(?) {
    return sub_4f31637eAddress
}

function sub_8800b7e4(?) {
    return sub_8800b7e4Address
}

function sub_afbeb7bc(?) {
    return sub_afbeb7bcAddress
}

function _fallback() payable {
    revert
}

function sub_610e0941(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_67a32e13(?) {
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_e4bf9d54(?) {
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9e3dd80f(?) payable {
    require ext_code.size(stor2)
    if not uint8(stor0.field_0):
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_8800b7e4Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        call stor5.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_8800b7e4Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.WBNB() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_8800b7e4Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, 160, address(this.address), -1, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args address(stor0.field_0), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'refund failed'
}



}
