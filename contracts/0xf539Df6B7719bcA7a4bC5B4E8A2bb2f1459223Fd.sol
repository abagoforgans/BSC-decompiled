contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function loan() payable {
    stor0 = msg.value
    if msg.value > 0x691ed299a02b86c3339c5205ccd35eb9f666cf8539000691ed299a02b86c3:
        revert with 0, 17
    stor1 = 9975 * msg.value / 25
    require ext_code.size(stor3)
    call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 9975 * msg.value / 25, 0, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value stor0 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1 > !stor0:
        revert with 0, 17
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, stor1 + stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
