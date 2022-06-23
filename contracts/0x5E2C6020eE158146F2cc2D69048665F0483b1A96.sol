contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    require not calldata.size
    mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    mem[192] = 0x5f2172b64a33f423bc7f0c48c23f7d3008f7e4fe
    mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[228] = 0
    idx = 0
    s = 388
    t = 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb5306642: msg.sender
}



}
