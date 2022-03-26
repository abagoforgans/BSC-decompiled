contract main {




// =====================  Runtime code  =====================


array of struct sub_1b528702;

function sub_1b528702(?) payable {
    require calldata.size - 4 >= 32
    return sub_1b528702[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function addDelegate(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_1b528702[address(arg1)][1][address(arg2)].field_0:
        if not sub_1b528702[address(arg1)][1][address(arg2)].field_0:
            sub_1b528702[address(arg1)].field_0++
            sub_1b528702[address(arg1)][sub_1b528702[address(arg1)].field_0].field_0 = arg2
            sub_1b528702[address(arg1)][sub_1b528702[address(arg1)].field_0].field_160 = 0
            sub_1b528702[address(arg1)][1][address(arg2)].field_0 = sub_1b528702[address(arg1)].field_0
}

function sub_d852bf2a(?) payable {
    require calldata.size - 4 >= 96
    if arg2 + arg3 > sub_1b528702[address(arg1)].field_0:
        revert with 0, 'length overflow'
    require arg3 <= test266151307()
    if arg3:
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        mem[32] = 0
        if sub_1b528702[address(arg1)].field_0 <= idx + arg2:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[(32 * arg3) + 230 len 30]
        require idx + arg2 < sub_1b528702[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 0)
        require idx < arg3
        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_1b528702', 0)) + idx + arg2].field_0
        idx = idx + 1
        continue 
    mem[(32 * arg3) + 192 len floor32(arg3)] = mem[128 len floor32(arg3)]
    return Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + floor32(arg3) + 192 len (32 * arg3) - floor32(arg3)]), 
}



}
