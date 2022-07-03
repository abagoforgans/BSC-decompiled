contract main {




// =====================  Runtime code  =====================


#
#  - sub_0a906ad2(?)
#  - sub_7c01e404(?)
#
address stor0;
mapping of uint256 profit;
mapping of uint256 sub_5f4153f7;

function profit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return profit[arg1]
}

function sub_5f4153f7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5f4153f7[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_49422dfb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    sub_5f4153f7[address(arg1)] = arg2
}

function withdraw() {
    if stor0 != msg.sender:
        revert with 0, 'not admin'
    call stor0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not admin'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1c7e64dc(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Mismatched array lengths'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_5f4153f7[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}



}
