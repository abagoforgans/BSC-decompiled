contract main {




// =====================  Runtime code  =====================


const INF = -1


uint8 stor0;
uint32 stor0;
address sub_afbeb7bcAddress; offset 8
address sub_8800b7e4Address;
address stor2;
address stor3;
address sub_4f31637eAddress;
address stor5;
address stor6;
address stor7;
address stor9;

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
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_67a32e13(?) {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recoverERC20(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e4bf9d54(?) {
    require ext_code.size(stor3)
    call stor3.approve(address rg1, uint256 rg2) with:
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
    require ext_code.size(stor7)
    call stor7.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_23550b91(?) {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 1, Array(len=2, data=mem[388 len 64]), stor9, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if not uint8(stor0.field_0):
        require ext_code.size(stor3)
        call stor3.approve(address rg1, uint256 rg2) with:
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
        require ext_code.size(stor7)
        call stor7.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_8800b7e4Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_aa1d77cc(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args 0, uint32(stor0.field_0), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function withdrawFunds() {
    require ext_code.size(stor6)
    staticcall stor6.WBNB() with:
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
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_afbeb7bcAddress)
    staticcall sub_afbeb7bcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_afbeb7bcAddress)
    call sub_afbeb7bcAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
