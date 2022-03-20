contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct sub_503577d4;

function sub_503577d4(?) {
    require arg3 < sub_503577d4[arg1][arg2].field_0
    return sub_503577d4[arg1][arg2][arg3].field_0, sub_503577d4[arg1][arg2][arg3].field_256
}

function _fallback() payable {
    revert
}

function Reward(uint256 arg1, uint256 arg2) payable {
    mem[96] = 0x82ed13d100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(stor0)
    call stor0.0x82ed13d1 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    require uint32(arg1), Mask(224, 32, arg2) >> 32 <= 4294967296
    require uint32(arg1), Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and uint32(arg1), Mask(224, 32, arg2) >> 32 + mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 96] + 32 <= return_data.size
    require mem[224] <= 4294967296
    require mem[224] + 32 <= return_data.size
    require mem[mem[224] + 96] <= 4294967296 and mem[224] + mem[mem[224] + 96] + 32 <= return_data.size
    call Mask(160, 32, arg1) >> 32 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_503577d4[arg1][arg2].field_0++
    sub_503577d4[arg1][arg2][sub_503577d4[arg1][arg2].field_0].field_0 = msg.sender
    sub_503577d4[arg1][arg2][sub_503577d4[arg1][arg2].field_0].field_256 = msg.value
}

function getSum(uint256 arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < sub_503577d4[arg1][arg2].field_0:
        require idx < sub_503577d4[arg1][arg2].field_0
        mem[0] = arg2
        mem[32] = sha3(arg1, 1)
        idx = idx + 1
        s = s + sub_503577d4[arg1][arg2][idx].field_256
        continue 
    return (s * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0 * sub_503577d4[arg1][arg2].field_0)
}



}
