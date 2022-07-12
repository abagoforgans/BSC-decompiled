contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function random(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return sha3(arg1, arg2, arg3)
}

function sub_63040ac8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    idx = 1
    while idx <= arg5:
        if 1 > !arg3:
            revert with 'NH{q', 17
        if arg3 > !idx:
            revert with 'NH{q', 17
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = arg2
        mem[mem[64] + 96] = arg3 + idx
        _12 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        if not arg3 + 1:
            revert with 'NH{q', 18
        if arg4 > !(sha3(mem[_12 + 32 len mem[_12]]) % arg3 + 1):
            revert with 'NH{q', 17
        if arg4 + (sha3(mem[_12 + 32 len mem[_12]]) % arg3 + 1) > arg3:
            if arg4 + (sha3(mem[_12 + 32 len mem[_12]]) % arg3 + 1) < arg3:
                revert with 'NH{q', 17
            if arg4 + (sha3(mem[_12 + 32 len mem[_12]]) % arg3 + 1) - arg3 > arg3:
                return idx, arg4 + (sha3(mem[_12 + 32 len mem[_12]]) % arg3 + 1) - arg3
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}



}
