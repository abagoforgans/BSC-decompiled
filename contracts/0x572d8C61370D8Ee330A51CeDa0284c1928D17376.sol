contract main {




// =====================  Runtime code  =====================


#
#  - sub_bbbdbdff(?)
#
function _fallback() payable {
    revert
}

function sub_74caa838(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 96
    mem[128] = arg1
    mem[352] = 0
    mem[384] = 2 * arg3 - arg2
    mem[64] = (64 * arg3 - arg2) + 416
    if not uint255(arg3 - arg2):
        mem[320] = 384
        idx = arg2
        while idx < arg3:
            _56 = mem[128]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_56))
            staticcall address(_56).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _92 = mem[320]
            _93 = mem[352]
            require mem[352] < mem[mem[320]]
            require mem[352] + 1 < mem[mem[320]]
            mem[(32 * mem[352] + 1) + mem[320] + 32] = address(ext_call.return_data[0])
            mem[(32 * _93) + _92 + 32] = address(ext_call.return_data[0])
            mem[352] = mem[352] + 2
            idx = idx + 1
            continue 
        _55 = mem[320]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_55]
        _65 = mem[_55]
        mem[mem[64] + 64 len floor32(mem[_55])] = mem[_55 + 32 len floor32(mem[_55])]
        return 32, mem[mem[64] + 32 len (32 * _65) + 32]
    mem[416 len 64 * arg3 - arg2] = code.data[3540 len 64 * arg3 - arg2]
    mem[320] = 384
    idx = arg2
    while idx < arg3:
        _60 = mem[128]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(_60))
        staticcall address(_60).allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _96 = mem[320]
        _97 = mem[352]
        require mem[352] < mem[mem[320]]
        require mem[352] + 1 < mem[mem[320]]
        mem[(32 * mem[352] + 1) + mem[320] + 32] = address(ext_call.return_data[0])
        mem[(32 * _97) + _96 + 32] = address(ext_call.return_data[0])
        mem[352] = mem[352] + 2
        idx = idx + 1
        continue 
    _59 = mem[320]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_59]
    _68 = mem[_59]
    mem[mem[64] + 64 len floor32(mem[_59])] = mem[_59 + 32 len floor32(mem[_59])]
    return 32, mem[mem[64] + 32 len (32 * _68) + 32]
}



}
