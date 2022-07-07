contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_be498acd(?) {
    require calldata.size - 4 >= 288
    require ext_code.size(arg1)
    if arg8:
        call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg7, address(this.address), 128, 288, address(arg1), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), arg9, 256, 0
    else:
        call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg7, 0, address(this.address), 128, 288, address(arg1), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), arg9, 256, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 256
    if arg2 > 0:
        _5 = mem[128]
        _7 = mem[192]
        _8 = mem[224]
        _9 = mem[256]
        _10 = mem[288]
        _11 = mem[320]
        _12 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _25 = mem[_12 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_12 + 128])] = mem[_12 + 160 len ceil32(mem[_12 + 128])]
        if not _25 % 32:
            mem[_25 + ceil32(arg4.length) + 160] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_25 + ceil32(arg4.length) + 224] = address(_10)
            mem[_25 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_25 + ceil32(arg4.length) + 260] = arg2
            mem[_25 + ceil32(arg4.length) + 292] = 64
            mem[_25 + ceil32(arg4.length) + 324] = 2
            mem[_25 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[_25 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_25 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _25 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _551 = mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]
            _563 = mem[_25 + ceil32(arg4.length) + _551 + 256]
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])] = mem[_25 + ceil32(arg4.length) + _551 + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])]
            require 0 < mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _767 = mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _767
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _767, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _975 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _999 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])]
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _767
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _767
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _767
            else:
                require -_11 + 1000
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _767 + 1, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _977 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _1000 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])]
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg2 * _11 / -_11 + 1000) + -_767 - 1
        else:
            mem[floor32(_25) + ceil32(arg4.length) + 160] = mem[floor32(_25) + ceil32(arg4.length) + -(_25 % 32) + 192 len _25 % 32]
            mem[floor32(_25) + ceil32(arg4.length) + 192] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_10)
            mem[floor32(_25) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_25) + ceil32(arg4.length) + 292] = arg2
            mem[floor32(_25) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_25) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_25) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[floor32(_25) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_25) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _553 = mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
            _564 = mem[floor32(_25) + ceil32(arg4.length) + _553 + 288]
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])] = mem[floor32(_25) + ceil32(arg4.length) + _553 + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])]
            require 0 < mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _770 = mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _770
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _770, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _979 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1001 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])]
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _770
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _770
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _770
            else:
                require -_11 + 1000
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _770 + 1, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _981 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1002 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])]
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg2 * _11 / -_11 + 1000) + -_770 - 1
    else:
        _14 = mem[128]
        _16 = mem[192]
        _17 = mem[224]
        _18 = mem[256]
        _19 = mem[288]
        _20 = mem[320]
        _21 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _26 = mem[_21 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_21 + 128])] = mem[_21 + 160 len ceil32(mem[_21 + 128])]
        if not _26 % 32:
            mem[_26 + ceil32(arg4.length) + 160] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_26 + ceil32(arg4.length) + 224] = address(_19)
            mem[_26 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_26 + ceil32(arg4.length) + 260] = arg3
            mem[_26 + ceil32(arg4.length) + 292] = 64
            mem[_26 + ceil32(arg4.length) + 324] = 2
            mem[_26 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[_26 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_26 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _26 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _555 = mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _565 = mem[_26 + ceil32(arg4.length) + _555 + 256]
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])] = mem[_26 + ceil32(arg4.length) + _555 + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])]
            require 0 < mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _773 = mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _773
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _773, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _983 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1003 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])]
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _773
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _773
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _773
            else:
                require -_20 + 1000
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _773 + 1, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _985 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1004 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])]
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg3 * _20 / -_20 + 1000) + -_773 - 1
        else:
            mem[floor32(_26) + ceil32(arg4.length) + 160] = mem[floor32(_26) + ceil32(arg4.length) + -(_26 % 32) + 192 len _26 % 32]
            mem[floor32(_26) + ceil32(arg4.length) + 192] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_19)
            mem[floor32(_26) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_26) + ceil32(arg4.length) + 292] = arg3
            mem[floor32(_26) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_26) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_26) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[floor32(_26) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_26) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _557 = mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _566 = mem[floor32(_26) + ceil32(arg4.length) + _557 + 288]
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])] = mem[floor32(_26) + ceil32(arg4.length) + _557 + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])]
            require 0 < mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _776 = mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _776
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _776, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _987 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1005 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])]
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _776
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _776
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _776
            else:
                require -_20 + 1000
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _776 + 1, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _989 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1006 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])]
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg3 * _20 / -_20 + 1000) + -_776 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 256
    if arg2 > 0:
        _5 = mem[128]
        _7 = mem[192]
        _8 = mem[224]
        _9 = mem[256]
        _10 = mem[288]
        _11 = mem[320]
        _12 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _25 = mem[_12 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_12 + 128])] = mem[_12 + 160 len ceil32(mem[_12 + 128])]
        if not _25 % 32:
            mem[_25 + ceil32(arg4.length) + 160] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_25 + ceil32(arg4.length) + 224] = address(_10)
            mem[_25 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_25 + ceil32(arg4.length) + 260] = arg2
            mem[_25 + ceil32(arg4.length) + 292] = 64
            mem[_25 + ceil32(arg4.length) + 324] = 2
            mem[_25 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[_25 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_25 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _25 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _551 = mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]
            _563 = mem[_25 + ceil32(arg4.length) + _551 + 256]
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])] = mem[_25 + ceil32(arg4.length) + _551 + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])]
            require 0 < mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _767 = mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _767
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _767, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _975 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _999 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])]
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _767
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _767
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _767
            else:
                require -_11 + 1000
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _767 + 1, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _977 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _1000 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])]
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg2 * _11 / -_11 + 1000) + -_767 - 1
        else:
            mem[floor32(_25) + ceil32(arg4.length) + 160] = mem[floor32(_25) + ceil32(arg4.length) + -(_25 % 32) + 192 len _25 % 32]
            mem[floor32(_25) + ceil32(arg4.length) + 192] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_10)
            mem[floor32(_25) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_25) + ceil32(arg4.length) + 292] = arg2
            mem[floor32(_25) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_25) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_25) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[floor32(_25) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_25) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _553 = mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
            _564 = mem[floor32(_25) + ceil32(arg4.length) + _553 + 288]
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])] = mem[floor32(_25) + ceil32(arg4.length) + _553 + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])]
            require 0 < mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _770 = mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _770
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _770, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _979 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1001 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])]
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _770
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _770
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _770
            else:
                require -_11 + 1000
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _770 + 1, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _981 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1002 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])]
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg2 * _11 / -_11 + 1000) + -_770 - 1
    else:
        _14 = mem[128]
        _16 = mem[192]
        _17 = mem[224]
        _18 = mem[256]
        _19 = mem[288]
        _20 = mem[320]
        _21 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _26 = mem[_21 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_21 + 128])] = mem[_21 + 160 len ceil32(mem[_21 + 128])]
        if not _26 % 32:
            mem[_26 + ceil32(arg4.length) + 160] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_26 + ceil32(arg4.length) + 224] = address(_19)
            mem[_26 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_26 + ceil32(arg4.length) + 260] = arg3
            mem[_26 + ceil32(arg4.length) + 292] = 64
            mem[_26 + ceil32(arg4.length) + 324] = 2
            mem[_26 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[_26 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_26 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _26 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _555 = mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _565 = mem[_26 + ceil32(arg4.length) + _555 + 256]
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])] = mem[_26 + ceil32(arg4.length) + _555 + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])]
            require 0 < mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _773 = mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _773
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _773, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _983 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1003 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])]
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _773
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _773
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _773
            else:
                require -_20 + 1000
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _773 + 1, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _985 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1004 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])]
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg3 * _20 / -_20 + 1000) + -_773 - 1
        else:
            mem[floor32(_26) + ceil32(arg4.length) + 160] = mem[floor32(_26) + ceil32(arg4.length) + -(_26 % 32) + 192 len _26 % 32]
            mem[floor32(_26) + ceil32(arg4.length) + 192] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_19)
            mem[floor32(_26) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_26) + ceil32(arg4.length) + 292] = arg3
            mem[floor32(_26) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_26) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_26) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[floor32(_26) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_26) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _557 = mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _566 = mem[floor32(_26) + ceil32(arg4.length) + _557 + 288]
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])] = mem[floor32(_26) + ceil32(arg4.length) + _557 + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])]
            require 0 < mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _776 = mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _776
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _776, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _987 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1005 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])]
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _776
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _776
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _776
            else:
                require -_20 + 1000
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _776 + 1, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _989 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1006 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])]
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg3 * _20 / -_20 + 1000) + -_776 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 256
    if arg2 > 0:
        _5 = mem[128]
        _7 = mem[192]
        _8 = mem[224]
        _9 = mem[256]
        _10 = mem[288]
        _11 = mem[320]
        _12 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _25 = mem[_12 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_12 + 128])] = mem[_12 + 160 len ceil32(mem[_12 + 128])]
        if not _25 % 32:
            mem[_25 + ceil32(arg4.length) + 160] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_25 + ceil32(arg4.length) + 224] = address(_10)
            mem[_25 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_25 + ceil32(arg4.length) + 260] = arg2
            mem[_25 + ceil32(arg4.length) + 292] = 64
            mem[_25 + ceil32(arg4.length) + 324] = 2
            mem[_25 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[_25 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_25 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _25 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _551 = mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]
            _563 = mem[_25 + ceil32(arg4.length) + _551 + 256]
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])] = mem[_25 + ceil32(arg4.length) + _551 + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])]
            require 0 < mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _767 = mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _767
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _767, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _975 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _999 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])]
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _767
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _767
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _767
            else:
                require -_11 + 1000
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _767 + 1, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _977 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _1000 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])]
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg2 * _11 / -_11 + 1000) + -_767 - 1
        else:
            mem[floor32(_25) + ceil32(arg4.length) + 160] = mem[floor32(_25) + ceil32(arg4.length) + -(_25 % 32) + 192 len _25 % 32]
            mem[floor32(_25) + ceil32(arg4.length) + 192] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_10)
            mem[floor32(_25) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_25) + ceil32(arg4.length) + 292] = arg2
            mem[floor32(_25) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_25) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_25) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[floor32(_25) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_25) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _553 = mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
            _564 = mem[floor32(_25) + ceil32(arg4.length) + _553 + 288]
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])] = mem[floor32(_25) + ceil32(arg4.length) + _553 + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])]
            require 0 < mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _770 = mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _770
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _770, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _979 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1001 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])]
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _770
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _770
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _770
            else:
                require -_11 + 1000
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _770 + 1, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _981 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1002 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])]
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg2 * _11 / -_11 + 1000) + -_770 - 1
    else:
        _14 = mem[128]
        _16 = mem[192]
        _17 = mem[224]
        _18 = mem[256]
        _19 = mem[288]
        _20 = mem[320]
        _21 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _26 = mem[_21 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_21 + 128])] = mem[_21 + 160 len ceil32(mem[_21 + 128])]
        if not _26 % 32:
            mem[_26 + ceil32(arg4.length) + 160] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_26 + ceil32(arg4.length) + 224] = address(_19)
            mem[_26 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_26 + ceil32(arg4.length) + 260] = arg3
            mem[_26 + ceil32(arg4.length) + 292] = 64
            mem[_26 + ceil32(arg4.length) + 324] = 2
            mem[_26 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[_26 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_26 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _26 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _555 = mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _565 = mem[_26 + ceil32(arg4.length) + _555 + 256]
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])] = mem[_26 + ceil32(arg4.length) + _555 + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])]
            require 0 < mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _773 = mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _773
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _773, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _983 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1003 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])]
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _773
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _773
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _773
            else:
                require -_20 + 1000
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _773 + 1, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _985 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1004 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])]
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg3 * _20 / -_20 + 1000) + -_773 - 1
        else:
            mem[floor32(_26) + ceil32(arg4.length) + 160] = mem[floor32(_26) + ceil32(arg4.length) + -(_26 % 32) + 192 len _26 % 32]
            mem[floor32(_26) + ceil32(arg4.length) + 192] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_19)
            mem[floor32(_26) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_26) + ceil32(arg4.length) + 292] = arg3
            mem[floor32(_26) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_26) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_26) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[floor32(_26) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_26) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _557 = mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _566 = mem[floor32(_26) + ceil32(arg4.length) + _557 + 288]
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])] = mem[floor32(_26) + ceil32(arg4.length) + _557 + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])]
            require 0 < mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _776 = mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _776
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _776, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _987 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1005 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])]
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _776
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _776
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _776
            else:
                require -_20 + 1000
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _776 + 1, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _989 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1006 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])]
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg3 * _20 / -_20 + 1000) + -_776 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 256
    if arg2 > 0:
        _5 = mem[128]
        _7 = mem[192]
        _8 = mem[224]
        _9 = mem[256]
        _10 = mem[288]
        _11 = mem[320]
        _12 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _25 = mem[_12 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_12 + 128])] = mem[_12 + 160 len ceil32(mem[_12 + 128])]
        if not _25 % 32:
            mem[_25 + ceil32(arg4.length) + 160] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_25 + ceil32(arg4.length) + 224] = address(_10)
            mem[_25 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_25 + ceil32(arg4.length) + 260] = arg2
            mem[_25 + ceil32(arg4.length) + 292] = 64
            mem[_25 + ceil32(arg4.length) + 324] = 2
            mem[_25 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[_25 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_25 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _25 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _551 = mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_25 + ceil32(arg4.length) + mem[_25 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]
            _563 = mem[_25 + ceil32(arg4.length) + _551 + 256]
            mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])] = mem[_25 + ceil32(arg4.length) + _551 + 288 len floor32(mem[_25 + ceil32(arg4.length) + _551 + 256])]
            require 0 < mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _767 = mem[_25 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _767
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _767, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _975 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _999 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _975 + 288])]
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _767
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _767
                mem[(32 * _999) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _767
            else:
                require -_11 + 1000
                mem[_25 + ceil32(arg4.length) + 192] = address(_10)
                mem[_25 + ceil32(arg4.length) + 224] = address(_9)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _767 + 1, Array(len=2, data=mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _977 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                _1000 = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288]
                mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])] = mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 320 len floor32(mem[(32 * _563) + _25 + ceil32(arg4.length) + ceil32(return_data.size) + _977 + 288])]
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_5)
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg2 * _11 / -_11 + 1000) + _767 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _767 + 1
                mem[(32 * _1000) + (32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _563) + _25 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg2 * _11 / -_11 + 1000) + -_767 - 1
        else:
            mem[floor32(_25) + ceil32(arg4.length) + 160] = mem[floor32(_25) + ceil32(arg4.length) + -(_25 % 32) + 192 len _25 % 32]
            mem[floor32(_25) + ceil32(arg4.length) + 192] = 2
            if address(_5) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_10)
            mem[floor32(_25) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_25) + ceil32(arg4.length) + 292] = arg2
            mem[floor32(_25) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_25) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_25) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_7))
            staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[floor32(_25) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_25) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _553 = mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_25) + ceil32(arg4.length) + mem[floor32(_25) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
            _564 = mem[floor32(_25) + ceil32(arg4.length) + _553 + 288]
            mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])] = mem[floor32(_25) + ceil32(arg4.length) + _553 + 320 len floor32(mem[floor32(_25) + ceil32(arg4.length) + _553 + 288])]
            require 0 < mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _770 = mem[floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_10))
            call address(_10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_8), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _11:
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _770
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _770, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _979 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1001 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _979 + 320])]
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _770
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), _770
                mem[(32 * _1001) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _770
            else:
                require -_11 + 1000
                mem[floor32(_25) + ceil32(arg4.length) + 224] = address(_10)
                mem[floor32(_25) + ceil32(arg4.length) + 256] = address(_9)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_8))
                call address(_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, (arg2 * _11 / -_11 + 1000) + _770 + 1, Array(len=2, data=mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _981 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                _1002 = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320]
                mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])] = mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 352 len floor32(mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + ceil32(return_data.size) + _981 + 320])]
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_5)
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg2 * _11 / -_11 + 1000) + _770 + 1
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_5), (arg2 * _11 / -_11 + 1000) + _770 + 1
                mem[(32 * _1002) + (32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_9))
                call address(_9).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _564) + floor32(_25) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg2 * _11 / -_11 + 1000) + -_770 - 1
    else:
        _14 = mem[128]
        _16 = mem[192]
        _17 = mem[224]
        _18 = mem[256]
        _19 = mem[288]
        _20 = mem[320]
        _21 = mem[352]
        require mem[352] <= 4294967296
        require mem[352] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[352] + 128] + mem[352] + 64 and mem[mem[352] + 128] <= 4294967296
        mem[ceil32(arg4.length) + 128] = mem[mem[352] + 128]
        _26 = mem[_21 + 128]
        mem[ceil32(arg4.length) + 160 len ceil32(mem[_21 + 128])] = mem[_21 + 160 len ceil32(mem[_21 + 128])]
        if not _26 % 32:
            mem[_26 + ceil32(arg4.length) + 160] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[_26 + ceil32(arg4.length) + 224] = address(_19)
            mem[_26 + ceil32(arg4.length) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_26 + ceil32(arg4.length) + 260] = arg3
            mem[_26 + ceil32(arg4.length) + 292] = 64
            mem[_26 + ceil32(arg4.length) + 324] = 2
            mem[_26 + ceil32(arg4.length) + 356 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[_26 + ceil32(arg4.length) + 356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_26 + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _26 + ceil32(arg4.length) + ceil32(return_data.size) + 256
            require return_data.size >= 32
            _555 = mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256] = mem[_26 + ceil32(arg4.length) + mem[_26 + ceil32(arg4.length) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _565 = mem[_26 + ceil32(arg4.length) + _555 + 256]
            mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])] = mem[_26 + ceil32(arg4.length) + _555 + 288 len floor32(mem[_26 + ceil32(arg4.length) + _555 + 256])]
            require 0 < mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 256]
            _773 = mem[_26 + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = _773
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _773, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _983 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1003 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _983 + 288])]
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = _773
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _773
                mem[(32 * _1003) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] - _773
            else:
                require -_20 + 1000
                mem[_26 + ceil32(arg4.length) + 192] = address(_19)
                mem[_26 + ceil32(arg4.length) + 224] = address(_18)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 292] = arg3
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 324] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 388] = this.address
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 420] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 356] = 160
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 452] = 2
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _773 + 1, Array(len=2, data=mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _985 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                _1004 = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288]
                mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])] = mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 320 len floor32(mem[(32 * _565) + _26 + ceil32(arg4.length) + ceil32(return_data.size) + _985 + 288])]
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = address(_14)
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = (arg3 * _20 / -_20 + 1000) + _773 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _773 + 1
                mem[(32 * _1004) + (32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _565) + _26 + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] + -(arg3 * _20 / -_20 + 1000) + -_773 - 1
        else:
            mem[floor32(_26) + ceil32(arg4.length) + 160] = mem[floor32(_26) + ceil32(arg4.length) + -(_26 % 32) + 192 len _26 % 32]
            mem[floor32(_26) + ceil32(arg4.length) + 192] = 2
            if address(_14) != msg.sender:
                revert with 0, 'Unauthorized'
            mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_19)
            mem[floor32(_26) + ceil32(arg4.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(_26) + ceil32(arg4.length) + 292] = arg3
            mem[floor32(_26) + ceil32(arg4.length) + 324] = 64
            mem[floor32(_26) + ceil32(arg4.length) + 356] = 2
            mem[floor32(_26) + ceil32(arg4.length) + 388 len 0] = None
            require ext_code.size(address(_16))
            staticcall address(_16).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[floor32(_26) + ceil32(arg4.length) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_26) + ceil32(arg4.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288
            require return_data.size >= 32
            _557 = mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288] = mem[floor32(_26) + ceil32(arg4.length) + mem[floor32(_26) + ceil32(arg4.length) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _566 = mem[floor32(_26) + ceil32(arg4.length) + _557 + 288]
            mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])] = mem[floor32(_26) + ceil32(arg4.length) + _557 + 320 len floor32(mem[floor32(_26) + ceil32(arg4.length) + _557 + 288])]
            require 0 < mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 288]
            _776 = mem[floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320]
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_17), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not _20:
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = _776
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _776, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _987 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1005 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _987 + 320])]
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = _776
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), _776
                mem[(32 * _1005) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] - _776
            else:
                require -_20 + 1000
                mem[floor32(_26) + ceil32(arg4.length) + 224] = address(_19)
                mem[floor32(_26) + ceil32(arg4.length) + 256] = address(_18)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = arg3
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = block.timestamp + (240 * 24 * 3600)
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 160
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(address(_17))
                call address(_17).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (arg3 * _20 / -_20 + 1000) + _776 + 1, Array(len=2, data=mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _989 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                _1006 = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320]
                mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])] = mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 352 len floor32(mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + ceil32(return_data.size) + _989 + 320])]
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = address(_14)
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = (arg3 * _20 / -_20 + 1000) + _776 + 1
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_14), (arg3 * _20 / -_20 + 1000) + _776 + 1
                mem[(32 * _1006) + (32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320]
                require ext_code.size(address(_18))
                call address(_18).0xa9059cbb with:
                     gas gas_remaining wei
                    args tx.origin, mem[(32 * _566) + floor32(_26) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] + -(arg3 * _20 / -_20 + 1000) + -_776 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
