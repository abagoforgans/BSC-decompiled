contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor7
    stor7 = arg1
}

function printMoney(address arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    require msg.sender == stor7
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor0
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg2
    mem[(2 * ceil32(return_data.size)) + 132] = arg3
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = arg4.length
    idx = 0
    s = arg4 + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 228] = arg5
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * arg4.length]), msg.sender, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _18 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _18 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _19:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function callFunction(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require calldata.size - 36 >= 64
    require arg2 == arg2
    mem[96] = arg2
    require arg3 == arg3
    mem[128] = arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 192 <= test266151307() and ceil32(arg4.length) + 192 >= 160
    mem[160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[192 len arg4.length] = arg4[all]
    mem[arg4.length + 192] = 0
    require arg4.length >= 96
    _4 = mem[192]
    require mem[192] == mem[204 len 20]
    _5 = mem[224]
    require mem[224] == mem[224]
    _6 = mem[256]
    require mem[256] <= test266151307()
    require mem[256] + 223 < arg4.length + 192
    _7 = mem[mem[256] + 192]
    require mem[mem[256] + 192] <= test266151307()
    require ceil32(arg4.length) + (32 * mem[mem[256] + 192]) + 224 <= test266151307() and (32 * mem[mem[256] + 192]) + 224 >= 192
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[256] + 192]) + 224
    mem[ceil32(arg4.length) + 192] = mem[mem[256] + 192]
    require _6 + (32 * _7) + 64 <= arg4.length + 32
    idx = 0
    s = _6 + 224
    t = ceil32(arg4.length) + 224
    while idx < _7:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = _5
    require ext_code.size(address(_4))
    call address(_4).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, _5
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_34] == bool(mem[_34])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _5
    mem[mem[64] + 36] = _5
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = _7
    idx = 0
    s = ceil32(arg4.length) + 224
    t = mem[64] + 196
    while idx < _7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 300
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _5, _5, Array(len=_7, data=mem[mem[64] + 196 len 32 * _7]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _66 = mem[_65]
    require mem[_65] <= test266151307()
    require _65 + mem[_65] + 31 < _65 + return_data.size
    _67 = mem[_65 + mem[_65]]
    require mem[_65 + mem[_65]] <= test266151307()
    require _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32 <= test266151307() and (32 * mem[_65 + mem[_65]]) + 32 >= 0
    mem[64] = _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32
    mem[_65 + ceil32(return_data.size)] = _67
    require _66 + (32 * _67) + 32 <= return_data.size
    idx = 0
    s = _65 + _66 + 32
    t = _65 + ceil32(return_data.size) + 32
    while idx < _67:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_4))
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_91] == mem[_91]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_4))
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_95] == mem[_95]
    if mem[_95] < _5 + 2:
        revert with 0, 'Not enough funds to repay dydx loan!'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_4))
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_101]
    require mem[_101] == mem[_101]
    mem[mem[64] + 4] = stor7
    mem[mem[64] + 36] = _102 + -_5 - 2
    require ext_code.size(address(_4))
    call address(_4).0xa9059cbb with:
         gas gas_remaining wei
        args stor7, _102 + -_5 - 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_105] == bool(mem[_105])
}

function flashPrintMoney(address arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.sender == stor7
    require ext_code.size(stor1)
    staticcall stor1.getNumMarkets() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor1)
        staticcall stor1.getMarketTokenAddress(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_24] == mem[_24 + 12 len 20]
        if mem[_24 + 12 len 20] != arg1:
            idx = idx + 1
            s = mem[_24]
            continue 
        if arg2 + 2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = stor1
        mem[mem[64] + 36] = arg2 + 2
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, arg2 + 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == bool(mem[_30])
        _32 = mem[64]
        mem[mem[64]] = 3
        _83 = mem[64] + 128
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = 0
        mem[64] = mem[64] + 608
        mem[_32 + 480] = 0
        mem[_32 + 512] = 0
        mem[_32 + 544] = 0
        mem[_32 + 576] = 0
        mem[_83 + 64] = _32 + 480
        mem[_83 + 96] = 0
        mem[_83 + 128] = 0
        mem[_83 + 160] = 0
        mem[_83 + 192] = 0
        mem[_83 + 224] = 96
        mem[var109002] = _83
        t = _83
        t = _83
        t = var109002
        s = var109003
        while s - 1:
            _133 = mem[64]
            mem[64] = mem[64] + 352
            mem[_133] = 0
            mem[_133 + 32] = 0
            mem[64] = mem[64] + 128
            mem[_32 + 480] = 0
            mem[_32 + 512] = 0
            mem[_32 + 544] = 0
            mem[_32 + 576] = 0
            mem[_133 + 64] = _32 + 480
            mem[_133 + 96] = 0
            mem[_133 + 128] = 0
            mem[_133 + 160] = 0
            mem[_133 + 192] = 0
            mem[_133 + 224] = 96
            mem[t + 32] = _133
            t = _133
            t = _133
            t = t + 32
            s = s - 1
            continue 
        _134 = mem[64]
        mem[64] = mem[64] + 352
        mem[_134] = 0
        mem[_134 + 32] = 0
        _135 = mem[64]
        mem[64] = mem[64] + 128
        mem[_135] = 0
        mem[_135 + 32] = 0
        mem[_135 + 64] = 0
        mem[_135 + 96] = 0
        mem[_134 + 64] = _135
        mem[_134 + 96] = 0
        mem[_134 + 128] = 0
        mem[_134 + 160] = 0
        mem[_134 + 192] = 0
        mem[_134 + 224] = 96
        _136 = mem[64]
        mem[64] = mem[64] + 256
        mem[_136] = 1
        mem[_136 + 32] = 0
        _137 = mem[64]
        mem[64] = mem[64] + 128
        mem[_137] = 0
        mem[_137 + 32] = 0
        mem[_137 + 64] = 0
        mem[_137 + 96] = arg2
        mem[_136 + 64] = _137
        mem[_136 + 96] = idx
        mem[_136 + 128] = 0
        mem[_136 + 160] = this.address
        mem[_136 + 192] = 0
        _138 = mem[64]
        mem[64] = mem[64] + 32
        mem[_138] = 0
        mem[_136 + 224] = _138
        require 0 < mem[_32]
        mem[_32 + 32] = _136
        _140 = mem[64]
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = arg2
        mem[mem[64] + 96] = 96
        mem[mem[64] + 128] = arg3.length
        s = 0
        t = arg3 + 36
        u = mem[64] + 160
        while s < arg3.length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _180 = mem[64]
        mem[mem[64]] = (32 * arg3.length) + 128
        mem[mem[64] + (32 * arg3.length) + 160] = 0
        mem[mem[64] + (32 * arg3.length) + 192] = 0
        mem[_140 + (32 * arg3.length) + 512] = 0
        mem[_140 + (32 * arg3.length) + 544] = 0
        mem[_140 + (32 * arg3.length) + 576] = 0
        mem[_140 + (32 * arg3.length) + 608] = 0
        mem[_140 + (32 * arg3.length) + 224] = _140 + (32 * arg3.length) + 512
        mem[_140 + (32 * arg3.length) + 256] = 0
        mem[_140 + (32 * arg3.length) + 288] = 0
        mem[_140 + (32 * arg3.length) + 320] = 0
        mem[_140 + (32 * arg3.length) + 352] = 0
        mem[_140 + (32 * arg3.length) + 384] = 96
        mem[_140 + (32 * arg3.length) + 640] = 8
        mem[_140 + (32 * arg3.length) + 672] = 0
        mem[64] = _140 + (32 * arg3.length) + 1024
        mem[_140 + (32 * arg3.length) + 896] = 0
        mem[_140 + (32 * arg3.length) + 928] = 0
        mem[_140 + (32 * arg3.length) + 960] = 0
        mem[_140 + (32 * arg3.length) + 992] = 0
        mem[_140 + (32 * arg3.length) + 704] = _140 + (32 * arg3.length) + 896
        mem[_140 + (32 * arg3.length) + 736] = 0
        mem[_140 + (32 * arg3.length) + 768] = 0
        mem[_140 + (32 * arg3.length) + 800] = this.address
        mem[_140 + (32 * arg3.length) + 832] = 0
        mem[_140 + (32 * arg3.length) + 864] = _180
        require 1 < mem[_32]
        mem[_32 + 64] = _140 + (32 * arg3.length) + 640
        mem[_140 + (32 * arg3.length) + 1024] = 0
        mem[_140 + (32 * arg3.length) + 1056] = 0
        mem[_140 + (32 * arg3.length) + 1376] = 0
        mem[_140 + (32 * arg3.length) + 1408] = 0
        mem[_140 + (32 * arg3.length) + 1440] = 0
        mem[_140 + (32 * arg3.length) + 1472] = 0
        mem[_140 + (32 * arg3.length) + 1088] = _140 + (32 * arg3.length) + 1376
        mem[_140 + (32 * arg3.length) + 1120] = 0
        mem[_140 + (32 * arg3.length) + 1152] = 0
        mem[_140 + (32 * arg3.length) + 1184] = 0
        mem[_140 + (32 * arg3.length) + 1216] = 0
        mem[_140 + (32 * arg3.length) + 1248] = 96
        mem[_140 + (32 * arg3.length) + 1504] = 0
        mem[_140 + (32 * arg3.length) + 1536] = 0
        mem[_140 + (32 * arg3.length) + 1760] = 1
        mem[_140 + (32 * arg3.length) + 1792] = 0
        mem[_140 + (32 * arg3.length) + 1824] = 0
        mem[_140 + (32 * arg3.length) + 1856] = arg2 + 2
        mem[_140 + (32 * arg3.length) + 1568] = _140 + (32 * arg3.length) + 1760
        mem[_140 + (32 * arg3.length) + 1600] = idx
        mem[_140 + (32 * arg3.length) + 1632] = 0
        mem[_140 + (32 * arg3.length) + 1664] = this.address
        mem[_140 + (32 * arg3.length) + 1696] = 0
        mem[64] = _140 + (32 * arg3.length) + 1920
        mem[_140 + (32 * arg3.length) + 1888] = 0
        mem[_140 + (32 * arg3.length) + 1728] = _140 + (32 * arg3.length) + 1888
        require 2 < mem[_32]
        mem[_32 + 96] = _140 + (32 * arg3.length) + 1504
        mem[_140 + (32 * arg3.length) + 1920] = 1
        mem[_140 + (32 * arg3.length) + 1984] = 0
        mem[_140 + (32 * arg3.length) + 2016] = 0
        mem[_140 + (32 * arg3.length) + 2048] = 0
        mem[_140 + (32 * arg3.length) + 2080] = 0
        mem[64] = _140 + (32 * arg3.length) + 2176
        mem[_140 + (32 * arg3.length) + 2112] = this.address
        mem[_140 + (32 * arg3.length) + 2144] = 1
        mem[_140 + (32 * arg3.length) + 1952] = _140 + (32 * arg3.length) + 2112
        mem[_140 + (32 * arg3.length) + 2176] = 0xa67a6a4500000000000000000000000000000000000000000000000000000000
        mem[_140 + (32 * arg3.length) + 2180] = 64
        mem[_140 + (32 * arg3.length) + 2244] = 1
        idx = 0
        s = _140 + (32 * arg3.length) + 1952
        t = _140 + (32 * arg3.length) + 2276
        while idx < mem[_140 + (32 * arg3.length) + 1920]:
            _219 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_219 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_140 + (32 * arg3.length) + 2212] = 160
        _221 = mem[_32]
        mem[_140 + (32 * arg3.length) + 2340] = mem[_32]
        idx = 0
        s = _32 + 32
        t = _140 + (32 * arg3.length) + (32 * _221) + 2372
        u = _140 + (32 * arg3.length) + 2372
        while idx < _221:
            mem[u] = t + -_140 + -(32 * arg3.length) - 2372
            _239 = mem[s]
            require mem[mem[s]] < 9
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_239 + 32]
            _243 = mem[_239 + 64]
            mem[t + 64] = bool(mem[mem[_239 + 64]])
            require mem[_243 + 32] < 2
            mem[t + 96] = mem[_243 + 32]
            require mem[_243 + 64] < 2
            mem[t + 128] = mem[_243 + 64]
            mem[t + 160] = mem[_243 + 96]
            mem[t + 192] = mem[_239 + 96]
            mem[t + 224] = mem[_239 + 128]
            mem[t + 256] = mem[_239 + 172 len 20]
            mem[t + 288] = mem[_239 + 192]
            _252 = mem[_239 + 224]
            mem[t + 320] = 352
            _253 = mem[_252]
            mem[t + 352] = mem[_252]
            v = 0
            while v < _253:
                mem[t + v + 384] = mem[_252 + v + 32]
                v = v + 32
                continue 
            if ceil32(_253) > _253:
                mem[t + _253 + 384] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_253) + 384
            u = u + 32
            continue 
        require ext_code.size(stor6)
        call stor6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'No marketId found for provided token'
}



}
