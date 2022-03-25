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
    staticcall arg1.0xad5c4648 with:
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

function sub_dc368bec(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _125 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            mem[64] = (32 * mem[_125 + 96]) + ceil32(return_data.size) + 128
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _127 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            mem[64] = (32 * mem[_127 + 96]) + ceil32(return_data.size) + 128
    else:
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 10000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _129 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            mem[64] = (32 * mem[_129 + 96]) + ceil32(return_data.size) + 128
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _131 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            mem[64] = (32 * mem[_131 + 96]) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    emit 0xa52ab43b: msg.value, mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128], address(ext_call.return_data[0]), arg2
}

function sub_c3adc5a5(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _221 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _233 = mem[_221 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_221 + 96])] = mem[_221 + 128 len floor32(mem[_221 + 96])]
            mem[64] = (32 * _233) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _369 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _233) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _233) + ceil32(return_data.size) + 160] = _369
            emit 0xa52ab43b: msg.value, _369, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _397 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _233) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _233) + ceil32(return_data.size) + 132] = _397
            mem[(32 * _233) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _233) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _233) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _233) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _233) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _233) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _233) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _233) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _233) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _489 = mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32
            require mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32 <= 4294967296
            require mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32 + (32 * _233) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32 + (32 * mem[mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32 + (32 * _233) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _233) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _233) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _397) >> 32 + (32 * _233) + ceil32(return_data.size) + 128]
            _501 = mem[_489 + (32 * _233) + ceil32(return_data.size) + 128]
            mem[(32 * _233) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_489 + (32 * _233) + ceil32(return_data.size) + 128])] = mem[_489 + (32 * _233) + ceil32(return_data.size) + 160 len floor32(mem[_489 + (32 * _233) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _501) + (32 * _233) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _233) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _233) + (2 * ceil32(return_data.size)) + 128]
            _565 = mem[(32 * mem[(32 * _233) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _233) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _501) + (32 * _233) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            emit 0xa52ab43b: mem[(32 * _501) + (32 * _233) + (2 * ceil32(return_data.size)) + 160], _565, arg2, arg3
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _223 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _234 = mem[_223 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_223 + 96])] = mem[_223 + 128 len floor32(mem[_223 + 96])]
            mem[64] = (32 * _234) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _373 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _234) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _234) + ceil32(return_data.size) + 160] = _373
            emit 0xa52ab43b: msg.value, _373, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _401 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _234) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _234) + ceil32(return_data.size) + 132] = _401
            mem[(32 * _234) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _234) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _234) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _234) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _234) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _234) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _234) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _234) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _234) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _491 = mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32
            require mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32 <= 4294967296
            require mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32 + (32 * _234) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32 + (32 * mem[mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32 + (32 * _234) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _234) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _234) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _401) >> 32 + (32 * _234) + ceil32(return_data.size) + 128]
            _502 = mem[_491 + (32 * _234) + ceil32(return_data.size) + 128]
            mem[(32 * _234) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_491 + (32 * _234) + ceil32(return_data.size) + 128])] = mem[_491 + (32 * _234) + ceil32(return_data.size) + 160 len floor32(mem[_491 + (32 * _234) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _502) + (32 * _234) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _234) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _234) + (2 * ceil32(return_data.size)) + 128]
            _568 = mem[(32 * mem[(32 * _234) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _234) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _502) + (32 * _234) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            emit 0xa52ab43b: mem[(32 * _502) + (32 * _234) + (2 * ceil32(return_data.size)) + 160], _568, arg2, arg3
    else:
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 10000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _225 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _235 = mem[_225 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_225 + 96])] = mem[_225 + 128 len floor32(mem[_225 + 96])]
            mem[64] = (32 * _235) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _377 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _235) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _235) + ceil32(return_data.size) + 160] = _377
            emit 0xa52ab43b: msg.value, _377, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _405 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _235) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _235) + ceil32(return_data.size) + 132] = _405
            mem[(32 * _235) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _235) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _235) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _235) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _235) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _235) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _235) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _235) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _235) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _493 = mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32
            require mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32 <= 4294967296
            require mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32 + (32 * _235) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32 + (32 * mem[mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32 + (32 * _235) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _235) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _235) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _405) >> 32 + (32 * _235) + ceil32(return_data.size) + 128]
            _503 = mem[_493 + (32 * _235) + ceil32(return_data.size) + 128]
            mem[(32 * _235) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_493 + (32 * _235) + ceil32(return_data.size) + 128])] = mem[_493 + (32 * _235) + ceil32(return_data.size) + 160 len floor32(mem[_493 + (32 * _235) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _503) + (32 * _235) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _235) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _235) + (2 * ceil32(return_data.size)) + 128]
            _571 = mem[(32 * mem[(32 * _235) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _235) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _503) + (32 * _235) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            emit 0xa52ab43b: mem[(32 * _503) + (32 * _235) + (2 * ceil32(return_data.size)) + 160], _571, arg2, arg3
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _227 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _236 = mem[_227 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_227 + 96])] = mem[_227 + 128 len floor32(mem[_227 + 96])]
            mem[64] = (32 * _236) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _381 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _236) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _236) + ceil32(return_data.size) + 160] = _381
            emit 0xa52ab43b: msg.value, _381, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _409 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _236) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _236) + ceil32(return_data.size) + 132] = _409
            mem[(32 * _236) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _236) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _236) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _236) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _236) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _236) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _236) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _236) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _236) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _495 = mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32
            require mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32 <= 4294967296
            require mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32 + (32 * _236) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32 + (32 * mem[mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32 + (32 * _236) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _236) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _236) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _409) >> 32 + (32 * _236) + ceil32(return_data.size) + 128]
            _504 = mem[_495 + (32 * _236) + ceil32(return_data.size) + 128]
            mem[(32 * _236) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_495 + (32 * _236) + ceil32(return_data.size) + 128])] = mem[_495 + (32 * _236) + ceil32(return_data.size) + 160 len floor32(mem[_495 + (32 * _236) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _504) + (32 * _236) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _236) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _236) + (2 * ceil32(return_data.size)) + 128]
            _574 = mem[(32 * mem[(32 * _236) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _236) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _504) + (32 * _236) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            emit 0xa52ab43b: mem[(32 * _504) + (32 * _236) + (2 * ceil32(return_data.size)) + 160], _574, arg2, arg3
}

function sub_b0663675(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _317 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _329 = mem[_317 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_317 + 96])] = mem[_317 + 128 len floor32(mem[_317 + 96])]
            mem[64] = (32 * _329) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _561 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _329) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _329) + ceil32(return_data.size) + 160] = _561
            emit 0xa52ab43b: msg.value, _561, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _589 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _329) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _329) + ceil32(return_data.size) + 132] = _589
            mem[(32 * _329) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _329) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _329) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _329) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _329) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _329) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _329) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _329) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _329) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _777 = mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32
            require mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32 <= 4294967296
            require mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32 + (32 * _329) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32 + (32 * mem[mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32 + (32 * _329) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _329) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _589) >> 32 + (32 * _329) + ceil32(return_data.size) + 128]
            _789 = mem[_777 + (32 * _329) + ceil32(return_data.size) + 128]
            mem[(32 * _329) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_777 + (32 * _329) + ceil32(return_data.size) + 128])] = mem[_777 + (32 * _329) + ceil32(return_data.size) + 160 len floor32(mem[_777 + (32 * _329) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128]
            _949 = mem[(32 * mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _329) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 192] = _949
            emit 0xa52ab43b: mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160], _949, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = address(ext_call.return_data[0])
            require mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128]
            _977 = mem[(32 * mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _329) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 164] = _977
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 292] = arg4
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1069 = mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32
            require mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32 <= 4294967296
            require mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32 + (32 * mem[mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _977) >> 32 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160]
            _1081 = mem[_1069 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1069 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160])] = mem[_1069 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1069 + (32 * _789) + (32 * _329) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1081) + (32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 160]
            _1145 = mem[(32 * mem[(32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1081) + (32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _329) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _329) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1081) + (32 * _789) + (32 * _329) + (4 * ceil32(return_data.size)) + 192], _1145, arg3, address(ext_call.return_data[0])
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _319 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _330 = mem[_319 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_319 + 96])] = mem[_319 + 128 len floor32(mem[_319 + 96])]
            mem[64] = (32 * _330) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _565 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _330) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _330) + ceil32(return_data.size) + 160] = _565
            emit 0xa52ab43b: msg.value, _565, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _593 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _330) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _330) + ceil32(return_data.size) + 132] = _593
            mem[(32 * _330) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _330) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _330) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _330) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _330) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _330) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _330) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _330) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _330) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _779 = mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32
            require mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32 <= 4294967296
            require mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32 + (32 * _330) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32 + (32 * mem[mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32 + (32 * _330) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _330) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _593) >> 32 + (32 * _330) + ceil32(return_data.size) + 128]
            _790 = mem[_779 + (32 * _330) + ceil32(return_data.size) + 128]
            mem[(32 * _330) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_779 + (32 * _330) + ceil32(return_data.size) + 128])] = mem[_779 + (32 * _330) + ceil32(return_data.size) + 160 len floor32(mem[_779 + (32 * _330) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128]
            _953 = mem[(32 * mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _330) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 192] = _953
            emit 0xa52ab43b: mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160], _953, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = address(ext_call.return_data[0])
            require mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128]
            _981 = mem[(32 * mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _330) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 164] = _981
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 292] = arg4
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1071 = mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32
            require mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32 <= 4294967296
            require mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32 + (32 * mem[mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _981) >> 32 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160]
            _1082 = mem[_1071 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1071 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160])] = mem[_1071 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1071 + (32 * _790) + (32 * _330) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1082) + (32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 160]
            _1148 = mem[(32 * mem[(32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1082) + (32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _330) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _330) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1082) + (32 * _790) + (32 * _330) + (4 * ceil32(return_data.size)) + 192], _1148, arg3, address(ext_call.return_data[0])
    else:
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 10000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _321 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _331 = mem[_321 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_321 + 96])] = mem[_321 + 128 len floor32(mem[_321 + 96])]
            mem[64] = (32 * _331) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _569 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _331) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _331) + ceil32(return_data.size) + 160] = _569
            emit 0xa52ab43b: msg.value, _569, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _597 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _331) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _331) + ceil32(return_data.size) + 132] = _597
            mem[(32 * _331) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _331) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _331) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _331) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _331) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _331) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _331) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _331) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _331) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _781 = mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32
            require mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32 <= 4294967296
            require mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32 + (32 * _331) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32 + (32 * mem[mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32 + (32 * _331) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _331) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _597) >> 32 + (32 * _331) + ceil32(return_data.size) + 128]
            _791 = mem[_781 + (32 * _331) + ceil32(return_data.size) + 128]
            mem[(32 * _331) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_781 + (32 * _331) + ceil32(return_data.size) + 128])] = mem[_781 + (32 * _331) + ceil32(return_data.size) + 160 len floor32(mem[_781 + (32 * _331) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128]
            _957 = mem[(32 * mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _331) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 192] = _957
            emit 0xa52ab43b: mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160], _957, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = address(ext_call.return_data[0])
            require mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128]
            _985 = mem[(32 * mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _331) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 164] = _985
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 292] = arg4
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1073 = mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32
            require mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32 <= 4294967296
            require mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32 + (32 * mem[mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _985) >> 32 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160]
            _1083 = mem[_1073 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1073 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160])] = mem[_1073 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1073 + (32 * _791) + (32 * _331) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1083) + (32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 160]
            _1151 = mem[(32 * mem[(32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1083) + (32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _331) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _331) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1083) + (32 * _791) + (32 * _331) + (4 * ceil32(return_data.size)) + 192], _1151, arg3, address(ext_call.return_data[0])
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = msg.sender
            mem[196] = arg4
            mem[132] = 128
            mem[228] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, 128, msg.sender, arg4, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _323 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _332 = mem[_323 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_323 + 96])] = mem[_323 + 128 len floor32(mem[_323 + 96])]
            mem[64] = (32 * _332) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _573 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _332) + ceil32(return_data.size) + 128] = msg.value
            mem[(32 * _332) + ceil32(return_data.size) + 160] = _573
            emit 0xa52ab43b: msg.value, _573, address(ext_call.return_data[0]), arg2
            require 0 < mem[96 len 4], 0
            mem[128] = arg2
            require 1 < mem[96 len 4], 0
            mem[160] = arg3
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            _601 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _332) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _332) + ceil32(return_data.size) + 132] = _601
            mem[(32 * _332) + ceil32(return_data.size) + 164] = 0
            mem[(32 * _332) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _332) + ceil32(return_data.size) + 260] = arg4
            mem[(32 * _332) + ceil32(return_data.size) + 196] = 160
            mem[(32 * _332) + ceil32(return_data.size) + 292] = mem[96 len 4], 0
            mem[(32 * _332) + ceil32(return_data.size) + 324 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _332) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _332) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _332) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _783 = mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32
            require mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32 <= 4294967296
            require mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32 + (32 * _332) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32 + (32 * mem[mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32 + (32 * _332) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _332) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _601) >> 32 + (32 * _332) + ceil32(return_data.size) + 128]
            _792 = mem[_783 + (32 * _332) + ceil32(return_data.size) + 128]
            mem[(32 * _332) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_783 + (32 * _332) + ceil32(return_data.size) + 128])] = mem[_783 + (32 * _332) + ceil32(return_data.size) + 160 len floor32(mem[_783 + (32 * _332) + ceil32(return_data.size) + 128])]
            mem[64] = (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            require mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128]
            _961 = mem[(32 * mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _332) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 192] = _961
            emit 0xa52ab43b: mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160], _961, arg2, arg3
            require 0 < mem[96 len 4], 0
            mem[128] = arg3
            require 1 < mem[96 len 4], 0
            mem[160] = address(ext_call.return_data[0])
            require mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128]
            _989 = mem[(32 * mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _332) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 164] = _989
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 196] = 0
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 292] = arg4
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 228] = 160
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 324] = mem[96 len 4], 0
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 356 len floor32(mem[96 len 4], 0)] = mem[128 len floor32(mem[96 len 4], 0)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 164 len (32 * mem[96 len 4], 0) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _1075 = mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32
            require mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32 <= 4294967296
            require mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32 + (32 * mem[mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
            mem[(32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _989) >> 32 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160]
            _1084 = mem[_1075 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_1075 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160])] = mem[_1075 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_1075 + (32 * _792) + (32 * _332) + (2 * ceil32(return_data.size)) + 160])]
            mem[64] = (32 * _1084) + (32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128]
            require mem[(32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 160]
            _1154 = mem[(32 * mem[(32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * _1084) + (32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * mem[(32 * _332) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _332) + (2 * ceil32(return_data.size)) + 160]
            emit 0xa52ab43b: mem[(32 * _1084) + (32 * _792) + (32 * _332) + (4 * ceil32(return_data.size)) + 192], _1154, arg3, address(ext_call.return_data[0])
}



}
