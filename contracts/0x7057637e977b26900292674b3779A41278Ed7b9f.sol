contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address bossAddress;
address stor3;

function boss() {
    return bossAddress
}

function _fallback() payable {
    revert
}

function sub_9e640058(?) payable {
    require calldata.size - 4 >= 32
    if eth.balance(arg1) < 5 * 10^16:
        call address(arg1) with:
           value 3 * 10^16 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_72d13bbe(?) {
    require calldata.size - 4 >= 32
    if bossAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c79204f776e65722043616e2043616c6c20746869732066756e6374696f6e20,
                    mem[199 len 29]
    bossAddress = arg1
}

function sub_d1a91d78(?) {
    if bossAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c79204f776e65722043616e2043616c6c20746869732066756e6374696f6e20,
                    mem[199 len 29]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1563109d(?) {
    require calldata.size - 4 >= 96
    if bossAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c79204f776e65722043616e2043616c6c20746869732066756e6374696f6e20,
                    mem[199 len 29]
    mem[160] = stor1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= 0:
        mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = arg3
        mem[324] = block.timestamp + 100
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg3), block.timestamp + 100, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    else:
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _57 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _62 = mem[_57 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_57 + 192])] = mem[_57 + 224 len floor32(mem[_57 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _81 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _62) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _62) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _62) + ceil32(return_data.size) + 260] = _81 * -arg2 + 100 / 100
        mem[(32 * _62) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _62) + ceil32(return_data.size) + 356] = block.timestamp + 100
        mem[(32 * _62) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _62) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _62) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _81 * -arg2 + 100 / 100, Array(len=2, data=mem[(32 * _62) + ceil32(return_data.size) + 420 len 64]), address(arg3), block.timestamp + 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _62) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _62) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _62) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _62) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * _62) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _62) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _62) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _62) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _62) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function sub_ef63fd93(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if bossAddress != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe4f6e6c79204f776e65722043616e2043616c6c20746869732066756e6374696f6e20,
                    mem[(32 * arg3.length) + 231 len 29]
    mem[(32 * arg3.length) + 128] = 2
    mem[64] = (32 * arg3.length) + 224
    mem[(32 * arg3.length) + 160] = stor1
    mem[(32 * arg3.length) + 192] = arg1
    idx = 0
    while idx < arg4:
        _110 = mem[96]
        s = 0
        t = 0
        while s < _110:
            if arg5 <= 0:
                require s < mem[96]
                _120 = mem[(32 * s) + 128]
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = t
                mem[mem[64] + 68] = address(_120)
                mem[mem[64] + 100] = block.timestamp + 100
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                _123 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < 32 * _123:
                    mem[mem[64] + idx + 164] = mem[(32 * arg3.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(stor3)
                call stor3.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args t, 128, address(_120), block.timestamp + 100, mem[mem[64] + 132 len (32 * _123) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _164 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _166 = mem[_164]
                require mem[_164] <= 4294967296
                require mem[_164] + 32 <= return_data.size
                require mem[mem[_164] + _164] <= 4294967296 and mem[_164] + (32 * mem[mem[_164] + _164]) + 32 <= return_data.size
                mem[_164 + ceil32(return_data.size)] = mem[mem[_164] + _164]
                _172 = mem[_166 + _164]
                idx = 0
                while idx < 32 * _172:
                    mem[_164 + ceil32(return_data.size) + idx + 32] = mem[_166 + _164 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _172) + _164 + ceil32(return_data.size) + 32
                s = s + 1
                t = t
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg3.length) + 128]
            _126 = mem[(32 * arg3.length) + 128]
            idx = 0
            while idx < 32 * _126:
                mem[mem[64] + idx + 100] = mem[(32 * arg3.length) + idx + 160]
                idx = idx + 32
                continue 
            require ext_code.size(stor3)
            staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[mem[64] + 68 len (32 * _126) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _168 = mem[_165]
            require mem[_165] <= 4294967296
            require mem[_165] + 32 <= return_data.size
            require mem[mem[_165] + _165] <= 4294967296 and mem[_165] + (32 * mem[mem[_165] + _165]) + 32 <= return_data.size
            mem[_165 + ceil32(return_data.size)] = mem[mem[_165] + _165]
            _173 = mem[_168 + _165]
            idx = 0
            while idx < 32 * _173:
                mem[_165 + ceil32(return_data.size) + idx + 32] = mem[_168 + _165 + idx + 32]
                idx = idx + 32
                continue 
            mem[64] = (32 * _173) + _165 + ceil32(return_data.size) + 32
            require 1 < mem[_165 + ceil32(return_data.size)]
            _194 = mem[_165 + ceil32(return_data.size) + 64]
            require s < mem[96]
            _196 = mem[(32 * s) + 128]
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 32] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 36] = _194 * -arg5 + 100 / 100
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 100] = address(_196)
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 132] = block.timestamp + 100
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 68] = 128
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 164] = mem[(32 * arg3.length) + 128]
            _199 = mem[(32 * arg3.length) + 128]
            idx = 0
            while idx < 32 * _199:
                mem[(32 * _173) + _165 + ceil32(return_data.size) + idx + 196] = mem[(32 * arg3.length) + idx + 160]
                idx = idx + 32
                continue 
            require ext_code.size(stor3)
            call stor3.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg2 wei
                 gas gas_remaining wei
                args _194 * -arg5 + 100 / 100, 128, address(_196), block.timestamp + 100, mem[(32 * _173) + _165 + ceil32(return_data.size) + 164 len (32 * _199) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _173) + _165 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _211 = mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32
            require mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32 <= 4294967296
            require mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32 + (32 * _173) + _165 + ceil32(return_data.size) + 32] <= 4294967296 and mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32 + (32 * mem[mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32 + (32 * _173) + _165 + ceil32(return_data.size) + 32]) + 32 <= return_data.size
            mem[(32 * _173) + _165 + (2 * ceil32(return_data.size)) + 32] = mem[mem[(32 * _173) + _165 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _194 * -arg5 + 100 / 100) >> 32 + (32 * _173) + _165 + ceil32(return_data.size) + 32]
            _214 = mem[_211 + (32 * _173) + _165 + ceil32(return_data.size) + 32]
            idx = 0
            while idx < 32 * _214:
                mem[(32 * _173) + _165 + (2 * ceil32(return_data.size)) + idx + 64] = mem[_211 + (32 * _173) + _165 + ceil32(return_data.size) + idx + 64]
                idx = idx + 32
                continue 
            mem[64] = (32 * _214) + (32 * _173) + _165 + (2 * ceil32(return_data.size)) + 64
            s = s + 1
            t = _194 * -arg5 + 100 / 100
            continue 
        idx = idx + 1
        continue 
    _109 = mem[96]
    idx = 0
    s = 0
    while idx < _109:
        require idx < mem[96]
        _114 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(_114)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    emit 0x3d3a9af3: (s * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109 * _109)
    if arg6:
        if eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
