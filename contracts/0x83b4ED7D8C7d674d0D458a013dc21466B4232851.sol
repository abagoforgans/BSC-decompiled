contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, address arg2, address arg3, address arg4, uint256 arg5)
#
function _fallback() payable {
    revert
}

function sub_8ac051f2(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_cf7df039(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(address(_17))
        staticcall address(_17).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require idx < arg1.length
            _23 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = 10000000 * 10^18
            require ext_code.size(address(_23))
            call address(_23).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), 10000000 * 10^18
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_037617f1(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg4)
        staticcall arg4.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg5
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, address(arg2), 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _301 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _313 = mem[_301 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_301 + 96])] = mem[_301 + 128 len floor32(mem[_301 + 96])]
            mem[64] = (32 * _313) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _545 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _313) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _313) + ceil32(return_data.size) + 160] = _545
            emit 0xa52ab43b: msg.value, _545, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = arg4
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _573 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _313) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _313) + ceil32(return_data.size) + 132] = _573
            mem[(32 * _313) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _313) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _313) + ceil32(return_data.size) + 260] = arg5
            mem[(32 * _313) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _313) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _313) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _313) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _313) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _313) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _761 = mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32
            require mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32 <= 4294967296
            require mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32 + (32 * _313) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32 + (32 * mem[mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32 + (32 * _313) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _313) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _573) >> 32 + (32 * _313) + ceil32(return_data.size) + 128]
            _773 = mem[_761 + (32 * _313) + ceil32(return_data.size) + 128]
            mem[(32 * _313) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_761 + (32 * _313) + ceil32(return_data.size) + 128])] = mem[_761 + (32 * _313) + ceil32(return_data.size) + 160 len floor32(mem[_761 + (32 * _313) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128]
            _933 = mem[(32 * mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _313) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 192] = _933
            emit 0xa52ab43b: mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160], _933, arg3, arg4
            require 0 < mem[96 len 4], 0
            mem[128] = arg4
            require 1 < mem[96 len 4], 0
            mem[160] = arg2
            require mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128]
            _961 = mem[(32 * mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _313) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 164] = _961
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 292] = arg5
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1053 = mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32
            require mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32 <= 4294967296
            require mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32 + (32 * mem[mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _961) >> 32 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160]
            _1065 = mem[_1053 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1053 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160])] = mem[_1053 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1053 + (32 * _773) + (32 * _313) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1065) + (32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 160]
            _1129 = mem[(32 * mem[(32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1065) + (32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _313) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _313) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1065) + (32 * _773) + (32 * _313) + (4 * ceil32(return_data.size)) + 192], _1129, arg4, arg2
        else:
            require ext_code.size(arg4)
            call arg4.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg5
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, address(arg2), 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _303 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _314 = mem[_303 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_303 + 96])] = mem[_303 + 128 len floor32(mem[_303 + 96])]
            mem[64] = (32 * _314) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _549 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _314) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _314) + ceil32(return_data.size) + 160] = _549
            emit 0xa52ab43b: msg.value, _549, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = arg4
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _577 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _314) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _314) + ceil32(return_data.size) + 132] = _577
            mem[(32 * _314) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _314) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _314) + ceil32(return_data.size) + 260] = arg5
            mem[(32 * _314) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _314) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _314) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _314) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _314) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _314) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _763 = mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32
            require mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32 <= 4294967296
            require mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32 + (32 * _314) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32 + (32 * mem[mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32 + (32 * _314) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _314) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _577) >> 32 + (32 * _314) + ceil32(return_data.size) + 128]
            _774 = mem[_763 + (32 * _314) + ceil32(return_data.size) + 128]
            mem[(32 * _314) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_763 + (32 * _314) + ceil32(return_data.size) + 128])] = mem[_763 + (32 * _314) + ceil32(return_data.size) + 160 len floor32(mem[_763 + (32 * _314) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128]
            _937 = mem[(32 * mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _314) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 192] = _937
            emit 0xa52ab43b: mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160], _937, arg3, arg4
            require 0 < mem[96 len 4], 0
            mem[128] = arg4
            require 1 < mem[96 len 4], 0
            mem[160] = arg2
            require mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128]
            _965 = mem[(32 * mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _314) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 164] = _965
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 292] = arg5
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1055 = mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32
            require mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32 <= 4294967296
            require mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32 + (32 * mem[mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _965) >> 32 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160]
            _1066 = mem[_1055 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1055 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160])] = mem[_1055 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1055 + (32 * _774) + (32 * _314) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1066) + (32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 160]
            _1132 = mem[(32 * mem[(32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1066) + (32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _314) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _314) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1066) + (32 * _774) + (32 * _314) + (4 * ceil32(return_data.size)) + 192], _1132, arg4, arg2
    else:
        require ext_code.size(arg3)
        call arg3.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 10000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        staticcall arg4.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg5
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, address(arg2), 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _305 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _315 = mem[_305 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_305 + 96])] = mem[_305 + 128 len floor32(mem[_305 + 96])]
            mem[64] = (32 * _315) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _553 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _315) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _315) + ceil32(return_data.size) + 160] = _553
            emit 0xa52ab43b: msg.value, _553, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = arg4
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _581 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _315) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _315) + ceil32(return_data.size) + 132] = _581
            mem[(32 * _315) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _315) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _315) + ceil32(return_data.size) + 260] = arg5
            mem[(32 * _315) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _315) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _315) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _315) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _315) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _315) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _765 = mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32
            require mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32 <= 4294967296
            require mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32 + (32 * _315) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32 + (32 * mem[mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32 + (32 * _315) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _315) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _581) >> 32 + (32 * _315) + ceil32(return_data.size) + 128]
            _775 = mem[_765 + (32 * _315) + ceil32(return_data.size) + 128]
            mem[(32 * _315) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_765 + (32 * _315) + ceil32(return_data.size) + 128])] = mem[_765 + (32 * _315) + ceil32(return_data.size) + 160 len floor32(mem[_765 + (32 * _315) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128]
            _941 = mem[(32 * mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _315) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 192] = _941
            emit 0xa52ab43b: mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160], _941, arg3, arg4
            require 0 < mem[96 len 4], 0
            mem[128] = arg4
            require 1 < mem[96 len 4], 0
            mem[160] = arg2
            require mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128]
            _969 = mem[(32 * mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _315) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 164] = _969
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 292] = arg5
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1057 = mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32
            require mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32 <= 4294967296
            require mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32 + (32 * mem[mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _969) >> 32 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160]
            _1067 = mem[_1057 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1057 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160])] = mem[_1057 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1057 + (32 * _775) + (32 * _315) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1067) + (32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 160]
            _1135 = mem[(32 * mem[(32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1067) + (32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _315) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _315) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1067) + (32 * _775) + (32 * _315) + (4 * ceil32(return_data.size)) + 192], _1135, arg4, arg2
        else:
            require ext_code.size(arg4)
            call arg4.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg5
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, address(arg2), 128, msg.sender, arg5, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _307 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _316 = mem[_307 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_307 + 96])] = mem[_307 + 128 len floor32(mem[_307 + 96])]
            mem[64] = (32 * _316) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _557 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _316) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _316) + ceil32(return_data.size) + 160] = _557
            emit 0xa52ab43b: msg.value, _557, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = arg4
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _585 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _316) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _316) + ceil32(return_data.size) + 132] = _585
            mem[(32 * _316) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _316) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _316) + ceil32(return_data.size) + 260] = arg5
            mem[(32 * _316) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _316) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _316) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _316) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _316) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _316) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _767 = mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32
            require mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32 <= 4294967296
            require mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32 + (32 * _316) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32 + (32 * mem[mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32 + (32 * _316) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _316) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _585) >> 32 + (32 * _316) + ceil32(return_data.size) + 128]
            _776 = mem[_767 + (32 * _316) + ceil32(return_data.size) + 128]
            mem[(32 * _316) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_767 + (32 * _316) + ceil32(return_data.size) + 128])] = mem[_767 + (32 * _316) + ceil32(return_data.size) + 160 len floor32(mem[_767 + (32 * _316) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128]
            _945 = mem[(32 * mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _316) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 192] = _945
            emit 0xa52ab43b: mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160], _945, arg3, arg4
            require 0 < mem[96 len 4], 0
            mem[128] = arg4
            require 1 < mem[96 len 4], 0
            mem[160] = arg2
            require mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128]
            _973 = mem[(32 * mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _316) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 164] = _973
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 292] = arg5
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1059 = mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32
            require mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32 <= 4294967296
            require mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32 + (32 * mem[mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _973) >> 32 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160]
            _1068 = mem[_1059 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1059 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160])] = mem[_1059 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1059 + (32 * _776) + (32 * _316) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1068) + (32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 160]
            _1138 = mem[(32 * mem[(32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1068) + (32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _316) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _316) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1068) + (32 * _776) + (32 * _316) + (4 * ceil32(return_data.size)) + 192], _1138, arg4, arg2
}



}
