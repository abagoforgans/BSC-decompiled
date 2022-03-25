contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function get(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _11 % 32:
        mem[64] = _11 + ceil32(return_data.size) + 128
        mem[_11 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        mem[_11 + ceil32(return_data.size) + 160] = 64
        mem[_11 + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[_11 + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return ext_call.return_data[0], 64, mem[_11 + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _11 + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _11 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
        return ext_call.return_data[0], 
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_11 + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    mem[floor32(_11) + ceil32(return_data.size) + 128] = mem[floor32(_11) + ceil32(return_data.size) + -(_11 % 32) + 160 len _11 % 32]
    mem[64] = floor32(_11) + ceil32(return_data.size) + 160
    mem[floor32(_11) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    mem[floor32(_11) + ceil32(return_data.size) + 192] = 64
    mem[floor32(_11) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_11) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return ext_call.return_data[0], 
               64,
               mem[floor32(_11) + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_11) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_11) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
    return ext_call.return_data[0], 
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_11) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
}



}
