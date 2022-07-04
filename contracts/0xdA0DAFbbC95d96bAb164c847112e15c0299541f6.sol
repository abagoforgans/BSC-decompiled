contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function initialize(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    revert with 0, 'METHOD NOT IMPLEMENTED'
}

function sub_25deee1e(?) payable {
    require calldata.size - 4 >= 224
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[164] == address(cd[164])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    if cd[4] != 1:
        revert with 0, 'Index not supported'
    mem[96] = 0
    mem[128] = 96
    require ('cd', 196).length >= 32
    require ('cd', 196)[0] <= test266151307()
    require ('cd', 196).length - ('cd', 196)[0] >= 64
    require cd[(cd[196] + ('cd', 196)[0] + 36)] == address(cd[(cd[196] + ('cd', 196)[0] + 36)])
    mem[160] = cd[(cd[196] + ('cd', 196)[0] + 36)]
    require cd[(cd[196] + ('cd', 196)[0] + 68)] <= test266151307()
    require cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 67 < cd[196] + ('cd', 196).length + 36
    require cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] <= test266151307()
    require (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256 >= 224 and (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256 <= test266151307()
    mem[224] = cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]
    require ('cd', 196).length + 36 >= ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 68
    s = cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 68
    t = 256
    idx = 0
    while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[192] = 224
    if not cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
        revert with 0, 'At least one pool required'
    require cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1 <= test266151307()
    mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256] = cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1
    mem[64] = (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1) + 288
    if not cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1:
        require cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1
        mem[(64 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = cd[132]
        idx = cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]
        while idx:
            require idx - 1 < mem[224]
            _1307 = mem[(32 * idx - 1) + 256]
            require idx < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
            _1313 = mem[(32 * idx) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
            if mem[(32 * idx) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] <= 0:
                revert with 0, 'UniswapV2Lib: INSUFFICIENT_OUTPUT_AMOUNT'
            require ext_code.size(mem[(32 * idx - 1) + 268 len 20])
            staticcall mem[(32 * idx - 1) + 268 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1352 = mem[_1336]
            require mem[_1336] == mem[_1336 + 18 len 14]
            _1359 = mem[_1336 + 32]
            require mem[_1336 + 32] == mem[_1336 + 50 len 14]
            require mem[_1336 + 64] == mem[_1336 + 92 len 4]
            if 0 == Mask(1, 160, mem[(32 * idx - 1) + 256]):
                if mem[_1336 + 50 len 14] <= _1313:
                    revert with 0, 'UniswapV2Lib: reserveOut should be greater than amountOut'
                if not mem[_1336 + 18 len 14]:
                    _1550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1550] = 30
                    mem[_1550 + 32] = 'SafeMath: subtraction overflow'
                    if _1313 <= Mask(112, 0, _1359):
                        require Mask(112, 0, _1359) - _1313
                        if (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161) / Mask(112, 0, _1359) - _1313 != Mask(95, 0, _1307) >> 161:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)
                        if (0 / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1 < 0 / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                        mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _1623 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1623 + 68] = mem[idx + _1550 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1623 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1623 + -mem[64] + 100
                if _1313 * mem[_1336 + 18 len 14] / mem[_1336 + 18 len 14] != _1313:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not _1313 * mem[_1336 + 18 len 14]:
                    _1622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1622] = 30
                    mem[_1622 + 32] = 'SafeMath: subtraction overflow'
                    if _1313 <= Mask(112, 0, _1359):
                        require Mask(112, 0, _1359) - _1313
                        if (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161) / Mask(112, 0, _1359) - _1313 != Mask(95, 0, _1307) >> 161:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)
                        if (0 / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1 < 0 / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                        mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _1709 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1709 + 68] = mem[idx + _1622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1709 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1709 + -mem[64] + 100
                if 10000 * _1313 * mem[_1336 + 18 len 14] / _1313 * mem[_1336 + 18 len 14] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1708] = 30
                mem[_1708 + 32] = 'SafeMath: subtraction overflow'
                if _1313 <= Mask(112, 0, _1359):
                    require Mask(112, 0, _1359) - _1313
                    if (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161) / Mask(112, 0, _1359) - _1313 != Mask(95, 0, _1307) >> 161:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)
                    if (10000 * _1313 * Mask(112, 0, _1352) / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1 < 10000 * _1313 * Mask(112, 0, _1352) / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                    mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (10000 * _1313 * Mask(112, 0, _1352) / (Mask(112, 0, _1359) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1762 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1762 + 68] = mem[idx + _1708 + 32]
                    idx = idx + 32
                    continue 
                mem[_1762 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1762 + -mem[64] + 100
            if mem[_1336 + 18 len 14] <= _1313:
                revert with 0, 'UniswapV2Lib: reserveOut should be greater than amountOut'
            if not mem[_1336 + 50 len 14]:
                _1551 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1551] = 30
                mem[_1551 + 32] = 'SafeMath: subtraction overflow'
                if _1313 <= Mask(112, 0, _1352):
                    require Mask(112, 0, _1352) - _1313
                    if (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161) / Mask(112, 0, _1352) - _1313 != Mask(95, 0, _1307) >> 161:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)
                    if (0 / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1 < 0 / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                    mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1625 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1625 + 68] = mem[idx + _1551 + 32]
                    idx = idx + 32
                    continue 
                mem[_1625 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1625 + -mem[64] + 100
            if _1313 * mem[_1336 + 50 len 14] / mem[_1336 + 50 len 14] != _1313:
                revert with 0, 'SafeMath: multiplication overflow'
            if not _1313 * mem[_1336 + 50 len 14]:
                _1624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1624] = 30
                mem[_1624 + 32] = 'SafeMath: subtraction overflow'
                if _1313 <= Mask(112, 0, _1352):
                    require Mask(112, 0, _1352) - _1313
                    if (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161) / Mask(112, 0, _1352) - _1313 != Mask(95, 0, _1307) >> 161:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)
                    if (0 / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1 < 0 / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                    mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1711 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1711 + 68] = mem[idx + _1624 + 32]
                    idx = idx + 32
                    continue 
                mem[_1711 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1711 + -mem[64] + 100
            if 10000 * _1313 * mem[_1336 + 50 len 14] / _1313 * mem[_1336 + 50 len 14] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            _1710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1710] = 30
            mem[_1710 + 32] = 'SafeMath: subtraction overflow'
            if _1313 <= Mask(112, 0, _1352):
                require Mask(112, 0, _1352) - _1313
                if (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161) / Mask(112, 0, _1352) - _1313 != Mask(95, 0, _1307) >> 161:
                    revert with 0, 'SafeMath: multiplication overflow'
                require (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)
                if (10000 * _1313 * Mask(112, 0, _1359) / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1 < 10000 * _1313 * Mask(112, 0, _1359) / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (10000 * _1313 * Mask(112, 0, _1359) / (Mask(112, 0, _1352) * Mask(95, 0, _1307) >> 161) - (_1313 * Mask(95, 0, _1307) >> 161)) + 1
                idx = idx - 1
                continue 
            _1764 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1764 + 68] = mem[idx + _1710 + 32]
                idx = idx + 32
                continue 
            mem[_1764 + 98] = 0
            revert with memory
              from mem[64]
               len _1764 + -mem[64] + 100
        require 0 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
        _1306 = mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
        if mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] > cd[100]:
            revert with 0, 'UniswapV2Router: INSUFFICIENT_INPUT_AMOUNT'
        if address(cd[36]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[(cd[196] + ('cd', 196)[0] + 36)]))
            call address(cd[(cd[196] + ('cd', 196)[0] + 36)]).deposit() with:
               value _1306 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[224]
            mem[mem[64] + 4] = mem[268 len 20]
            mem[mem[64] + 36] = _1306
            require ext_code.size(address(cd[(cd[196] + ('cd', 196)[0] + 36)]))
            call address(cd[(cd[196] + ('cd', 196)[0] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1306
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1356] == bool(mem[_1356])
            require mem[_1356]
            idx = 0
            while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                require idx < mem[224]
                _1958 = mem[(32 * idx) + 256]
                require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                    _1965 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                    if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _1965
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1958))
                        call address(_1958).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1965, address(this.address), 128, 0
                    else:
                        require idx + 1 < mem[224]
                        _2007 = mem[(32 * idx + 1) + 256]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _1965
                        mem[mem[64] + 68] = address(_2007)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1958))
                        call address(_1958).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1965, address(_2007), 128, 0
                else:
                    _1966 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                    if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1966
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1958))
                        call address(_1958).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1966, 0, address(this.address), 128, 0
                    else:
                        require idx + 1 < mem[224]
                        _2009 = mem[(32 * idx + 1) + 256]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1966
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_2009)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1958))
                        call address(_1958).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1966, 0, address(_2009), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require 0 < mem[224]
            _1334 = mem[64]
            mem[mem[64] + 36] = mem[268 len 20]
            mem[mem[64] + 68] = _1306
            _1344 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1344 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1350 = mem[_1344]
            mem[_1334 + 100 len ceil32(mem[_1344])] = mem[_1344 + 32 len ceil32(mem[_1344])]
            if ceil32(_1350) <= _1350:
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1350 + _1334 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2417 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2481 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2481
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2417))
                                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2481, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2561 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2481
                                    mem[mem[64] + 68] = address(_2561)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2417))
                                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2481, address(_2561), 128, 0
                            else:
                                _2482 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2482
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2417))
                                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2482, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2563 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2482
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2563)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2417))
                                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2482, 0, address(_2563), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2419 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2484 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2484
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2419))
                                    call address(_2419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2484, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2565 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2484
                                    mem[mem[64] + 68] = address(_2565)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2419))
                                    call address(_2419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2484, address(_2565), 128, 0
                            else:
                                _2485 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2485
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2419))
                                    call address(_2419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2485, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2567 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2485
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2567)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2419))
                                    call address(_2419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2485, 0, address(_2567), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    _1982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1982] = return_data.size
                    mem[_1982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2421 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2487 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2487
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2421))
                                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2487, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2569 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2487
                                    mem[mem[64] + 68] = address(_2569)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2421))
                                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2487, address(_2569), 128, 0
                            else:
                                _2488 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2488
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2421))
                                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2488, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2571 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2488
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2571)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2421))
                                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2488, 0, address(_2571), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_1982 + 32] == bool(mem[_1982 + 32])
                        if not mem[_1982 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2423 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2490 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2490
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2423))
                                    call address(_2423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2490, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2573 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2490
                                    mem[mem[64] + 68] = address(_2573)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2423))
                                    call address(_2423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2490, address(_2573), 128, 0
                            else:
                                _2491 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2491
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2423))
                                    call address(_2423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2491, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2575 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2491
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2575)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2423))
                                    call address(_2423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2491, 0, address(_2575), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[_1334 + _1350 + 100] = 0
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1350 + _1334 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2425 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2493 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2493
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2425))
                                    call address(_2425).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2493, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2577 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2493
                                    mem[mem[64] + 68] = address(_2577)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2425))
                                    call address(_2425).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2493, address(_2577), 128, 0
                            else:
                                _2494 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2494
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2425))
                                    call address(_2425).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2494, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2579 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2494
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2579)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2425))
                                    call address(_2425).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2494, 0, address(_2579), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2427 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2496 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2496
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2427))
                                    call address(_2427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2496, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2581 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2496
                                    mem[mem[64] + 68] = address(_2581)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2427))
                                    call address(_2427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2496, address(_2581), 128, 0
                            else:
                                _2497 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2497
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2427))
                                    call address(_2427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2497, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2583 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2497
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2583)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2427))
                                    call address(_2427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2497, 0, address(_2583), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    _1998 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1998] = return_data.size
                    mem[_1998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2429 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2499 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2499
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2429))
                                    call address(_2429).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2499, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2585 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2499
                                    mem[mem[64] + 68] = address(_2585)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2429))
                                    call address(_2429).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2499, address(_2585), 128, 0
                            else:
                                _2500 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2500
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2429))
                                    call address(_2429).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2500, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2587 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2500
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2587)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2429))
                                    call address(_2429).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2500, 0, address(_2587), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_1998 + 32] == bool(mem[_1998 + 32])
                        if not mem[_1998 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2431 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2502 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2502
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2431))
                                    call address(_2431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2502, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2589 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2502
                                    mem[mem[64] + 68] = address(_2589)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2431))
                                    call address(_2431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2502, address(_2589), 128, 0
                            else:
                                _2503 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2503
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2431))
                                    call address(_2431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2503, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2591 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2503
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2591)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2431))
                                    call address(_2431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2503, 0, address(_2591), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            if address(cd[(cd[196] + ('cd', 196)[0] + 36)]):
                require ext_code.size(address(cd[(cd[196] + ('cd', 196)[0] + 36)]))
                call address(cd[(cd[196] + ('cd', 196)[0] + 36)]).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[132]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288 len 32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1] = call.data[calldata.size len 32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1]
        require cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)] + 1
        mem[(64 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = cd[132]
        idx = cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]
        while idx:
            require idx - 1 < mem[224]
            _1310 = mem[(32 * idx - 1) + 256]
            require idx < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
            _1315 = mem[(32 * idx) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
            if mem[(32 * idx) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] <= 0:
                revert with 0, 'UniswapV2Lib: INSUFFICIENT_OUTPUT_AMOUNT'
            require ext_code.size(mem[(32 * idx - 1) + 268 len 20])
            staticcall mem[(32 * idx - 1) + 268 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1355 = mem[_1339]
            require mem[_1339] == mem[_1339 + 18 len 14]
            _1361 = mem[_1339 + 32]
            require mem[_1339 + 32] == mem[_1339 + 50 len 14]
            require mem[_1339 + 64] == mem[_1339 + 92 len 4]
            if 0 == Mask(1, 160, _1310):
                if mem[_1339 + 50 len 14] <= _1315:
                    revert with 0, 'UniswapV2Lib: reserveOut should be greater than amountOut'
                if not mem[_1339 + 18 len 14]:
                    _1560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1560] = 30
                    mem[_1560 + 32] = 'SafeMath: subtraction overflow'
                    if _1315 <= Mask(112, 0, _1361):
                        require Mask(112, 0, _1361) - _1315
                        if (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161) / Mask(112, 0, _1361) - _1315 != Mask(95, 0, _1310) >> 161:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)
                        if (0 / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1 < 0 / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                        mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _1647 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1647 + 68] = mem[idx + _1560 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1647 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1647 + -mem[64] + 100
                if _1315 * mem[_1339 + 18 len 14] / mem[_1339 + 18 len 14] != _1315:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not _1315 * mem[_1339 + 18 len 14]:
                    _1646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1646] = 30
                    mem[_1646 + 32] = 'SafeMath: subtraction overflow'
                    if _1315 <= Mask(112, 0, _1361):
                        require Mask(112, 0, _1361) - _1315
                        if (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161) / Mask(112, 0, _1361) - _1315 != Mask(95, 0, _1310) >> 161:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)
                        if (0 / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1 < 0 / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                        mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _1727 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1727 + 68] = mem[idx + _1646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1727 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1727 + -mem[64] + 100
                if 10000 * _1315 * mem[_1339 + 18 len 14] / _1315 * mem[_1339 + 18 len 14] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1726 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1726] = 30
                mem[_1726 + 32] = 'SafeMath: subtraction overflow'
                if _1315 <= Mask(112, 0, _1361):
                    require Mask(112, 0, _1361) - _1315
                    if (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161) / Mask(112, 0, _1361) - _1315 != Mask(95, 0, _1310) >> 161:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)
                    if (10000 * _1315 * Mask(112, 0, _1355) / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1 < 10000 * _1315 * Mask(112, 0, _1355) / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                    mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (10000 * _1315 * Mask(112, 0, _1355) / (Mask(112, 0, _1361) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1778 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1778 + 68] = mem[idx + _1726 + 32]
                    idx = idx + 32
                    continue 
                mem[_1778 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1778 + -mem[64] + 100
            if mem[_1339 + 18 len 14] <= _1315:
                revert with 0, 'UniswapV2Lib: reserveOut should be greater than amountOut'
            if not mem[_1339 + 50 len 14]:
                _1561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1561] = 30
                mem[_1561 + 32] = 'SafeMath: subtraction overflow'
                if _1315 <= Mask(112, 0, _1355):
                    require Mask(112, 0, _1355) - _1315
                    if (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161) / Mask(112, 0, _1355) - _1315 != Mask(95, 0, _1310) >> 161:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)
                    if (0 / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1 < 0 / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                    mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1649 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1649 + 68] = mem[idx + _1561 + 32]
                    idx = idx + 32
                    continue 
                mem[_1649 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1649 + -mem[64] + 100
            if _1315 * mem[_1339 + 50 len 14] / mem[_1339 + 50 len 14] != _1315:
                revert with 0, 'SafeMath: multiplication overflow'
            if not _1315 * mem[_1339 + 50 len 14]:
                _1648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1648] = 30
                mem[_1648 + 32] = 'SafeMath: subtraction overflow'
                if _1315 <= Mask(112, 0, _1355):
                    require Mask(112, 0, _1355) - _1315
                    if (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161) / Mask(112, 0, _1355) - _1315 != Mask(95, 0, _1310) >> 161:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)
                    if (0 / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1 < 0 / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                    mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (0 / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1729 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1729 + 68] = mem[idx + _1648 + 32]
                    idx = idx + 32
                    continue 
                mem[_1729 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1729 + -mem[64] + 100
            if 10000 * _1315 * mem[_1339 + 50 len 14] / _1315 * mem[_1339 + 50 len 14] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            _1728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1728] = 30
            mem[_1728 + 32] = 'SafeMath: subtraction overflow'
            if _1315 <= Mask(112, 0, _1355):
                require Mask(112, 0, _1355) - _1315
                if (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161) / Mask(112, 0, _1355) - _1315 != Mask(95, 0, _1310) >> 161:
                    revert with 0, 'SafeMath: multiplication overflow'
                require (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)
                if (10000 * _1315 * Mask(112, 0, _1361) / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1 < 10000 * _1315 * Mask(112, 0, _1361) / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                mem[(32 * idx - 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] = (10000 * _1315 * Mask(112, 0, _1361) / (Mask(112, 0, _1355) * Mask(95, 0, _1310) >> 161) - (_1315 * Mask(95, 0, _1310) >> 161)) + 1
                idx = idx - 1
                continue 
            _1780 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1780 + 68] = mem[idx + _1728 + 32]
                idx = idx + 32
                continue 
            mem[_1780 + 98] = 0
            revert with memory
              from mem[64]
               len _1780 + -mem[64] + 100
        require 0 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
        _1309 = mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
        if mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288] > cd[100]:
            revert with 0, 'UniswapV2Router: INSUFFICIENT_INPUT_AMOUNT'
        if address(cd[36]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[(cd[196] + ('cd', 196)[0] + 36)]))
            call address(cd[(cd[196] + ('cd', 196)[0] + 36)]).deposit() with:
               value _1309 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[224]
            mem[mem[64] + 4] = mem[268 len 20]
            mem[mem[64] + 36] = _1309
            require ext_code.size(address(cd[(cd[196] + ('cd', 196)[0] + 36)]))
            call address(cd[(cd[196] + ('cd', 196)[0] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1309
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1357] == bool(mem[_1357])
            require mem[_1357]
            idx = 0
            while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                require idx < mem[224]
                _1959 = mem[(32 * idx) + 256]
                require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                    _1974 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                    if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _1974
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1959))
                        call address(_1959).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1974, address(this.address), 128, 0
                    else:
                        require idx + 1 < mem[224]
                        _2013 = mem[(32 * idx + 1) + 256]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _1974
                        mem[mem[64] + 68] = address(_2013)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1959))
                        call address(_1959).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1974, address(_2013), 128, 0
                else:
                    _1975 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                    if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1975
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1959))
                        call address(_1959).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1975, 0, address(this.address), 128, 0
                    else:
                        require idx + 1 < mem[224]
                        _2015 = mem[(32 * idx + 1) + 256]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1975
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_2015)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_1959))
                        call address(_1959).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1975, 0, address(_2015), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require 0 < mem[224]
            _1337 = mem[64]
            mem[mem[64] + 36] = mem[268 len 20]
            mem[mem[64] + 68] = _1309
            _1347 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1347 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1353 = mem[_1347]
            mem[_1337 + 100 len ceil32(mem[_1347])] = mem[_1347 + 32 len ceil32(mem[_1347])]
            if ceil32(_1353) <= _1353:
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1353 + _1337 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2433 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2505 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2505
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2433))
                                    call address(_2433).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2505, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2593 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2505
                                    mem[mem[64] + 68] = address(_2593)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2433))
                                    call address(_2433).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2505, address(_2593), 128, 0
                            else:
                                _2506 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2506
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2433))
                                    call address(_2433).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2506, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2595 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2506
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2595)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2433))
                                    call address(_2433).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2506, 0, address(_2595), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2435 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2508 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2508
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2435))
                                    call address(_2435).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2508, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2597 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2508
                                    mem[mem[64] + 68] = address(_2597)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2435))
                                    call address(_2435).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2508, address(_2597), 128, 0
                            else:
                                _2509 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2509
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2435))
                                    call address(_2435).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2509, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2599 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2509
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2599)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2435))
                                    call address(_2435).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2509, 0, address(_2599), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    _1990 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1990] = return_data.size
                    mem[_1990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2437 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2511 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2511
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2437))
                                    call address(_2437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2511, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2601 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2511
                                    mem[mem[64] + 68] = address(_2601)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2437))
                                    call address(_2437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2511, address(_2601), 128, 0
                            else:
                                _2512 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2512
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2437))
                                    call address(_2437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2512, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2603 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2512
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2603)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2437))
                                    call address(_2437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2512, 0, address(_2603), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_1990 + 32] == bool(mem[_1990 + 32])
                        if not mem[_1990 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2439 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2514 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2514
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2439))
                                    call address(_2439).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2514, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2605 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2514
                                    mem[mem[64] + 68] = address(_2605)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2439))
                                    call address(_2439).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2514, address(_2605), 128, 0
                            else:
                                _2515 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2515
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2439))
                                    call address(_2439).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2515, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2607 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2515
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2607)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2439))
                                    call address(_2439).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2515, 0, address(_2607), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[_1337 + _1353 + 100] = 0
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1353 + _1337 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2441 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2517 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2517
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2441))
                                    call address(_2441).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2517, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2609 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2517
                                    mem[mem[64] + 68] = address(_2609)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2441))
                                    call address(_2441).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2517, address(_2609), 128, 0
                            else:
                                _2518 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2518
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2441))
                                    call address(_2441).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2518, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2611 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2518
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2611)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2441))
                                    call address(_2441).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2518, 0, address(_2611), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2443 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2520 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2520
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2443))
                                    call address(_2443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2520, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2613 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2520
                                    mem[mem[64] + 68] = address(_2613)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2443))
                                    call address(_2443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2520, address(_2613), 128, 0
                            else:
                                _2521 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2521
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2443))
                                    call address(_2443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2521, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2615 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2521
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2615)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2443))
                                    call address(_2443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2521, 0, address(_2615), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    _2001 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2001] = return_data.size
                    mem[_2001 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2445 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2523 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2523
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2445))
                                    call address(_2445).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2523, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2617 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2523
                                    mem[mem[64] + 68] = address(_2617)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2445))
                                    call address(_2445).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2523, address(_2617), 128, 0
                            else:
                                _2524 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2524
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2445))
                                    call address(_2445).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2524, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2619 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2524
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2619)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2445))
                                    call address(_2445).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2524, 0, address(_2619), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_2001 + 32] == bool(mem[_2001 + 32])
                        if not mem[_2001 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        idx = 0
                        while idx < cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                            require idx < mem[224]
                            _2447 = mem[(32 * idx) + 256]
                            require idx + 1 < mem[(32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 256]
                            if 0 == Mask(1, 160, mem[(32 * idx) + 256]):
                                _2526 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2526
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2447))
                                    call address(_2447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2526, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2621 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _2526
                                    mem[mem[64] + 68] = address(_2621)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2447))
                                    call address(_2447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2526, address(_2621), 128, 0
                            else:
                                _2527 = mem[(32 * idx + 1) + (32 * cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]) + 288]
                                if idx + 1 == cd[(cd[196] + ('cd', 196)[0] + cd[(cd[196] + ('cd', 196)[0] + 68)] + 36)]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2527
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2447))
                                    call address(_2447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2527, 0, address(this.address), 128, 0
                                else:
                                    require idx + 1 < mem[224]
                                    _2623 = mem[(32 * idx + 1) + 256]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2527
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2623)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2447))
                                    call address(_2447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2527, 0, address(_2623), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            if address(cd[(cd[196] + ('cd', 196)[0] + 36)]):
                require ext_code.size(address(cd[(cd[196] + ('cd', 196)[0] + 36)]))
                call address(cd[(cd[196] + ('cd', 196)[0] + 36)]).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[132]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
