contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = 0x59451fef01912a70c12f9d0ab2576dfd8fa04211
    require not msg.value
    return code.data[115 len 2444]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of struct sub_3a8f0e8d;
address adminAddress;

function sub_3a8f0e8d(?) {
    require arg1 < sub_3a8f0e8d.length
    return sub_3a8f0e8d[arg1].field_0
}

function countFrontBots() {
    return sub_3a8f0e8d.length
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getFrontBotIv(address arg1) {
    if adminAddress != msg.sender:
        return ''
    mem[160] = stor0[address(arg1)].field_0
    idx = 160
    s = 0
    while stor0[address(arg1)].length + 128 > idx:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[address(arg1)].length, data=mem[160 len stor0[address(arg1)].length])
}

function getFrontBotAddr(address arg1) {
    if adminAddress != msg.sender:
        return ''
    mem[160] = stor0[address(arg1)][1].field_0
    idx = 160
    s = 0
    while stor0[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = stor0[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[address(arg1)][1].length, data=mem[160 len stor0[address(arg1)][1].length])
}

function setFrontBot(address arg1, string arg2, string arg3) {
    stor0[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_3a8f0e8d.length++
    if not sub_3a8f0e8d.length <= sub_3a8f0e8d.length + 1:
        idx = sub_3a8f0e8d.length + 1
        while sub_3a8f0e8d.length > idx:
            sub_3a8f0e8d[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3a8f0e8d[sub_3a8f0e8d.length].field_0 = arg1
}

function getFrontBots() {
    if not sub_3a8f0e8d.length:
        mem[(32 * sub_3a8f0e8d.length) + 160] = 32
        mem[(32 * sub_3a8f0e8d.length) + 192] = sub_3a8f0e8d.length
        mem[(32 * sub_3a8f0e8d.length) + 224 len floor32(sub_3a8f0e8d.length)] = mem[160 len floor32(sub_3a8f0e8d.length)]
        return memory
          from (32 * sub_3a8f0e8d.length) + 160
           len (96 * sub_3a8f0e8d.length) + 64
    mem[160] = address(sub_3a8f0e8d.field_0)
    idx = 160
    s = 0
    while (32 * sub_3a8f0e8d.length) + 128 > idx:
        mem[idx + 32] = sub_3a8f0e8d[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3a8f0e8d.length) + 224 len floor32(sub_3a8f0e8d.length)] = mem[160 len floor32(sub_3a8f0e8d.length)]
    return Array(len=sub_3a8f0e8d.length, data=mem[160 len floor32(sub_3a8f0e8d.length)], mem[(32 * sub_3a8f0e8d.length) + floor32(sub_3a8f0e8d.length) + 224 len (32 * sub_3a8f0e8d.length) - floor32(sub_3a8f0e8d.length)]), 
}



}
