contract main {




// =====================  Runtime code  =====================


#
#  - sub_4e1e2a2e(?)
#
const MAXINT = -1


address owner;
address routerAddress;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address tokenAddress;
uint256 amountIn;
uint256 amountOutMin;

function sub_04d73a87(?) {
    return bool(uint8(stor2.field_160))
}

function amountOutMin() {
    return amountOutMin
}

function amountIn() {
    return amountIn
}

function triggered() {
    return bool(uint8(stor2.field_168))
}

function owner() {
    return owner
}

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function balance() {
    if owner != msg.sender:
        revert with 0, 'not owner'
    return eth.balance(this.address)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2b73533e(?) {
    require calldata.size - 4 >= 160
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'not owner'
    Mask(88, 0, stor2.field_168) = Mask(88, 0, bool(arg1))
    Mask(96, 0, stor2.field_160) = Mask(96, 0, bool(arg2))
    tokenAddress = address(arg3)
    amountIn = arg4
    amountOutMin = arg5
}



}
