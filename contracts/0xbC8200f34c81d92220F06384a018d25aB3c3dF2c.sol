contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8

function _fallback() payable {
  stop
}

function sub_6b9b8f8f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _72 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_72] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_72 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_72 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_72 + 96] = cd[(s + 96)]
        mem[t] = _72
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    _73 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = calldata.size
    mem[mem[64] + 64 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + mem[64] + 64] = 0
    emit call.func_hash: mem[mem[64] len _73 + ceil32(calldata.size) + -mem[64] + 64], msg.sender
    if uint8(stor0.field_0):
        revert with 0, 'ERR_REENTRY'
    uint8(stor0.field_0) = 1
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _142 = mem[96]
    idx = 0
    s = 0
    while idx < _142:
        _144 = mem[64]
        mem[64] = mem[64] + 128
        mem[_144] = 0
        mem[_144 + 32] = 0
        mem[_144 + 64] = 0
        mem[_144 + 96] = 0
        require idx < mem[96]
        _146 = mem[(32 * idx) + 128]
        _147 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_147)
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(_147)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_153] == mem[_153]
        if mem[_153] >= msg.value:
            _156 = mem[_146 + 32]
            _157 = mem[_146 + 64]
            _158 = mem[_146 + 96]
            mem[mem[64] + 36] = mem[_146 + 32]
            mem[mem[64] + 68] = address(cd[36])
            mem[mem[64] + 100] = _157
            mem[mem[64] + 132] = _158
            require ext_code.size(address(_147))
            call address(_147).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args address(stor0.field_0), _156, address(cd[36]), _157, _158
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_176] == mem[_176]
            require mem[_176 + 32] == mem[_176 + 32]
            if s + mem[_176] < mem[_176]:
                revert with 0, 'ERR_ADD_OVERFLOW'
            _142 = mem[96]
            idx = idx + 1
            s = s + mem[_176]
            continue 
        mem[mem[64] + 4] = mem[_146 + 12 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_166] == bool(mem[_166])
        _171 = mem[_146 + 32]
        _172 = mem[_146 + 64]
        _173 = mem[_146 + 96]
        mem[mem[64] + 36] = mem[_146 + 32]
        mem[mem[64] + 68] = address(cd[36])
        mem[mem[64] + 100] = _172
        mem[mem[64] + 132] = _173
        require ext_code.size(address(_147))
        call address(_147).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(stor0.field_0), _171, address(cd[36]), _172, _173
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_190] == mem[_190]
        require mem[_190 + 32] == mem[_190 + 32]
        if s + mem[_190] < mem[_190]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        _142 = mem[96]
        idx = idx + 1
        s = s + mem[_190]
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[36]))
    call address(cd[36]).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _150 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _151 = mem[_150]
    require mem[_150] == mem[_150]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _151
    require ext_code.size(address(cd[36]))
    call address(cd[36]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _151
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _163 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_163] == bool(mem[_163])
    if not mem[_163]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _178 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_178] == mem[_178]
    if mem[_178]:
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_178]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value mem[_178] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR_ETH_FAILED'
    uint8(stor0.field_0) = 0
    return s
}

function batchEthInSwapExactIn(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (128 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 128
        _74 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_74] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_74 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_74 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_74 + 96] = cd[(s + 96)]
        mem[t] = _74
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require arg2 == address(arg2)
    require arg3 == arg3
    _75 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = calldata.size
    mem[mem[64] + 64 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + mem[64] + 64] = 0
    emit call.func_hash: mem[mem[64] len _75 + ceil32(calldata.size) + -mem[64] + 64], msg.sender
    if uint8(stor0.field_0):
        revert with 0, 'ERR_REENTRY'
    uint8(stor0.field_0) = 1
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _146 = mem[96]
    idx = 0
    s = 0
    while idx < _146:
        _149 = mem[64]
        mem[64] = mem[64] + 128
        mem[_149] = 0
        mem[_149 + 32] = 0
        mem[_149 + 64] = 0
        mem[_149 + 96] = 0
        require idx < mem[96]
        _151 = mem[(32 * idx) + 128]
        _152 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_152)
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(_152)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_159] == mem[_159]
        if mem[_159] >= msg.value:
            _162 = mem[_151 + 32]
            _163 = mem[_151 + 64]
            _164 = mem[_151 + 96]
            mem[mem[64] + 36] = mem[_151 + 32]
            mem[mem[64] + 68] = address(arg2)
            mem[mem[64] + 100] = _163
            mem[mem[64] + 132] = _164
            require ext_code.size(address(_152))
            call address(_152).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args address(stor0.field_0), _162, address(arg2), _163, _164
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_182] == mem[_182]
            require mem[_182 + 32] == mem[_182 + 32]
            if s + mem[_182] < mem[_182]:
                revert with 0, 'ERR_ADD_OVERFLOW'
            _146 = mem[96]
            idx = idx + 1
            s = s + mem[_182]
            continue 
        mem[mem[64] + 4] = mem[_151 + 12 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_172] == bool(mem[_172])
        _177 = mem[_151 + 32]
        _178 = mem[_151 + 64]
        _179 = mem[_151 + 96]
        mem[mem[64] + 36] = mem[_151 + 32]
        mem[mem[64] + 68] = address(arg2)
        mem[mem[64] + 100] = _178
        mem[mem[64] + 132] = _179
        require ext_code.size(address(_152))
        call address(_152).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(stor0.field_0), _177, address(arg2), _178, _179
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_196] == mem[_196]
        require mem[_196 + 32] == mem[_196 + 32]
        if s + mem[_196] < mem[_196]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        _146 = mem[96]
        idx = idx + 1
        s = s + mem[_196]
        continue 
    if s < arg3:
        revert with 0, 'ERR_LIMIT_OUT'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    call address(arg2).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _156 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _157 = mem[_156]
    require mem[_156] == mem[_156]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _157
    require ext_code.size(address(arg2))
    call address(arg2).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _157
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _169 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_169] == bool(mem[_169])
    if not mem[_169]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _185 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_185] == mem[_185]
    if mem[_185]:
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_185]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value mem[_185] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR_ETH_FAILED'
    uint8(stor0.field_0) = 0
    return s
}

function sub_2999cdc7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _76 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_76] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_76 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_76 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_76 + 96] = cd[(s + 96)]
        mem[t] = _76
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    _77 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = calldata.size
    mem[mem[64] + 64 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + mem[64] + 64] = 0
    emit call.func_hash: mem[mem[64] len _77 + ceil32(calldata.size) + -mem[64] + 64], msg.sender
    if uint8(stor0.field_0):
        revert with 0, 'ERR_REENTRY'
    uint8(stor0.field_0) = 1
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[68]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_83] == bool(mem[_83])
    if not mem[_83]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    _150 = mem[96]
    idx = 0
    s = 0
    while idx < _150:
        _153 = mem[64]
        mem[64] = mem[64] + 128
        mem[_153] = 0
        mem[_153 + 32] = 0
        mem[_153 + 64] = 0
        mem[_153 + 96] = 0
        require idx < mem[96]
        _155 = mem[(32 * idx) + 128]
        _156 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_156)
        require ext_code.size(address(cd[36]))
        call address(cd[36]).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(_156)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == mem[_163]
        if mem[_163] >= cd[68]:
            _166 = mem[_155 + 32]
            _167 = mem[_155 + 64]
            _168 = mem[_155 + 96]
            mem[mem[64] + 36] = mem[_155 + 32]
            mem[mem[64] + 68] = address(stor0.field_8)
            mem[mem[64] + 100] = _167
            mem[mem[64] + 132] = _168
            require ext_code.size(address(_156))
            call address(_156).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args address(cd[36]), _166, address(stor0.field_0), _167, _168
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_186] == mem[_186]
            require mem[_186 + 32] == mem[_186 + 32]
            if s + mem[_186] < mem[_186]:
                revert with 0, 'ERR_ADD_OVERFLOW'
            _150 = mem[96]
            idx = idx + 1
            s = s + mem[_186]
            continue 
        mem[mem[64] + 4] = mem[_155 + 12 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _176 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_176] == bool(mem[_176])
        _181 = mem[_155 + 32]
        _182 = mem[_155 + 64]
        _183 = mem[_155 + 96]
        mem[mem[64] + 36] = mem[_155 + 32]
        mem[mem[64] + 68] = address(stor0.field_8)
        mem[mem[64] + 100] = _182
        mem[mem[64] + 132] = _183
        require ext_code.size(address(_156))
        call address(_156).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(cd[36]), _181, address(stor0.field_0), _182, _183
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_198] == mem[_198]
        require mem[_198 + 32] == mem[_198 + 32]
        if s + mem[_198] < mem[_198]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        _150 = mem[96]
        idx = idx + 1
        s = s + mem[_198]
        continue 
    if s > cd[68]:
        revert with 0, 'ERR_LIMIT_IN'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[36]))
    call address(cd[36]).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _161 = mem[_160]
    require mem[_160] == mem[_160]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _161
    require ext_code.size(address(cd[36]))
    call address(cd[36]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _161
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _173 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_173] == bool(mem[_173])
    if not mem[_173]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189]
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args mem[_189]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value mem[_189] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'ERR_ETH_FAILED'
    uint8(stor0.field_0) = 0
    return s
}

function batchSwapExactOut(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4, address arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (128 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 128
        _68 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_68] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_68 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_68 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_68 + 96] = cd[(s + 96)]
        mem[t] = _68
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    _69 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = calldata.size
    mem[mem[64] + 64 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + mem[64] + 64] = 0
    emit call.func_hash: mem[mem[64] len _69 + ceil32(calldata.size) + -mem[64] + 64], msg.sender
    if uint8(stor0.field_0):
        revert with 0, 'ERR_REENTRY'
    uint8(stor0.field_0) = 1
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = arg4
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_75] == bool(mem[_75])
    if not mem[_75]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    _137 = mem[96]
    idx = 0
    s = 0
    while idx < _137:
        _140 = mem[64]
        mem[64] = mem[64] + 128
        mem[_140] = 0
        mem[_140 + 32] = 0
        mem[_140 + 64] = 0
        mem[_140 + 96] = 0
        require idx < mem[96]
        _142 = mem[(32 * idx) + 128]
        _143 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_143)
        require ext_code.size(address(arg2))
        call address(arg2).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(_143)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_150] == mem[_150]
        if mem[_150] >= arg4:
            _153 = mem[_142 + 32]
            _154 = mem[_142 + 64]
            _155 = mem[_142 + 96]
            mem[mem[64] + 36] = mem[_142 + 32]
            mem[mem[64] + 68] = address(arg3)
            mem[mem[64] + 100] = _154
            mem[mem[64] + 132] = _155
            require ext_code.size(address(_143))
            call address(_143).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args address(arg2), _153, address(arg3), _154, _155
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_173] == mem[_173]
            require mem[_173 + 32] == mem[_173 + 32]
            if s + mem[_173] < mem[_173]:
                revert with 0, 'ERR_ADD_OVERFLOW'
            _137 = mem[96]
            idx = idx + 1
            s = s + mem[_173]
            continue 
        mem[mem[64] + 4] = mem[_142 + 12 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg2))
        call address(arg2).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == bool(mem[_163])
        _168 = mem[_142 + 32]
        _169 = mem[_142 + 64]
        _170 = mem[_142 + 96]
        mem[mem[64] + 36] = mem[_142 + 32]
        mem[mem[64] + 68] = address(arg3)
        mem[mem[64] + 100] = _169
        mem[mem[64] + 132] = _170
        require ext_code.size(address(_143))
        call address(_143).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(arg2), _168, address(arg3), _169, _170
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_183] == mem[_183]
        require mem[_183 + 32] == mem[_183 + 32]
        if s + mem[_183] < mem[_183]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        _137 = mem[96]
        idx = idx + 1
        s = s + mem[_183]
        continue 
    if s > arg4:
        revert with 0, 'ERR_LIMIT_IN'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    call address(arg3).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _147 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _148 = mem[_147]
    require mem[_147] == mem[_147]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _148
    require ext_code.size(address(arg3))
    call address(arg3).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _148
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_160] == bool(mem[_160])
    if not mem[_160]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    call address(arg2).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _177 = mem[_176]
    require mem[_176] == mem[_176]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _177
    require ext_code.size(address(arg2))
    call address(arg2).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _177
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _186 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_186] == bool(mem[_186])
    if not mem[_186]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    uint8(stor0.field_0) = 0
    return s
}

function batchSwapExactIn(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4, address arg5, address arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (128 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 128
        _65 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_65] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_65 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_65 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_65 + 96] = cd[(s + 96)]
        mem[t] = _65
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    _66 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = calldata.size
    mem[mem[64] + 64 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + mem[64] + 64] = 0
    emit call.func_hash: mem[mem[64] len _66 + ceil32(calldata.size) + -mem[64] + 64], msg.sender
    if uint8(stor0.field_0):
        revert with 0, 'ERR_REENTRY'
    uint8(stor0.field_0) = 1
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = arg4
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_72] == bool(mem[_72])
    if not mem[_72]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    _134 = mem[96]
    idx = 0
    s = 0
    while idx < _134:
        _137 = mem[64]
        mem[64] = mem[64] + 128
        mem[_137] = 0
        mem[_137 + 32] = 0
        mem[_137 + 64] = 0
        mem[_137 + 96] = 0
        require idx < mem[96]
        _139 = mem[(32 * idx) + 128]
        _140 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_140)
        require ext_code.size(address(arg2))
        call address(arg2).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(_140)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_147] == mem[_147]
        if mem[_147] >= arg4:
            _150 = mem[_139 + 32]
            _151 = mem[_139 + 64]
            _152 = mem[_139 + 96]
            mem[mem[64] + 36] = mem[_139 + 32]
            mem[mem[64] + 68] = address(arg3)
            mem[mem[64] + 100] = _151
            mem[mem[64] + 132] = _152
            require ext_code.size(address(_140))
            call address(_140).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args address(arg2), _150, address(arg3), _151, _152
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_170] == mem[_170]
            require mem[_170 + 32] == mem[_170 + 32]
            if s + mem[_170] < mem[_170]:
                revert with 0, 'ERR_ADD_OVERFLOW'
            _134 = mem[96]
            idx = idx + 1
            s = s + mem[_170]
            continue 
        mem[mem[64] + 4] = mem[_139 + 12 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg2))
        call address(arg2).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_160] == bool(mem[_160])
        _165 = mem[_139 + 32]
        _166 = mem[_139 + 64]
        _167 = mem[_139 + 96]
        mem[mem[64] + 36] = mem[_139 + 32]
        mem[mem[64] + 68] = address(arg3)
        mem[mem[64] + 100] = _166
        mem[mem[64] + 132] = _167
        require ext_code.size(address(_140))
        call address(_140).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(arg2), _165, address(arg3), _166, _167
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_180] == mem[_180]
        require mem[_180 + 32] == mem[_180 + 32]
        if s + mem[_180] < mem[_180]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        _134 = mem[96]
        idx = idx + 1
        s = s + mem[_180]
        continue 
    if s < arg5:
        revert with 0, 'ERR_LIMIT_OUT'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    call address(arg3).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _144 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _145 = mem[_144]
    require mem[_144] == mem[_144]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _145
    require ext_code.size(address(arg3))
    call address(arg3).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _145
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _157 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_157] == bool(mem[_157])
    if not mem[_157]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    call address(arg2).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _173 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _174 = mem[_173]
    require mem[_173] == mem[_173]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _174
    require ext_code.size(address(arg2))
    call address(arg2).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _174
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_183] == bool(mem[_183])
    if not mem[_183]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    uint8(stor0.field_0) = 0
    return s
}

function batchEthOutSwapExactIn(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4, address arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (128 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 128
        _85 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_85] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_85 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_85 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_85 + 96] = cd[(s + 96)]
        mem[t] = _85
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    _86 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = calldata.size
    mem[mem[64] + 64 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + mem[64] + 64] = 0
    emit call.func_hash: mem[mem[64] len _86 + ceil32(calldata.size) + -mem[64] + 64], msg.sender
    if uint8(stor0.field_0):
        revert with 0, 'ERR_REENTRY'
    uint8(stor0.field_0) = 1
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = arg3
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_92] == bool(mem[_92])
    if not mem[_92]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    _169 = mem[96]
    idx = 0
    s = 0
    while idx < _169:
        _172 = mem[64]
        mem[64] = mem[64] + 128
        mem[_172] = 0
        mem[_172 + 32] = 0
        mem[_172 + 64] = 0
        mem[_172 + 96] = 0
        require idx < mem[96]
        _174 = mem[(32 * idx) + 128]
        _175 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_175)
        require ext_code.size(address(arg2))
        call address(arg2).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(_175)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_182] == mem[_182]
        if mem[_182] >= arg3:
            _187 = mem[_174 + 32]
            _188 = mem[_174 + 64]
            _189 = mem[_174 + 96]
            mem[mem[64] + 36] = mem[_174 + 32]
            mem[mem[64] + 68] = address(stor0.field_8)
            mem[mem[64] + 100] = _188
            mem[mem[64] + 132] = _189
            require ext_code.size(address(_175))
            call address(_175).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args address(arg2), _187, address(stor0.field_0), _188, _189
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_215] == mem[_215]
            require mem[_215 + 32] == mem[_215 + 32]
            if s + mem[_215] < mem[_215]:
                revert with 0, 'ERR_ADD_OVERFLOW'
            _169 = mem[96]
            idx = idx + 1
            s = s + mem[_215]
            continue 
        mem[mem[64] + 4] = mem[_174 + 12 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg2))
        call address(arg2).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        _210 = mem[_174 + 32]
        _211 = mem[_174 + 64]
        _212 = mem[_174 + 96]
        mem[mem[64] + 36] = mem[_174 + 32]
        mem[mem[64] + 68] = address(stor0.field_8)
        mem[mem[64] + 100] = _211
        mem[mem[64] + 132] = _212
        require ext_code.size(address(_175))
        call address(_175).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(arg2), _210, address(stor0.field_0), _211, _212
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_229] == mem[_229]
        require mem[_229 + 32] == mem[_229 + 32]
        if s + mem[_229] < mem[_229]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        _169 = mem[96]
        idx = idx + 1
        s = s + mem[_229]
        continue 
    if s < arg4:
        revert with 0, 'ERR_LIMIT_OUT'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).balanceOf(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179]
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args mem[_179]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value mem[_179] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ERR_ETH_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).balanceOf(address rg1) with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _208 = mem[_206]
        require mem[_206] == mem[_206]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _208
        require ext_code.size(address(arg2))
        call address(arg2).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _208
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_223] == bool(mem[_223])
        if not mem[_223]:
            revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_194] = return_data.size
        mem[_194 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ERR_ETH_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).balanceOf(address rg1) with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _209 = mem[_207]
        require mem[_207] == mem[_207]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _209
        require ext_code.size(address(arg2))
        call address(arg2).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _209
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_224] == bool(mem[_224])
        if not mem[_224]:
            revert with 0, 'ERR_TRANSFER_FAILED'
    uint8(stor0.field_0) = 0
    return s
}



}
