contract main {




// =====================  Runtime code  =====================


#
#  - swapETH(address arg1, uint256 arg2)
#
address stor3;
address stor4;

function approve() {
  stop
}

function _fallback() payable {
    revert
}

function sub_0ced824e(?) {
    require calldata.size - 4 >= 32
    mem[288 len 0] = None
    return Array(len=3, data=mem[288 len 96])
}

function sub_400a3b3b(?) {
    require calldata.size - 4 >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function sub_8ee82e4a(?) {
    require calldata.size - 4 >= 32
    mem[288 len 0] = None
    return Array(len=3, data=mem[288 len 96])
}

function sub_d293266b(?) {
    require calldata.size - 4 >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function withdraw() {
    require msg.sender == stor3
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor3
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
