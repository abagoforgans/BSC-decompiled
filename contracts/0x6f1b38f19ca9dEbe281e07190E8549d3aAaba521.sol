contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const pancake_router = 0x10ed43c718714eb63d5aa57b78b54704e256024e

const pancakeFactory = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73


address pancakeRouterAddress;

function pancakeRouter() {
    return pancakeRouterAddress
}

function _fallback() payable {
    revert
}

function startArbitrage(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
