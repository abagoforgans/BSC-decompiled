contract main {




// =====================  Runtime code  =====================


address stor0;
uint32 stor1;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function withdraw() {
    if 0x333afaf781d196381fffa54e3ba53625edadf0fc != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor1))
    call address(stor1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addLiquidityETH() payable {
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor1))
    call address(stor1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0] * msg.value / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(stor1), ext_call.return_data[0] * msg.value / ext_call.return_data[0], 995 * ext_call.return_data[0] * msg.value / ext_call.return_data[0] / 1000, 995 * msg.value / 1000, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
