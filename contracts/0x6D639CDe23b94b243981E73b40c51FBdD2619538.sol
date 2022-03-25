contract main {




// =====================  Runtime code  =====================


#
#  - sub_92c388ab(?)
#  - sub_c85f8d33(?)
#
array of struct rounds;
uint256 bftValue;
uint256 lastRound;

function bftValue() payable {
    return bftValue
}

function lastRound() payable {
    return lastRound
}

function rounds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < rounds[arg1].field_0
    return rounds[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function getConsuls() payable {
    if not rounds[stor2].field_0:
        mem[(32 * rounds[stor2].field_0) + 128] = 32
        mem[(32 * rounds[stor2].field_0) + 160] = rounds[stor2].field_0
        mem[(32 * rounds[stor2].field_0) + 192 len floor32(rounds[stor2].field_0)] = mem[128 len floor32(rounds[stor2].field_0)]
        return memory
          from (32 * rounds[stor2].field_0) + 128
           len (96 * rounds[stor2].field_0) + 64
    mem[128] = rounds[stor2].field_0
    idx = 128
    s = 0
    while (32 * rounds[stor2].field_0) + 96 > idx:
        mem[idx + 32] = rounds[stor2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rounds[stor2].field_0) + 192 len floor32(rounds[stor2].field_0)] = mem[128 len floor32(rounds[stor2].field_0)]
    return Array(len=rounds[stor2].field_0, data=mem[128 len floor32(rounds[stor2].field_0)], mem[(32 * rounds[stor2].field_0) + floor32(rounds[stor2].field_0) + 192 len (32 * rounds[stor2].field_0) - floor32(rounds[stor2].field_0)]), 
}

function getConsulsByRoundId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not rounds[arg1].field_0:
        mem[(32 * rounds[arg1].field_0) + 128] = 32
        mem[(32 * rounds[arg1].field_0) + 160] = rounds[arg1].field_0
        mem[(32 * rounds[arg1].field_0) + 192 len floor32(rounds[arg1].field_0)] = mem[128 len floor32(rounds[arg1].field_0)]
        return memory
          from (32 * rounds[arg1].field_0) + 128
           len (96 * rounds[arg1].field_0) + 64
    mem[128] = rounds[arg1].field_0
    idx = 128
    s = 0
    while (32 * rounds[arg1].field_0) + 96 > idx:
        mem[idx + 32] = rounds[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rounds[arg1].field_0) + 192 len floor32(rounds[arg1].field_0)] = mem[128 len floor32(rounds[arg1].field_0)]
    return Array(len=rounds[arg1].field_0, data=mem[128 len floor32(rounds[arg1].field_0)], mem[(32 * rounds[arg1].field_0) + floor32(rounds[arg1].field_0) + 192 len (32 * rounds[arg1].field_0) - floor32(rounds[arg1].field_0)]), 
}



}
