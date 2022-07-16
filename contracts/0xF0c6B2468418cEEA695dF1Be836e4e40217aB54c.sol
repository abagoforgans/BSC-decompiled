contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_dd7ed380(?)
#
address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
  stop
}

function sub_b82ea590(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == stor2
    stor3 = address(arg1)
    stor0 = address(arg2)
    stor1 = address(arg3)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawEth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor2
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6aafe0cf(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require msg.sender == stor2
    require ext_code.size(stor0)
    staticcall stor0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(arg1) < stor1:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg3, 0, address(this.address), 128, 20, Mask(160, 32, address(arg2), 0) >> 32, 0
    else:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg3, address(this.address), 128, 20, Mask(160, 96, address(arg2), 0, 0) >> 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPairs(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor2
    require ext_code.size(stor0)
    staticcall stor0.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require arg2 <= test266151307()
    mem[ceil32(return_data.size) + 96] = arg2
    mem[64] = ceil32(return_data.size) + (32 * arg2) + 128
    if not arg2:
        if arg2 < ext_call.return_data[0] - arg1:
            idx = 0
            s = 0
            while idx < arg2:
                mem[mem[64] + 4] = arg1 + idx
                require ext_code.size(stor0)
                staticcall stor0.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _191 = mem[_175]
                require mem[_175] == mem[_175 + 12 len 20]
                require ext_code.size(mem[_175 + 12 len 20])
                staticcall mem[_175 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _244 = mem[_236]
                require mem[_236] == mem[_236 + 18 len 14]
                _260 = mem[_236 + 32]
                require mem[_236 + 32] == mem[_236 + 50 len 14]
                require mem[_236 + 64] == mem[_236 + 92 len 4]
                if mem[_236 + 18 len 14] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                if mem[_236 + 50 len 14] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                _288 = mem[64]
                mem[64] = mem[64] + 160
                mem[_288] = address(_191)
                require ext_code.size(address(_191))
                staticcall address(_191).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _294 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_294] == mem[_294 + 12 len 20]
                mem[_288 + 32] = mem[_294 + 12 len 20]
                require ext_code.size(address(_191))
                staticcall address(_191).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_312] == mem[_312 + 12 len 20]
                mem[_288 + 64] = mem[_312 + 12 len 20]
                mem[_288 + 96] = Mask(112, 0, _244)
                mem[_288 + 128] = Mask(112, 0, _260)
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _288
                idx = idx + 1
                s = s + 1
                continue 
            require s <= test266151307()
            _154 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                idx = 0
                s = 0
                while idx < arg2:
                    require idx < mem[ceil32(return_data.size) + 96]
                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < mem[ceil32(return_data.size) + 96]
                    require s < mem[_154]
                    mem[(32 * s) + _154 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _333 = mem[64]
                mem[mem[64]] = 32
                _345 = mem[_154]
                mem[mem[64] + 32] = mem[_154]
                idx = 0
                s = _154 + 32
                t = mem[64] + 64
                while idx < _345:
                    _465 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_465 + 44 len 20]
                    mem[t + 64] = mem[_465 + 76 len 20]
                    mem[t + 96] = mem[_465 + 114 len 14]
                    mem[t + 128] = mem[_465 + 146 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                return memory
                  from mem[64]
                   len _333 + (160 * _345) + -mem[64] + 64
            mem[64] = _154 + (32 * s) + 192
            mem[_154 + (32 * s) + 32] = 0
            mem[_154 + (32 * s) + 64] = 0
            mem[_154 + (32 * s) + 96] = 0
            mem[_154 + (32 * s) + 128] = 0
            mem[_154 + (32 * s) + 160] = 0
            mem[var48001] = _154 + (32 * s) + 32
            t = var48001
            idx = var48002
            while idx - 1:
                mem[64] = mem[64] + 160
                mem[_154 + (32 * s) + 32] = 0
                mem[_154 + (32 * s) + 64] = 0
                mem[_154 + (32 * s) + 96] = 0
                mem[_154 + (32 * s) + 128] = 0
                mem[_154 + (32 * s) + 160] = 0
                mem[t + 32] = _154 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0
            while idx < arg2:
                require idx < mem[ceil32(return_data.size) + 96]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[ceil32(return_data.size) + 96]
                require s < mem[_154]
                mem[(32 * s) + _154 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                idx = idx + 1
                s = s + 1
                continue 
            _619 = mem[64]
            mem[mem[64]] = 32
            _643 = mem[_154]
            mem[mem[64] + 32] = mem[_154]
            idx = 0
            s = _154 + 32
            t = mem[64] + 64
            while idx < _643:
                _707 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_707 + 44 len 20]
                mem[t + 64] = mem[_707 + 76 len 20]
                mem[t + 96] = mem[_707 + 114 len 14]
                mem[t + 128] = mem[_707 + 146 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _619 + (160 * _643) + -mem[64] + 64
        idx = 0
        s = 0
        while idx < ext_call.return_data[0] - arg1:
            mem[mem[64] + 4] = arg1 + idx
            require ext_code.size(stor0)
            staticcall stor0.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg1 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_177]
            require mem[_177] == mem[_177 + 12 len 20]
            require ext_code.size(mem[_177 + 12 len 20])
            staticcall mem[_177 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _245 = mem[_239]
            require mem[_239] == mem[_239 + 18 len 14]
            _261 = mem[_239 + 32]
            require mem[_239 + 32] == mem[_239 + 50 len 14]
            require mem[_239 + 64] == mem[_239 + 92 len 4]
            if mem[_239 + 18 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            if mem[_239 + 50 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            _291 = mem[64]
            mem[64] = mem[64] + 160
            mem[_291] = address(_193)
            require ext_code.size(address(_193))
            staticcall address(_193).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _295 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_295] == mem[_295 + 12 len 20]
            mem[_291 + 32] = mem[_295 + 12 len 20]
            require ext_code.size(address(_193))
            staticcall address(_193).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_313] == mem[_313 + 12 len 20]
            mem[_291 + 64] = mem[_313 + 12 len 20]
            mem[_291 + 96] = Mask(112, 0, _245)
            mem[_291 + 128] = Mask(112, 0, _261)
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _291
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _155 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            idx = 0
            s = 0
            while idx < arg2:
                require idx < mem[ceil32(return_data.size) + 96]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[ceil32(return_data.size) + 96]
                require s < mem[_155]
                mem[(32 * s) + _155 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                idx = idx + 1
                s = s + 1
                continue 
            _336 = mem[64]
            mem[mem[64]] = 32
            _346 = mem[_155]
            mem[mem[64] + 32] = mem[_155]
            idx = 0
            s = _155 + 32
            t = mem[64] + 64
            while idx < _346:
                _466 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_466 + 44 len 20]
                mem[t + 64] = mem[_466 + 76 len 20]
                mem[t + 96] = mem[_466 + 114 len 14]
                mem[t + 128] = mem[_466 + 146 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _336 + (160 * _346) + -mem[64] + 64
        mem[64] = _155 + (32 * s) + 192
        mem[_155 + (32 * s) + 32] = 0
        mem[_155 + (32 * s) + 64] = 0
        mem[_155 + (32 * s) + 96] = 0
        mem[_155 + (32 * s) + 128] = 0
        mem[_155 + (32 * s) + 160] = 0
        mem[var48001] = _155 + (32 * s) + 32
        t = var48001
        idx = var48002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_155 + (32 * s) + 32] = 0
            mem[_155 + (32 * s) + 64] = 0
            mem[_155 + (32 * s) + 96] = 0
            mem[_155 + (32 * s) + 128] = 0
            mem[_155 + (32 * s) + 160] = 0
            mem[t + 32] = _155 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < arg2:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[ceil32(return_data.size) + 96]
            require s < mem[_155]
            mem[(32 * s) + _155 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            idx = idx + 1
            s = s + 1
            continue 
        _622 = mem[64]
        mem[mem[64]] = 32
        _644 = mem[_155]
        mem[mem[64] + 32] = mem[_155]
        idx = 0
        s = _155 + 32
        t = mem[64] + 64
        while idx < _644:
            _708 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_708 + 44 len 20]
            mem[t + 64] = mem[_708 + 76 len 20]
            mem[t + 96] = mem[_708 + 114 len 14]
            mem[t + 128] = mem[_708 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _622 + (160 * _644) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg2) + 288
    mem[ceil32(return_data.size) + (32 * arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * arg2) + 256] = 0
    mem[var39001] = ceil32(return_data.size) + (32 * arg2) + 128
    s = var39001
    idx = var39002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg2) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if arg2 < ext_call.return_data[0] - arg1:
        idx = 0
        s = 0
        while idx < arg2:
            mem[mem[64] + 4] = arg1 + idx
            require ext_code.size(stor0)
            staticcall stor0.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg1 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _524 = mem[_512]
            require mem[_512] == mem[_512 + 12 len 20]
            require ext_code.size(mem[_512 + 12 len 20])
            staticcall mem[_512 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _567 = mem[_557]
            require mem[_557] == mem[_557 + 18 len 14]
            _575 = mem[_557 + 32]
            require mem[_557 + 32] == mem[_557 + 50 len 14]
            require mem[_557 + 64] == mem[_557 + 92 len 4]
            if mem[_557 + 18 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            if mem[_557 + 50 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            _593 = mem[64]
            mem[64] = mem[64] + 160
            mem[_593] = address(_524)
            require ext_code.size(address(_524))
            staticcall address(_524).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_599] == mem[_599 + 12 len 20]
            mem[_593 + 32] = mem[_599 + 12 len 20]
            require ext_code.size(address(_524))
            staticcall address(_524).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_607] == mem[_607 + 12 len 20]
            mem[_593 + 64] = mem[_607 + 12 len 20]
            mem[_593 + 96] = Mask(112, 0, _567)
            mem[_593 + 128] = Mask(112, 0, _575)
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _593
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _469 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            idx = 0
            s = 0
            while idx < arg2:
                require idx < mem[ceil32(return_data.size) + 96]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[ceil32(return_data.size) + 96]
                require s < mem[_469]
                mem[(32 * s) + _469 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                idx = idx + 1
                s = s + 1
                continue 
            _625 = mem[64]
            mem[mem[64]] = 32
            _645 = mem[_469]
            mem[mem[64] + 32] = mem[_469]
            idx = 0
            s = _469 + 32
            t = mem[64] + 64
            while idx < _645:
                _709 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_709 + 44 len 20]
                mem[t + 64] = mem[_709 + 76 len 20]
                mem[t + 96] = mem[_709 + 114 len 14]
                mem[t + 128] = mem[_709 + 146 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _625 + (160 * _645) + -mem[64] + 64
        mem[64] = _469 + (32 * s) + 192
        mem[_469 + (32 * s) + 32] = 0
        mem[_469 + (32 * s) + 64] = 0
        mem[_469 + (32 * s) + 96] = 0
        mem[_469 + (32 * s) + 128] = 0
        mem[_469 + (32 * s) + 160] = 0
        mem[var55001] = _469 + (32 * s) + 32
        t = var55001
        idx = var55002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_469 + (32 * s) + 32] = 0
            mem[_469 + (32 * s) + 64] = 0
            mem[_469 + (32 * s) + 96] = 0
            mem[_469 + (32 * s) + 128] = 0
            mem[_469 + (32 * s) + 160] = 0
            mem[t + 32] = _469 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < arg2:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[ceil32(return_data.size) + 96]
            require s < mem[_469]
            mem[(32 * s) + _469 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            idx = idx + 1
            s = s + 1
            continue 
        _767 = mem[64]
        mem[mem[64]] = 32
        _779 = mem[_469]
        mem[mem[64] + 32] = mem[_469]
        idx = 0
        s = _469 + 32
        t = mem[64] + 64
        while idx < _779:
            _795 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_795 + 44 len 20]
            mem[t + 64] = mem[_795 + 76 len 20]
            mem[t + 96] = mem[_795 + 114 len 14]
            mem[t + 128] = mem[_795 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _767 + (160 * _779) + -mem[64] + 64
    idx = 0
    s = 0
    while idx < ext_call.return_data[0] - arg1:
        mem[mem[64] + 4] = arg1 + idx
        require ext_code.size(stor0)
        staticcall stor0.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (arg1 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _514 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _526 = mem[_514]
        require mem[_514] == mem[_514 + 12 len 20]
        require ext_code.size(mem[_514 + 12 len 20])
        staticcall mem[_514 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _560 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _568 = mem[_560]
        require mem[_560] == mem[_560 + 18 len 14]
        _576 = mem[_560 + 32]
        require mem[_560 + 32] == mem[_560 + 50 len 14]
        require mem[_560 + 64] == mem[_560 + 92 len 4]
        if mem[_560 + 18 len 14] <= 0:
            idx = idx + 1
            s = s
            continue 
        if mem[_560 + 50 len 14] <= 0:
            idx = idx + 1
            s = s
            continue 
        _596 = mem[64]
        mem[64] = mem[64] + 160
        mem[_596] = address(_526)
        require ext_code.size(address(_526))
        staticcall address(_526).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _600 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_600] == mem[_600 + 12 len 20]
        mem[_596 + 32] = mem[_600 + 12 len 20]
        require ext_code.size(address(_526))
        staticcall address(_526).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _608 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_608] == mem[_608 + 12 len 20]
        mem[_596 + 64] = mem[_608 + 12 len 20]
        mem[_596 + 96] = Mask(112, 0, _568)
        mem[_596 + 128] = Mask(112, 0, _576)
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _596
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _470 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < arg2:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[ceil32(return_data.size) + 96]
            require s < mem[_470]
            mem[(32 * s) + _470 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            idx = idx + 1
            s = s + 1
            continue 
        _628 = mem[64]
        mem[mem[64]] = 32
        _646 = mem[_470]
        mem[mem[64] + 32] = mem[_470]
        idx = 0
        s = _470 + 32
        t = mem[64] + 64
        while idx < _646:
            _710 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_710 + 44 len 20]
            mem[t + 64] = mem[_710 + 76 len 20]
            mem[t + 96] = mem[_710 + 114 len 14]
            mem[t + 128] = mem[_710 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _628 + (160 * _646) + -mem[64] + 64
    mem[64] = _470 + (32 * s) + 192
    mem[_470 + (32 * s) + 32] = 0
    mem[_470 + (32 * s) + 64] = 0
    mem[_470 + (32 * s) + 96] = 0
    mem[_470 + (32 * s) + 128] = 0
    mem[_470 + (32 * s) + 160] = 0
    mem[var55001] = _470 + (32 * s) + 32
    t = var55001
    idx = var55002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_470 + (32 * s) + 32] = 0
        mem[_470 + (32 * s) + 64] = 0
        mem[_470 + (32 * s) + 96] = 0
        mem[_470 + (32 * s) + 128] = 0
        mem[_470 + (32 * s) + 160] = 0
        mem[t + 32] = _470 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < arg2:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 114 len 14] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[ceil32(return_data.size) + 96]
        require s < mem[_470]
        mem[(32 * s) + _470 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        idx = idx + 1
        s = s + 1
        continue 
    _770 = mem[64]
    mem[mem[64]] = 32
    _780 = mem[_470]
    mem[mem[64] + 32] = mem[_470]
    idx = 0
    s = _470 + 32
    t = mem[64] + 64
    while idx < _780:
        _796 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_796 + 44 len 20]
        mem[t + 64] = mem[_796 + 76 len 20]
        mem[t + 96] = mem[_796 + 114 len 14]
        mem[t + 128] = mem[_796 + 146 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _770 + (160 * _780) + -mem[64] + 64
}



}
