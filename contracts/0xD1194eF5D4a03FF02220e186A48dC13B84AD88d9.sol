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
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if msg.sender != 0x1b96b92314c44b159149f7e0303511fb2fc4774f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only permissioned UniswapV2 pair can call'
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 96
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 100)] + 67
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 0, 65
    if (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 < 96 or (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 > test266151307():
        revert with 0, 65
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 100)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 120 > !block.timestamp:
        revert with 0, 17
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 132] = cd[(arg4 + 68)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 164] = cd[(arg4 + 68)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 292] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    idx = 0
    s = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = this.address
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 260] = block.timestamp + 120
    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 132 len (96 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _35 = mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32
    require mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + return_data.size + 128 > (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 159
    _36 = mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]
    if mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128] > test266151307():
        revert with 0, 65
    if (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 32 < 0 or (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 128] = _36
    require return_data.size >= _35 + (32 * _36) + 32
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 160 len 32 * _36] = mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + _35 + 160 len 32 * _36]
    if cd[(arg4 + 68)] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 1 > !(3 * cd[(arg4 + 68)] / 997):
        revert with 0, 17
    if cd[(arg4 + 68)] > !((3 * cd[(arg4 + 68)] / 997) + 1):
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
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
    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
    staticcall 0x5ff2b0db69458a0750badebc4f9e13add608c7f.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 100).length, data=mem[196 len 32 * ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _49 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127
    _50 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _50
    require return_data.size >= _49 + (32 * _50) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _50] = mem[_49 + 128 len 32 * _50]
    if cd[36] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 1 > !(3 * cd[36] / 997):
        revert with 0, 17
    if cd[68] > !((3 * cd[36] / 997) + 1):
        revert with 0, 17
    if _50 < 1:
        revert with 0, 17
    if _50 - 1 >= _50:
        revert with 0, 50
    if mem[(32 * _50 - 1) + ceil32(return_data.size) + 128] <= cd[68] + (3 * cd[36] / 997) + 1:
        revert with 0, 'U1'
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _99 = mem[_98]
    require mem[_98] == mem[_98 + 12 len 20]
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_102] == mem[_102 + 12 len 20]
    if address(cd[4]) == address(_99):
        if address(cd[4]) == mem[_102 + 12 len 20]:
            _104 = mem[64]
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
            _128 = mem[64]
            mem[mem[64]] = _104 + (32 * ('cd', 100).length) + -mem[64] + 128
            mem[64] = _104 + (32 * ('cd', 100).length) + 160
            mem[_104 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_104 + (32 * ('cd', 100).length) + 164] = cd[36]
            mem[_104 + (32 * ('cd', 100).length) + 196] = cd[36]
            mem[_104 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_104 + (32 * ('cd', 100).length) + 260] = 128
            _132 = mem[_128]
            mem[_104 + (32 * ('cd', 100).length) + 292] = mem[_128]
            mem[_104 + (32 * ('cd', 100).length) + 324 len ceil32(_132)] = mem[_128 + 32 len ceil32(_132)]
            if ceil32(_132) > _132:
                mem[_104 + (32 * ('cd', 100).length) + _132 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[36], cd[36], address(this.address), 128, mem[_104 + (32 * ('cd', 100).length) + 292 len ceil32(_132) + 32]
        else:
            _105 = mem[64]
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
            _129 = mem[64]
            mem[mem[64]] = _105 + (32 * ('cd', 100).length) + -mem[64] + 128
            mem[64] = _105 + (32 * ('cd', 100).length) + 160
            mem[_105 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_105 + (32 * ('cd', 100).length) + 164] = cd[36]
            mem[_105 + (32 * ('cd', 100).length) + 196] = 0
            mem[_105 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_105 + (32 * ('cd', 100).length) + 260] = 128
            _133 = mem[_129]
            mem[_105 + (32 * ('cd', 100).length) + 292] = mem[_129]
            mem[_105 + (32 * ('cd', 100).length) + 324 len ceil32(_133)] = mem[_129 + 32 len ceil32(_133)]
            if ceil32(_133) > _133:
                mem[_105 + (32 * ('cd', 100).length) + _133 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[36], 0, address(this.address), 128, mem[_105 + (32 * ('cd', 100).length) + 292 len ceil32(_133) + 32]
    else:
        if address(cd[4]) == mem[_102 + 12 len 20]:
            _106 = mem[64]
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
            _130 = mem[64]
            mem[mem[64]] = _106 + (32 * ('cd', 100).length) + -mem[64] + 128
            mem[64] = _106 + (32 * ('cd', 100).length) + 160
            mem[_106 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_106 + (32 * ('cd', 100).length) + 164] = 0
            mem[_106 + (32 * ('cd', 100).length) + 196] = cd[36]
            mem[_106 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_106 + (32 * ('cd', 100).length) + 260] = 128
            _134 = mem[_130]
            mem[_106 + (32 * ('cd', 100).length) + 292] = mem[_130]
            mem[_106 + (32 * ('cd', 100).length) + 324 len ceil32(_134)] = mem[_130 + 32 len ceil32(_134)]
            if ceil32(_134) > _134:
                mem[_106 + (32 * ('cd', 100).length) + _134 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[36], address(this.address), 128, mem[_106 + (32 * ('cd', 100).length) + 292 len ceil32(_134) + 32]
        else:
            _107 = mem[64]
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
            _131 = mem[64]
            mem[mem[64]] = _107 + (32 * ('cd', 100).length) + -mem[64] + 128
            mem[64] = _107 + (32 * ('cd', 100).length) + 160
            mem[_107 + (32 * ('cd', 100).length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_107 + (32 * ('cd', 100).length) + 164] = 0
            mem[_107 + (32 * ('cd', 100).length) + 196] = 0
            mem[_107 + (32 * ('cd', 100).length) + 228] = this.address
            mem[_107 + (32 * ('cd', 100).length) + 260] = 128
            _135 = mem[_131]
            mem[_107 + (32 * ('cd', 100).length) + 292] = mem[_131]
            mem[_107 + (32 * ('cd', 100).length) + 324 len ceil32(_135)] = mem[_131 + 32 len ceil32(_135)]
            if ceil32(_135) > _135:
                mem[_107 + (32 * ('cd', 100).length) + _135 + 324] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, mem[_107 + (32 * ('cd', 100).length) + 292 len ceil32(_135) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
