contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;
uint256 stor3;

function _fallback() payable {
    revert
}

function execute(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    mem[164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor1
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = arg1
    mem[(2 * ceil32(return_data.size)) + 160] = arg2
    mem[(2 * ceil32(return_data.size)) + 192] = 0x375734d900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = address(stor3)
    mem[(2 * ceil32(return_data.size)) + 228] = arg3
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 192
    mem[(2 * ceil32(return_data.size)) + 388] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = stor0
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(stor3), arg3, 0, 192, stor0, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _26 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3)
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _27 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3) + 192]
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _26 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
