contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed.'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if 0x1b96b92314c44b159149f7e0303511fb2fc4774f != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only permissioned UniswapV2 pair can call'
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 96
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 > test266151307() or (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 100)] + 68
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 132] = cd[(arg4 + 68)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 164] = cd[(arg4 + 68)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 292] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    idx = 0
    s = 128
    t = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = this.address
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 260] = block.timestamp + 120
    require ext_code.size(0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0)
    call 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 132 len (96 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _35 = mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32
    require mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 159 < (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + return_data.size + 128
    _36 = mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]
    if mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 160 > test266151307() or (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 128] = _36
    require _35 + (32 * _36) + 32 <= return_data.size
    idx = 0
    s = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + _35 + 160
    t = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 160
    while idx < _36:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[(arg4 + 68)] and 3 > -1 / cd[(arg4 + 68)]:
        revert with 'NH{q', 17
    if 3 * cd[(arg4 + 68)] / 997 > -2:
        revert with 'NH{q', 17
    if cd[(arg4 + 68)] > -(3 * cd[(arg4 + 68)] / 997) - 2:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_46] == bool(mem[_46])
}

function sub_baab6892(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[36]
    mem[132] = 64
    mem[164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0)
    staticcall 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 100).length, data=mem[196 len 32 * ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _53 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
    _54 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _54
    require _53 + (32 * _54) + 32 <= return_data.size
    idx = 0
    s = _53 + 128
    t = ceil32(return_data.size) + 128
    while idx < _54:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[36] and 3 > -1 / cd[36]:
        revert with 'NH{q', 17
    if 3 * cd[36] / 997 > -2:
        revert with 'NH{q', 17
    if cd[68] > -(3 * cd[36] / 997) - 2:
        revert with 'NH{q', 17
    if _54 < 1:
        revert with 'NH{q', 17
    if _54 - 1 >= _54:
        revert with 'NH{q', 50
    if mem[(32 * _54 - 1) + ceil32(return_data.size) + 128] <= cd[68] + (3 * cd[36] / 997) + 1:
        revert with 0, 'U1'
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _106 = mem[_105]
    require mem[_105] == mem[_105 + 12 len 20]
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_110] == mem[_110 + 12 len 20]
    if address(cd[4]) == address(_106):
        if address(cd[4]) == mem[_110 + 12 len 20]:
            _112 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 96
            mem[mem[64] + 128] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 160
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _140 = mem[64]
            mem[64] = _112 + (32 * ('cd', 100).length) + 160
            mem[_112 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_112 + (32 * ('cd', 100).length) + 164] = cd[36]
            mem[_112 + (32 * ('cd', 100).length) + 196] = cd[36]
            mem[_112 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_112 + (32 * ('cd', 100).length) + 260] = 128
            _148 = mem[_140]
            mem[_112 + (32 * ('cd', 100).length) + 292] = mem[_140]
            mem[_112 + (32 * ('cd', 100).length) + 324 len ceil32(_148)] = mem[_140 + 32 len ceil32(_148)]
            if ceil32(_148) > _148:
                mem[_112 + (32 * ('cd', 100).length) + _148 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[36], cd[36], address(this.address), 128, mem[_112 + (32 * ('cd', 100).length) + 292 len ceil32(_148) + 32]
        else:
            _113 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 96
            mem[mem[64] + 128] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 160
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _142 = mem[64]
            mem[64] = _113 + (32 * ('cd', 100).length) + 160
            mem[_113 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_113 + (32 * ('cd', 100).length) + 164] = cd[36]
            mem[_113 + (32 * ('cd', 100).length) + 196] = 0
            mem[_113 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_113 + (32 * ('cd', 100).length) + 260] = 128
            _149 = mem[_142]
            mem[_113 + (32 * ('cd', 100).length) + 292] = mem[_142]
            mem[_113 + (32 * ('cd', 100).length) + 324 len ceil32(_149)] = mem[_142 + 32 len ceil32(_149)]
            if ceil32(_149) > _149:
                mem[_113 + (32 * ('cd', 100).length) + _149 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[36], 0, address(this.address), 128, mem[_113 + (32 * ('cd', 100).length) + 292 len ceil32(_149) + 32]
    else:
        if address(cd[4]) == mem[_110 + 12 len 20]:
            _114 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 96
            mem[mem[64] + 128] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 160
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _144 = mem[64]
            mem[64] = _114 + (32 * ('cd', 100).length) + 160
            mem[_114 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_114 + (32 * ('cd', 100).length) + 164] = 0
            mem[_114 + (32 * ('cd', 100).length) + 196] = cd[36]
            mem[_114 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_114 + (32 * ('cd', 100).length) + 260] = 128
            _150 = mem[_144]
            mem[_114 + (32 * ('cd', 100).length) + 292] = mem[_144]
            mem[_114 + (32 * ('cd', 100).length) + 324 len ceil32(_150)] = mem[_144 + 32 len ceil32(_150)]
            if ceil32(_150) > _150:
                mem[_114 + (32 * ('cd', 100).length) + _150 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[36], address(this.address), 128, mem[_114 + (32 * ('cd', 100).length) + 292 len ceil32(_150) + 32]
        else:
            _115 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 96
            mem[mem[64] + 128] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 160
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _146 = mem[64]
            mem[64] = _115 + (32 * ('cd', 100).length) + 160
            mem[_115 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_115 + (32 * ('cd', 100).length) + 164] = 0
            mem[_115 + (32 * ('cd', 100).length) + 196] = 0
            mem[_115 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_115 + (32 * ('cd', 100).length) + 260] = 128
            _151 = mem[_146]
            mem[_115 + (32 * ('cd', 100).length) + 292] = mem[_146]
            mem[_115 + (32 * ('cd', 100).length) + 324 len ceil32(_151)] = mem[_146 + 32 len ceil32(_151)]
            if ceil32(_151) > _151:
                mem[_115 + (32 * ('cd', 100).length) + _151 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, mem[_115 + (32 * ('cd', 100).length) + 292 len ceil32(_151) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
