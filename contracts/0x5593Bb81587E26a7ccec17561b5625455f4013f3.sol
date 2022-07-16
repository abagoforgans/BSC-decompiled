contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function pop() payable {
    if stor0 != tx.origin:
        revert with 0, 'O'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function call(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != tx.origin:
        revert with 0, 'O'
    idx = 0
    while idx < arg1:
        mem[100] = 0x9529da3b298ddcd5fb69200bd9fd845b4b850096
        mem[132] = 10^17
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args 0x9529da3b298ddcd5fb69200bd9fd845b4b850096, 10^17
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
