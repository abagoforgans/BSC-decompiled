contract main {




// =====================  Runtime code  =====================


address routerAddress;
address wbnbAddress;
address stor2;

function wbnb() {
    return wbnbAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_5da32711(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if arg2 and arg3 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg3 > 100:
        revert with 0, 'pctToSell * nbSells > 100'
    mem[96] = 2
    mem[128] = wbnbAddress
    mem[160] = address(arg1)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = arg6
    require ext_code.size(stor2)
    call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg4, Array(len=2, data=mem[356 len 64]), address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[196] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Buy amount out too low'
    mem[ceil32(return_data.size) + 196] = routerAddress
    mem[ceil32(return_data.size) + 228] = -1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approve failed'
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = routerAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != -1:
        revert with 0, 'Allowance has a wrong value'
    mem[(4 * ceil32(return_data.size)) + 192] = 2
    mem[64] = (4 * ceil32(return_data.size)) + 288
    mem[(4 * ceil32(return_data.size)) + 224] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 256] = wbnbAddress
    if ext_call.return_data[0] / 100 and arg2 > -1 / ext_call.return_data[0] / 100:
        revert with 'NH{q', 17
    idx = 0
    while idx < arg3:
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 100 * arg2
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _66 = mem[(4 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 192]
        s = 0
        t = (4 * ceil32(return_data.size)) + 224
        u = mem[64] + 196
        while s < _66:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = arg6
        require ext_code.size(stor2)
        call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] / 100 * arg2, 0, 160, msg.sender, arg6, mem[mem[64] + 164 len (32 * _66) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if eth.balance(msg.sender) < eth.balance(msg.sender):
        revert with 'NH{q', 17
    if 0 < arg5:
        revert with 0, 'Sell amount out too low'
}



}
