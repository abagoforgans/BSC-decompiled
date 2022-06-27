contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_957c83b4(?) payable {
    mem[96] = 2
    mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[160] = 0x87230146e138d3f296a9a77e497a2a83012e9bc5
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 10^16
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
    mem[260] = msg.sender
    mem[292] = block.timestamp + 600
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 10^16, 128, msg.sender, block.timestamp + 600, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _16 = mem[192 len 4], 2328306
    require mem[192 len 4], 2328306 <= test266151307()
    require mem[192 len 4], 2328306 + 223 < return_data.size + 192
    _17 = mem[mem[192 len 4], 2328306 + 192]
    require mem[mem[192 len 4], 2328306 + 192] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[192 len 4], 2328306 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], 2328306 + 192]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 2328306 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 2328306 + 192]
    require _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = _16 + 224
    t = ceil32(return_data.size) + 224
    while idx < _17:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
