contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_87ba6179(?) payable {
    require calldata.size - 4 >= 32
    return Array(len=132, data=unknown_0x24ccab8f(?????), 0, 64, 123, 8, 'call foo', 0 >> 768, Mask(32, -1024, unknown_0x24ccab8f(?????), 0, 64, 123, 8, 'call foo', 0) << 1024), 
}

function testCallDoesNotExist(address arg1) {
    require calldata.size - 4 >= 32
    mem[132 len 0] = None
    call arg1.mem[132 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        emit Response(bool(ext_call.success), Array(len=4, data=Mask(32, 32, bool(ext_call.success)) >> 32));
    else:
        emit Response(bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
}



}
