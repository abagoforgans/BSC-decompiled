contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_03142bfc(?) payable {
    if 0x95046f056bc15e1a58279e86f36e44b499aed000 != msg.sender:
        revert with 0, 'NO ADMIN'
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = stor3
    mem[(2 * ceil32(return_data.size)) + 160] = stor1
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, 0x95046f056bc15e1a58279e86f36e44b499aed000, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
