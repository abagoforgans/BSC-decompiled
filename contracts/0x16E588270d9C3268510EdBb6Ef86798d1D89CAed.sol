contract main {




// =====================  Runtime code  =====================


address comptrollerAddress;

function comptroller() payable {
    return comptrollerAddress
}

function _fallback() payable {
    revert
}

function sub_1a7d913d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3, 128, 64, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 64
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    if address(cd[(arg5 + 36)]) != arg2:
        revert with 0, 'encoded data (borrowToken) does not match'
    if cd[(arg5 + 68)] != arg3:
        revert with 0, 'encoded data (borrowAmount) does not match'
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x947cd39683897964c4681f2a9ace479400f0bd467117d0ae02e99e303012ade
}



}
