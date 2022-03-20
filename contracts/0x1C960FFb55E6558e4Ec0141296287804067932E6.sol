contract main {




// =====================  Runtime code  =====================


uint256 count;
array of address sub_b1a867d5;
array of struct stor2;

function count() {
    return count
}

function sub_b1a867d5(?) {
    require arg1 < sub_b1a867d5.length
    return sub_b1a867d5[arg1]
}

function _fallback() payable {
    revert
}

function Update(uint256 arg1, uint256 arg2, string arg3) {
    require arg2 < stor2[arg1].field_0
    require msg.sender == stor2[arg1][arg2].field_0
    require arg2 < stor2[arg1].field_0
    require stor2[arg1][arg2].field_768
    require arg2 < stor2[arg1].field_0
    stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4)][].field_0 = Array(len=arg3.length, data=arg3[all])
    require arg2 < stor2[arg1].field_0
    stor2[arg1][arg2].field_512 = block.timestamp
    emit EVENT(arg1, arg2);
}

function NewShare(string arg1, bool arg2, string arg3) {
    stor2[stor0].field_0++
    stor2[stor0][stor2[stor0].field_0].field_0 = msg.sender
    stor[sha3((5 * stor2[stor0].field_0) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'stor2', 2)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[stor0][stor2[stor0].field_0].field_512 = block.timestamp
    stor2[stor0][stor2[stor0].field_0].field_768 = uint8(arg2)
    stor[sha3((5 * stor2[stor0].field_0) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'stor2', 2)) + 4)][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit EVENT(count, 0);
    count++
}

function ReplyShare(uint256 arg1, string arg2, bool arg3, string arg4) {
    require arg1 < count
    stor2[arg1].field_0++
    stor2[arg1][stor2[arg1].field_0].field_0 = msg.sender
    stor[sha3((5 * stor2[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[arg1][stor2[arg1].field_0].field_512 = block.timestamp
    stor2[arg1][stor2[arg1].field_0].field_768 = uint8(arg3)
    stor[sha3((5 * stor2[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4)][].field_0 = Array(len=arg4.length, data=arg4[all])
    emit EVENT(arg1, stor2[arg1].field_0 - 1);
}

function sub_82ed13d1(?) {
    mem[32] = 2
    require arg2 < stor2[arg1].field_0
    mem[96] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length
    mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 160
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 128] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length
    mem[0] = (5 * arg2) + sha3(sha3(arg1, 2)) + 4
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4)].field_0
    idx = ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160
    s = 0
    while ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 160] = stor2[arg1][arg2].field_0
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 224] = stor2[arg1][arg2].field_512
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 256] = bool(stor2[arg1][arg2].field_768)
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 192] = 160
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 320] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 352 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)] = mem[128 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)]
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 288] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 192
    mem[stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 352] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length
    mem[stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 384 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length)] = mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length)]
    if not stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length % 32:
        return stor2[arg1][arg2].field_0, 
               Array(len=stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length, data=mem[128 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)], mem[(2 * ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 352 len stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + -ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 32]),
               stor2[arg1][arg2].field_512,
               bool(stor2[arg1][arg2].field_768),
               stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 192
    mem[floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 384] = mem[floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length % 32 + 416 len stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length % 32]
    return stor2[arg1][arg2].field_0, 
           Array(len=stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length, data=mem[128 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)], mem[(2 * ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + 352 len floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 4].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + -ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 64]),
           stor2[arg1][arg2].field_512,
           bool(stor2[arg1][arg2].field_768),
           stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 192
}



}
