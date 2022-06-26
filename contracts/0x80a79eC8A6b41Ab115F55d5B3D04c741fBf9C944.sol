contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function buyWithToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[132] = stor1
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    mem[ceil32(return_data.size) + 128] = arg2
    mem[ceil32(return_data.size) + 160] = 0x5f2172b64a33f423bc7f0c48c23f7d3008f7e4fe
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with 0, 'Error swapping tokens'
    emit 0x61b5f6bf: msg.sender, arg2
    stor0 = 1
}



}
