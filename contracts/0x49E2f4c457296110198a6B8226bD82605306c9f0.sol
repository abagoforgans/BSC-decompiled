contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f15eebe3(?) payable {
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9e3dece8(?) {
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function sub_ccec1408(?) {
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        idx = idx + 1
        s = cd[((32 * idx) + cd[68] + 36)] + s
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[((32 * ('cd', 36).length) + cd[68] + 36)] * ('cd', 36).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[132] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
