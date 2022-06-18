contract main {




// =====================  Runtime code  =====================


function _fallback() {
    mem[64] = ceil32(calldata.size) + 160
    mem[128] = calldata.size
    mem[160 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 160] = 0
    if calldata.size < 4:
        revert with 0, 17
    if not calldata.size - 4:
        if 0 >= calldata.size:
            revert with 0, 50
        call 0x0f6a2fcfe915031abbfa92cc1c6cc826e8fed31a with:
             gas gas_remaining wei
    else:
        mem[ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + 160 len floor32(calldata.size + 27)] = mem[(calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + 132 len floor32(calldata.size + 27)]
        mem[ceil32(calldata.size) + 160] = calldata.size - 4
        if 0 >= calldata.size:
            revert with 0, 50
        mem[floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 5] = 4
        mem[floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 37 len 4] = 95407343
        mem[floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 73] = 0
        mem[floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 41] = calldata.size
        mem[floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 77 len floor32(calldata.size + 27)] = mem[ceil32(calldata.size) + 192 len floor32(calldata.size + 27)]
        mem[64] = floor32(not calldata.size + calldata.size + floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 72) + 1
        mem[floor32(not calldata.size + calldata.size + floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 72) + 1 len ceil32(calldata.size)] = 0, mem[floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 77 len ceil32(calldata.size) - 4]
        call 0x0f6a2fcfe915031abbfa92cc1c6cc826e8fed31a.mem[floor32(not calldata.size + calldata.size + floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 72) + 1 len 4] with:
             gas gas_remaining wei
            args mem[floor32(not calldata.size + calldata.size + floor32(ceil32(calldata.size) + (calldata.size - 4 % 32) + (32 * not calldata.size - 4 % 32) + floor32(calldata.size + 27) + 31) + 72) + 5 len calldata.size - 4]
}



}
