contract main {




// =====================  Runtime code  =====================


address _owner;
uint256 sub_c9b53c32;
array of struct pledgor;
array of struct sub_d5a5da9d;

function pledgor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pledgor.length
    return pledgor[arg1].field_0, pledgor[arg1].field_256
}

function pledgors(address arg1) payable {
    require calldata.size - 4 >= 32
    return pledgors[arg1].field_0, pledgors[arg1].field_256
}

function _owner() payable {
    return _owner
}

function sub_c9b53c32(?) payable {
    return sub_c9b53c32
}

function sub_d5a5da9d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_d5a5da9d[arg1].field_0
    return sub_d5a5da9d[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_1f262c28(?) payable {
    require calldata.size - 4 >= 32
    if pledgors[address(msg.sender)].field_256:
        revert with 0, 'No quota'
    if msg.sender == arg1:
        revert with 0, 'No quota'
    if not pledgors[address(msg.sender)].field_0:
        pledgors[address(msg.sender)].field_0 = 1
        if sub_d5a5da9d[stor1].field_0 == 256:
            sub_c9b53c32++
        sub_d5a5da9d[stor1].field_0++
        sub_d5a5da9d[stor1][sub_d5a5da9d[stor1].field_0].field_0 = msg.sender
    pledgors[address(msg.sender)].field_256 = arg1
    pledgors[address(arg1)].field_512++
    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'pledgors', 3))) + pledgors[address(arg1)].field_512].field_0 = msg.sender
}

function allAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_d5a5da9d[arg1].field_0:
        mem[(32 * sub_d5a5da9d[arg1].field_0) + 128] = 32
        mem[(32 * sub_d5a5da9d[arg1].field_0) + 160] = sub_d5a5da9d[arg1].field_0
        mem[(32 * sub_d5a5da9d[arg1].field_0) + 192 len floor32(sub_d5a5da9d[arg1].field_0)] = mem[128 len floor32(sub_d5a5da9d[arg1].field_0)]
        return memory
          from (32 * sub_d5a5da9d[arg1].field_0) + 128
           len (96 * sub_d5a5da9d[arg1].field_0) + 64
    mem[128] = sub_d5a5da9d[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_d5a5da9d[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_d5a5da9d[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d5a5da9d[arg1].field_0) + 192 len floor32(sub_d5a5da9d[arg1].field_0)] = mem[128 len floor32(sub_d5a5da9d[arg1].field_0)]
    return Array(len=sub_d5a5da9d[arg1].field_0, data=mem[128 len floor32(sub_d5a5da9d[arg1].field_0)], mem[(32 * sub_d5a5da9d[arg1].field_0) + floor32(sub_d5a5da9d[arg1].field_0) + 192 len (32 * sub_d5a5da9d[arg1].field_0) - floor32(sub_d5a5da9d[arg1].field_0)]), 
}

function sub_c56e6045(?) payable {
    require calldata.size - 4 >= 32
    if not pledgors[address(arg1)].field_512:
        mem[(32 * pledgors[address(arg1)].field_512) + 128] = 32
        mem[(32 * pledgors[address(arg1)].field_512) + 160] = pledgors[address(arg1)].field_512
        mem[(32 * pledgors[address(arg1)].field_512) + 192 len floor32(pledgors[address(arg1)].field_512)] = mem[128 len floor32(pledgors[address(arg1)].field_512)]
        return memory
          from (32 * pledgors[address(arg1)].field_512) + 128
           len (96 * pledgors[address(arg1)].field_512) + 64
    mem[128] = pledgors[address(arg1)][2].field_0
    idx = 128
    s = 0
    while (32 * pledgors[address(arg1)].field_512) + 96 > idx:
        mem[idx + 32] = pledgors[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * pledgors[address(arg1)].field_512) + 192 len floor32(pledgors[address(arg1)].field_512)] = mem[128 len floor32(pledgors[address(arg1)].field_512)]
    return Array(len=pledgors[address(arg1)].field_512, data=mem[128 len floor32(pledgors[address(arg1)].field_512)], mem[(32 * pledgors[address(arg1)].field_512) + floor32(pledgors[address(arg1)].field_512) + 192 len (32 * pledgors[address(arg1)].field_512) - floor32(pledgors[address(arg1)].field_512)]), 
}



}
