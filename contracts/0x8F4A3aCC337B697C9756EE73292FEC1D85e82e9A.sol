contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawWrappedBNB(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer token amount!'
}

function getV1Reserves(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if arg3 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            revert with 0, 'Pair does not exist'
        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            require ext_code.size(arg1)
            staticcall arg1.getExchange(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], eth.balance(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.getExchange(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg3)
    staticcall arg3.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
}

function getReserves(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function checkArbitrageStillExists(address[] arg1, address arg2, int256[] arg3, uint256 arg4) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _62 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] <= test266151307()
        _85 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 32
        mem[_85] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]
        require calldata.size >= arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 68
        u = 0
        v = arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68
        w = _85 + 32
        while u < cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_62] = _85
        require cd[(arg1 + cd[s] + 68)] == address(cd[(arg1 + cd[s] + 68)])
        mem[_62 + 32] = cd[(arg1 + cd[s] + 68)]
        mem[_62 + 64] = cd[(arg1 + cd[s] + 100)]
        mem[t] = _62
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _122 = mem[96]
    idx = 0
    s = arg2
    while idx < _122:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 64] != 2:
            require idx < mem[96]
            _130 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            require 0 < mem[mem[mem[(32 * idx) + 128]]]
            require idx < mem[96]
            if mem[mem[mem[(32 * idx) + 128]] + 44 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                require 0 < mem[mem[mem[(32 * idx) + 128]]]
                _153 = mem[mem[mem[(32 * idx) + 128]] + 32]
                mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128]] + 44 len 20]
                require ext_code.size(address(_130))
                staticcall address(_130).getExchange(address rg1) with:
                        gas gas_remaining wei
                       args address(_153)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _164 = mem[_161]
                require mem[_161] == mem[_161 + 12 len 20]
                mem[mem[64] + 4] = s
                require ext_code.size(address(_164))
                staticcall address(_164).getTokenToEthInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_172]
                continue 
            require 1 < mem[mem[mem[(32 * idx) + 128]]]
            _155 = mem[mem[mem[(32 * idx) + 128]] + 64]
            mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128]] + 76 len 20]
            require ext_code.size(address(_130))
            staticcall address(_130).getExchange(address rg1) with:
                    gas gas_remaining wei
                   args address(_155)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _165 = mem[_162]
            require mem[_162] == mem[_162 + 12 len 20]
            mem[mem[64] + 4] = s
            require ext_code.size(address(_165))
            staticcall address(_165).getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_173]
            continue 
        require idx < mem[96]
        _133 = mem[mem[(32 * idx) + 128] + 32]
        require idx < mem[96]
        _140 = mem[mem[(32 * idx) + 128]]
        _141 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _143 = mem[_140]
        mem[mem[64] + 68] = mem[_140]
        s = 0
        t = _140 + 32
        u = mem[64] + 100
        while s < _143:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_133))
        staticcall address(_133).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _141 + (32 * _143) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _183 = mem[_182]
        require mem[_182] <= test266151307()
        require _182 + mem[_182] + 31 < _182 + return_data.size
        _184 = mem[_182 + mem[_182]]
        require mem[_182 + mem[_182]] <= test266151307()
        require (32 * mem[_182 + mem[_182]]) + 32 >= 0 and _182 + ceil32(return_data.size) + (32 * mem[_182 + mem[_182]]) + 32 <= test266151307()
        mem[64] = _182 + ceil32(return_data.size) + (32 * mem[_182 + mem[_182]]) + 32
        mem[_182 + ceil32(return_data.size)] = _184
        require return_data.size >= _183 + (32 * _184) + 32
        s = 0
        t = _182 + _183 + 32
        u = _182 + ceil32(return_data.size) + 32
        while s < _184:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _184 - 1 < _184:
            idx = idx + 1
            s = mem[(32 * _184 - 1) + _182 + ceil32(return_data.size) + 32]
            continue 
        revert
    return s
}

function getAllReserves(address arg1, address arg2, address arg3, int256[] arg4) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    require calldata.size >= arg3 + (64 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require calldata.size - s >= 64
        _81 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_81] = cd[s]
        mem[_81 + 32] = cd[(s + 32)]
        mem[t] = _81
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    _82 = mem[96]
    require mem[96] <= test266151307()
    _83 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _82) + 32
    if not _82:
        _160 = mem[_83]
        idx = 0
        while idx < _160:
            require idx < mem[96]
            require idx < mem[96]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = arg2
            require ext_code.size(this.address)
            if mem[mem[(32 * idx) + 128] + 32] != 2:
                staticcall this.address.0x4015b47c with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(arg1), arg2
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    if return_data.size:
                        _200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_200] = return_data.size
                        mem[_200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _201 = mem[_194]
                    _202 = mem[_194 + 32]
                    _210 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_210]
                    mem[_210 + 32] = idx
                    require 1 < mem[_210]
                    mem[_210 + 64] = _201
                    require 2 < mem[_210]
                    mem[_210 + 96] = _202
                    require idx < mem[_83]
                    mem[(32 * idx) + _83 + 32] = _210
            else:
                staticcall this.address.0x32749461 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(arg1), arg2
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    if return_data.size:
                        _203 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_203] = return_data.size
                        mem[_203 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _204 = mem[_195]
                    _205 = mem[_195 + 32]
                    _212 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_212]
                    mem[_212 + 32] = idx
                    require 1 < mem[_212]
                    mem[_212 + 64] = _204
                    require 2 < mem[_212]
                    mem[_212 + 96] = _205
                    require idx < mem[_83]
                    mem[(32 * idx) + _83 + 32] = _212
            _160 = mem[_83]
            idx = idx + 1
            continue 
        _162 = mem[64]
        mem[mem[64]] = 32
        _168 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + (32 * _168) + 64
        u = mem[64] + 64
        while idx < _168:
            mem[u] = t + -_162 - 64
            _237 = mem[s]
            _238 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            w = _237 + 32
            x = t + 32
            v = 0
            while v < _238:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v + 1
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _238) + 32
            u = u + 32
            continue 
    else:
        mem[_83 + 32] = 96
        s = _83 + 32
        s = _82
        while s - 1:
            mem[arg3.length + 32] = 96
            s = arg3.length + 32
            s = s - 1
            continue 
        _236 = mem[_83]
        idx = 0
        while idx < _236:
            require idx < mem[96]
            require idx < mem[96]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = arg2
            require ext_code.size(this.address)
            if mem[mem[(32 * idx) + 128] + 32] != 2:
                staticcall this.address.0x4015b47c with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(arg1), arg2
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    if return_data.size:
                        _262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_262] = return_data.size
                        mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _263 = mem[_260]
                    _264 = mem[_260 + 32]
                    _268 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_268]
                    mem[_268 + 32] = idx
                    require 1 < mem[_268]
                    mem[_268 + 64] = _263
                    require 2 < mem[_268]
                    mem[_268 + 96] = _264
                    require idx < mem[_83]
                    mem[(32 * idx) + _83 + 32] = _268
            else:
                staticcall this.address.0x32749461 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(arg1), arg2
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    if return_data.size:
                        _265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_265] = return_data.size
                        mem[_265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _266 = mem[_261]
                    _267 = mem[_261 + 32]
                    _270 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_270]
                    mem[_270 + 32] = idx
                    require 1 < mem[_270]
                    mem[_270 + 64] = _266
                    require 2 < mem[_270]
                    mem[_270 + 96] = _267
                    require idx < mem[_83]
                    mem[(32 * idx) + _83 + 32] = _270
            _236 = mem[_83]
            idx = idx + 1
            continue 
        _240 = mem[64]
        mem[mem[64]] = 32
        _247 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + (32 * _247) + 64
        u = mem[64] + 64
        while idx < _247:
            mem[u] = t + -_240 - 64
            _279 = mem[s]
            _280 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            w = _279 + 32
            x = t + 32
            v = 0
            while v < _280:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v + 1
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _280) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getReservesPack(address[][] arg1, address arg2, int256[] arg3) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _73 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32
        mem[_73] = cd[(arg1 + cd[s] + 36)]
        require calldata.size >= arg1 + cd[s] + (32 * cd[(arg1 + cd[s] + 36)]) + 68
        u = 0
        v = arg1 + cd[s] + 68
        w = _73 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _73
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _74 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 >= mem[64] and mem[64] + (32 * arg2.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_74] = arg2.length
    require calldata.size >= arg2 + (64 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = _74 + 32
    while idx < arg2.length:
        require calldata.size - s >= 64
        _144 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_144] = cd[s]
        mem[_144 + 32] = cd[(s + 32)]
        mem[t] = _144
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    _145 = mem[96]
    require mem[96] <= test266151307()
    _146 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _145) + 32
    if not _145:
        _213 = mem[_146]
        idx = 0
        while idx < _213:
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            _218 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            _225 = mem[mem[(32 * idx) + 128] + 64]
            _226 = mem[64]
            mem[mem[64]] = 0xe68cf70500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_218)
            mem[mem[64] + 36] = address(_225)
            mem[mem[64] + 68] = 96
            _230 = mem[_74]
            mem[mem[64] + 100] = mem[_74]
            s = 0
            t = mem[64] + 132
            u = _74 + 32
            while s < _230:
                _281 = mem[u]
                mem[t] = mem[mem[u] + 12 len 20]
                mem[t + 32] = mem[_281 + 32]
                _213 = mem[_146]
                s = s + 1
                t = t + 64
                u = u + 32
                continue 
            require ext_code.size(this.address)
            staticcall this.address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _226 + (64 * _230) + -mem[64] + 128]
            if not ext_call.success:
                if return_data.size:
                    _302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_302] = return_data.size
                    mem[_302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _295 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _303 = mem[_295]
                require mem[_295] <= test266151307()
                require _295 + mem[_295] + 31 < _295 + return_data.size
                _308 = mem[_295 + mem[_295]]
                require mem[_295 + mem[_295]] <= test266151307()
                require (32 * mem[_295 + mem[_295]]) + 32 >= 0 and _295 + ceil32(return_data.size) + (32 * mem[_295 + mem[_295]]) + 32 <= test266151307()
                mem[64] = _295 + ceil32(return_data.size) + (32 * mem[_295 + mem[_295]]) + 32
                mem[_295 + ceil32(return_data.size)] = _308
                s = 0
                t = _295 + _303 + 32
                u = _295 + ceil32(return_data.size) + 32
                while s < _308:
                    _334 = mem[t]
                    require _295 + _303 + mem[t] + 63 < _295 + return_data.size
                    _343 = mem[_295 + _303 + mem[t] + 32]
                    require mem[_295 + _303 + mem[t] + 32] <= test266151307()
                    _351 = mem[64]
                    require mem[64] + (32 * mem[_295 + _303 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_295 + _303 + mem[t] + 32]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[_295 + _303 + mem[t] + 32]) + 32
                    mem[_351] = _343
                    require return_data.size >= _303 + _334 + (32 * _343) + 64
                    idx = 0
                    s = _295 + _303 + _334 + 64
                    t = _351 + 32
                    while idx < _343:
                        mem[t] = mem[s]
                        _213 = mem[_146]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_351 + (32 * _343) + 32] = _351
                    _213 = mem[_146]
                    idx = _343 + 1
                    s = _295 + _303 + _334 + (32 * _343) + 96
                    t = _351 + (32 * _343) + 64
                    continue 
                require idx < mem[_146]
                mem[(32 * idx) + _146 + 32] = _295 + ceil32(return_data.size)
            _213 = mem[_146]
            idx = idx + 1
            continue 
        _217 = mem[64]
        mem[mem[64]] = 32
        _221 = mem[_146]
        mem[mem[64] + 32] = mem[_146]
        idx = 0
        s = _146 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _221) + 64
        while idx < _221:
            mem[t] = u + -_217 - 64
            _280 = mem[s]
            _286 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _280 + 32
            x = u + (32 * _286) + 32
            y = u + 32
            while v < _286:
                mem[y] = x + -u - 32
                _332 = mem[w]
                _333 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                s = _332 + 32
                t = x + 32
                idx = 0
                while idx < _333:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                v = v + 1
                w = w + 32
                x = x + (32 * _333) + 32
                y = y + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = x
            continue 
    else:
        mem[_146 + 32] = 96
        s = _146 + 32
        s = _145
        while s - 1:
            mem[arg2.length + 32] = 96
            s = arg2.length + 32
            s = s - 1
            continue 
        _279 = mem[_146]
        idx = 0
        while idx < _279:
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            _291 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            _299 = mem[mem[(32 * idx) + 128] + 64]
            _300 = mem[64]
            mem[mem[64]] = 0xe68cf70500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_291)
            mem[mem[64] + 36] = address(_299)
            mem[mem[64] + 68] = 96
            _305 = mem[_74]
            mem[mem[64] + 100] = mem[_74]
            s = 0
            t = mem[64] + 132
            u = _74 + 32
            while s < _305:
                _336 = mem[u]
                mem[t] = mem[mem[u] + 12 len 20]
                mem[t + 32] = mem[_336 + 32]
                _279 = mem[_146]
                s = s + 1
                t = t + 64
                u = u + 32
                continue 
            require ext_code.size(this.address)
            staticcall this.address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _300 + (64 * _305) + -mem[64] + 128]
            if not ext_call.success:
                if return_data.size:
                    _349 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_349] = return_data.size
                    mem[_349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _347 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _350 = mem[_347]
                require mem[_347] <= test266151307()
                require _347 + mem[_347] + 31 < _347 + return_data.size
                _352 = mem[_347 + mem[_347]]
                require mem[_347 + mem[_347]] <= test266151307()
                require (32 * mem[_347 + mem[_347]]) + 32 >= 0 and _347 + ceil32(return_data.size) + (32 * mem[_347 + mem[_347]]) + 32 <= test266151307()
                mem[64] = _347 + ceil32(return_data.size) + (32 * mem[_347 + mem[_347]]) + 32
                mem[_347 + ceil32(return_data.size)] = _352
                s = 0
                t = _347 + _350 + 32
                u = _347 + ceil32(return_data.size) + 32
                while s < _352:
                    _364 = mem[t]
                    require _347 + _350 + mem[t] + 63 < _347 + return_data.size
                    _366 = mem[_347 + _350 + mem[t] + 32]
                    require mem[_347 + _350 + mem[t] + 32] <= test266151307()
                    _368 = mem[64]
                    require mem[64] + (32 * mem[_347 + _350 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_347 + _350 + mem[t] + 32]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[_347 + _350 + mem[t] + 32]) + 32
                    mem[_368] = _366
                    require return_data.size >= _350 + _364 + (32 * _366) + 64
                    idx = 0
                    s = _347 + _350 + _364 + 64
                    t = _368 + 32
                    while idx < _366:
                        mem[t] = mem[s]
                        _279 = mem[_146]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_368 + (32 * _366) + 32] = _368
                    _279 = mem[_146]
                    idx = _366 + 1
                    s = _347 + _350 + _364 + (32 * _366) + 96
                    t = _368 + (32 * _366) + 64
                    continue 
                require idx < mem[_146]
                mem[(32 * idx) + _146 + 32] = _347 + ceil32(return_data.size)
            _279 = mem[_146]
            idx = idx + 1
            continue 
        _290 = mem[64]
        mem[mem[64]] = 32
        _296 = mem[_146]
        mem[mem[64] + 32] = mem[_146]
        idx = 0
        s = _146 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _296) + 64
        while idx < _296:
            mem[t] = u + -_290 - 64
            _335 = mem[s]
            _340 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _335 + 32
            x = u + (32 * _340) + 32
            y = u + 32
            while v < _340:
                mem[y] = x + -u - 32
                _362 = mem[w]
                _363 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                s = _362 + 32
                t = x + 32
                idx = 0
                while idx < _363:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                v = v + 1
                w = w + 32
                x = x + (32 * _363) + 32
                y = y + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = x
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function makeArbitrage(address[] arg1, address arg2, int256[] arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _169 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] <= test266151307()
        _196 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 32
        mem[_196] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]
        require calldata.size >= arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]) + 68
        u = 0
        v = arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68
        w = _196 + 32
        while u < cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_169] = _196
        require cd[(arg1 + cd[s] + 68)] == address(cd[(arg1 + cd[s] + 68)])
        mem[_169 + 32] = cd[(arg1 + cd[s] + 68)]
        mem[_169 + 64] = cd[(arg1 + cd[s] + 100)]
        mem[t] = _169
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _336 = mem[96]
    idx = 0
    s = arg2
    while idx < _336:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 64] != 2:
            require idx < mem[96]
            _345 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            require 0 < mem[mem[mem[(32 * idx) + 128]]]
            require idx < mem[96]
            if mem[mem[mem[(32 * idx) + 128]] + 44 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                require 0 < mem[mem[mem[(32 * idx) + 128]]]
                _375 = mem[mem[mem[(32 * idx) + 128]] + 32]
                mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128]] + 44 len 20]
                require ext_code.size(address(_345))
                staticcall address(_345).getExchange(address rg1) with:
                        gas gas_remaining wei
                       args address(_375)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _388 = mem[_384]
                require mem[_384] == mem[_384 + 12 len 20]
                mem[mem[64] + 4] = s
                require ext_code.size(address(_388))
                staticcall address(_388).getTokenToEthInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_425]
                continue 
            require 1 < mem[mem[mem[(32 * idx) + 128]]]
            _377 = mem[mem[mem[(32 * idx) + 128]] + 64]
            mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128]] + 76 len 20]
            require ext_code.size(address(_345))
            staticcall address(_345).getExchange(address rg1) with:
                    gas gas_remaining wei
                   args address(_377)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _389 = mem[_385]
            require mem[_385] == mem[_385 + 12 len 20]
            mem[mem[64] + 4] = s
            require ext_code.size(address(_389))
            staticcall address(_389).getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_426]
            continue 
        require idx < mem[96]
        _348 = mem[mem[(32 * idx) + 128] + 32]
        require idx < mem[96]
        _357 = mem[mem[(32 * idx) + 128]]
        _358 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _363 = mem[_357]
        mem[mem[64] + 68] = mem[_357]
        s = 0
        t = _357 + 32
        u = mem[64] + 100
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_348))
        staticcall address(_348).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _358 + (32 * _363) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _526 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _532 = mem[_526]
        require mem[_526] <= test266151307()
        require _526 + mem[_526] + 31 < _526 + return_data.size
        _545 = mem[_526 + mem[_526]]
        require mem[_526 + mem[_526]] <= test266151307()
        require (32 * mem[_526 + mem[_526]]) + 32 >= 0 and _526 + ceil32(return_data.size) + (32 * mem[_526 + mem[_526]]) + 32 <= test266151307()
        mem[64] = _526 + ceil32(return_data.size) + (32 * mem[_526 + mem[_526]]) + 32
        mem[_526 + ceil32(return_data.size)] = _545
        require return_data.size >= _532 + (32 * _545) + 32
        s = 0
        t = _526 + _532 + 32
        u = _526 + ceil32(return_data.size) + 32
        while s < _545:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _545 - 1 < _545:
            idx = idx + 1
            s = mem[(32 * _545 - 1) + _526 + ceil32(return_data.size) + 32]
            continue 
        revert
    if s <= arg3:
        revert with 0, 'X Y Z'
    require 0 < mem[96]
    require 0 < mem[mem[mem[128]]]
    _359 = mem[mem[mem[128]] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_359))
    staticcall address(_359).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _374 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _380 = mem[_374]
    if mem[_374] < arg2:
        revert with 0, 'Insufficient balance!'
    _501 = mem[96]
    idx = 0
    s = arg2
    while idx < _501:
        require idx < mem[96]
        if 2 == mem[mem[(32 * idx) + 128] + 64]:
            require idx < mem[96]
            require 0 < mem[mem[mem[(32 * idx) + 128]]]
            _524 = mem[mem[mem[(32 * idx) + 128]] + 32]
            require idx < mem[96]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
            mem[mem[64] + 36] = s
            require ext_code.size(address(_524))
            call address(_524).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _544 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_544] == bool(mem[_544])
            if not mem[_544]:
                revert with 0, 'Could not approve token!'
            require idx < mem[96]
            _561 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            _566 = mem[mem[(32 * idx) + 128]]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _569 = mem[_566]
            mem[mem[64] + 164] = mem[_566]
            t = 0
            u = _566 + 32
            v = mem[64] + 196
            while t < _569:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 900
            require ext_code.size(address(_561))
            call address(_561).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 900, mem[mem[64] + 164 len (32 * _569) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _613 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _614 = mem[_613]
            require mem[_613] <= test266151307()
            require _613 + mem[_613] + 31 < _613 + return_data.size
            _615 = mem[_613 + mem[_613]]
            require mem[_613 + mem[_613]] <= test266151307()
            require (32 * mem[_613 + mem[_613]]) + 32 >= 0 and _613 + ceil32(return_data.size) + (32 * mem[_613 + mem[_613]]) + 32 <= test266151307()
            mem[64] = _613 + ceil32(return_data.size) + (32 * mem[_613 + mem[_613]]) + 32
            mem[_613 + ceil32(return_data.size)] = _615
            require return_data.size >= _614 + (32 * _615) + 32
            s = 0
            t = _613 + _614 + 32
            u = _613 + ceil32(return_data.size) + 32
            while s < _615:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _615 - 1 < _615:
                idx = idx + 1
                s = mem[(32 * _615 - 1) + _613 + ceil32(return_data.size) + 32]
                continue 
            revert
        require idx < mem[96]
        _516 = mem[mem[(32 * idx) + 128] + 32]
        require idx < mem[96]
        require 0 < mem[mem[mem[(32 * idx) + 128]]]
        require idx < mem[96]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == mem[mem[mem[(32 * idx) + 128]] + 44 len 20]:
            require 1 < mem[mem[mem[(32 * idx) + 128]]]
            _548 = mem[mem[mem[(32 * idx) + 128]] + 64]
            mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128]] + 76 len 20]
            require ext_code.size(address(_516))
            staticcall address(_516).getExchange(address rg1) with:
                    gas gas_remaining wei
                   args address(_548)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _564 = mem[_557]
            require mem[_557] == mem[_557 + 12 len 20]
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = block.timestamp + 900
            require ext_code.size(address(_564))
            call address(_564).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value s wei
                 gas gas_remaining wei
                args 1, block.timestamp + 900
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _591 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_591]
            continue 
        require 0 < mem[mem[mem[(32 * idx) + 128]]]
        _546 = mem[mem[mem[(32 * idx) + 128]] + 32]
        mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128]] + 44 len 20]
        require ext_code.size(address(_516))
        staticcall address(_516).getExchange(address rg1) with:
                gas gas_remaining wei
               args address(_546)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _556 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _563 = mem[_556]
        require mem[_556] == mem[_556 + 12 len 20]
        require idx < mem[96]
        require 0 < mem[mem[mem[(32 * idx) + 128]]]
        _580 = mem[mem[mem[(32 * idx) + 128]] + 32]
        mem[mem[64] + 4] = mem[_556 + 12 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_580))
        call address(_580).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _587 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_587] == bool(mem[_587])
        if not mem[_587]:
            revert with 0, 'Could not approve token!'
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = block.timestamp + 900
        require ext_code.size(address(_563))
        call address(_563).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args s, 1, block.timestamp + 900
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _599 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _600 = mem[_599]
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
           value _600 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _600
        continue 
    require 0 < mem[96]
    require 0 < mem[mem[mem[128]]]
    _510 = mem[mem[mem[128]] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_510))
    staticcall address(_510).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _533 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_533] <= _380:
        revert with 0, 'XYZ'
}



}
