contract main {




// =====================  Runtime code  =====================


#
#  - sub_63da5cbc(?)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_22c84a61(?) {
    require calldata.size - 4 >= 32
    mem[224 len 4] = 0
    call stor0 with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0x70a08231(?????), address(arg1) << 64), mem[196 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Error'
        return unknown_0x70a08231(?????), address(arg1) << 64
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Error'
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], 0
    return memory
      from ceil32(return_data.size) + 165
       len 32
}



}
