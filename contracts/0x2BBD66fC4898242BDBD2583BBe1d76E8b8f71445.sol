contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPairDetail(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 1
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0
    mem[960] = 0
    mem[1344] = arg1
    mem[1376] = 1
    require ext_code.size(arg1)
    staticcall arg1.getOraclePrice() with:
            gas gas_remaining wei
    mem[1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[992] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1._K_() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1024] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1._BASE_BALANCE_() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1056] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1._QUOTE_BALANCE_() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1088] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.getExpectedTarget() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 1408 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[1152] = ext_call.return_data[32]
    mem[1120] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1._R_STATUS_() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[1184] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1._LP_FEE_RATE_() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1216] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1._MT_FEE_RATE_() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1248] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1._BASE_TOKEN_() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[1280] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1._QUOTE_TOKEN_() with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 1408
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[1312] = ext_call.return_data[12 len 20]
    mem[128] = 992
    mem[(13 * ceil32(return_data.size)) + 1408] = 32
    mem[(13 * ceil32(return_data.size)) + 1440] = 1
    idx = 0
    s = 128
    t = (13 * ceil32(return_data.size)) + 1472
    while idx < mem[96]:
        _64 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_64 + 32]
        mem[t + 64] = mem[_64 + 64]
        mem[t + 96] = mem[_64 + 96]
        mem[t + 128] = mem[_64 + 128]
        mem[t + 160] = mem[_64 + 160]
        mem[t + 192] = mem[_64 + 192]
        mem[t + 224] = mem[_64 + 224]
        mem[t + 256] = mem[_64 + 256]
        mem[t + 288] = mem[_64 + 300 len 20]
        mem[t + 320] = mem[_64 + 332 len 20]
        mem[t + 352] = mem[_64 + 364 len 20]
        mem[t + 384] = mem[_64 + 384]
        idx = idx + 1
        s = s + 32
        t = t + 416
        continue 
    return memory
      from mem[64]
       len (13 * ceil32(return_data.size)) + -mem[64] + 1888
}



}
