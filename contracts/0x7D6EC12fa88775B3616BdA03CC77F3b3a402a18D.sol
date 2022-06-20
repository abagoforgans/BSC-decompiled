contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_3fafeefb(?) {
    mem[96] = 42
    mem[128] = 'QGQ956A539A419345f7232fE74e2F6b0'
    mem[160] = 'E3a75Ab440'
    mem[192] = 1
    mem[224] = '0'
    mem[256] = 42
    mem[64] = 352
    mem[288 len 42] = code.data[1852 len 42]
    idx = 0
    while idx < 42:
        require idx < mem[96]
        require idx < mem[256]
        mem[idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if not idx:
            require 0 < mem[192]
            require idx < mem[256]
            mem[idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', 224, 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', 224, 32))), 0) - 256
        idx = idx + 1
        continue 
    _124 = mem[64]
    mem[64] = mem[64] + 64
    mem[_124] = 1
    mem[_124 + 32] = '1'
    _129 = mem[96]
    _130 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + ceil32(_129) + 32
    if not _129:
        _231 = mem[96]
        idx = 0
        while idx < _231:
            require idx < mem[96]
            require idx < mem[_130]
            mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) - 256
            idx = idx + 1
            continue 
        _243 = mem[64]
        mem[64] = mem[64] + 64
        mem[_243] = 1
        mem[_243 + 32] = 'x'
        _253 = mem[96]
        _254 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + ceil32(_253) + 32
        if not _253:
            _337 = mem[96]
            idx = 0
            while idx < _337:
                require idx < mem[96]
                require idx < mem[_254]
                mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_254 + 32 len _253] = code.data[1852 len _253]
            _338 = mem[96]
            idx = 0
            while idx < _338:
                require idx < mem[96]
                require idx < mem[_254]
                mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) - 256
                idx = idx + 1
                continue 
    else:
        mem[_130 + 32 len _129] = code.data[1852 len _129]
        _232 = mem[96]
        idx = 0
        while idx < _232:
            require idx < mem[96]
            require idx < mem[_130]
            mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) - 256
            idx = idx + 1
            continue 
        _246 = mem[64]
        mem[64] = mem[64] + 64
        mem[_246] = 1
        mem[_246 + 32] = 'x'
        _255 = mem[96]
        _256 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + ceil32(_255) + 32
        if not _255:
            _339 = mem[96]
            idx = 0
            while idx < _339:
                require idx < mem[96]
                require idx < mem[_256]
                mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_256 + 32 len _255] = code.data[1852 len _255]
            _340 = mem[96]
            idx = 0
            while idx < _340:
                require idx < mem[96]
                require idx < mem[_256]
                mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) - 256
                idx = idx + 1
                continue 
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                continue 
        if mem[idx + 128 len 1] >= 65:
            if mem[idx + 128 len 1] <= 70:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 55
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 55
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1] - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 55
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1] - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                continue 
        if mem[idx + 129 len 1] >= 65:
            if mem[idx + 129 len 1] <= 70:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 55
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 55
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
        continue 
    return address(s)
}

function action() payable {
    mem[96] = 42
    mem[128] = 'QGQ956A539A419345f7232fE74e2F6b0'
    mem[160] = 'E3a75Ab440'
    mem[192] = 1
    mem[224] = '0'
    mem[256] = 42
    mem[64] = 352
    mem[288 len 42] = code.data[1852 len 42]
    idx = 0
    while idx < 42:
        require idx < mem[96]
        require idx < mem[256]
        mem[idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if not idx:
            require 0 < mem[192]
            require idx < mem[256]
            mem[idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', 224, 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', 224, 32))), 0) - 256
        idx = idx + 1
        continue 
    _124 = mem[64]
    mem[64] = mem[64] + 64
    mem[_124] = 1
    mem[_124 + 32] = '1'
    _129 = mem[96]
    _130 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + ceil32(_129) + 32
    if not _129:
        _231 = mem[96]
        idx = 0
        while idx < _231:
            require idx < mem[96]
            require idx < mem[_130]
            mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) - 256
            idx = idx + 1
            continue 
        _243 = mem[64]
        mem[64] = mem[64] + 64
        mem[_243] = 1
        mem[_243 + 32] = 'x'
        _253 = mem[96]
        _254 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + ceil32(_253) + 32
        if not _253:
            _337 = mem[96]
            idx = 0
            while idx < _337:
                require idx < mem[96]
                require idx < mem[_254]
                mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_254 + 32 len _253] = code.data[1852 len _253]
            _338 = mem[96]
            idx = 0
            while idx < _338:
                require idx < mem[96]
                require idx < mem[_254]
                mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[_254 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_243')), 32))), 0) - 256
                idx = idx + 1
                continue 
    else:
        mem[_130 + 32 len _129] = code.data[1852 len _129]
        _232 = mem[96]
        idx = 0
        while idx < _232:
            require idx < mem[96]
            require idx < mem[_130]
            mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[_130 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124')), 32))), 0) - 256
            idx = idx + 1
            continue 
        _246 = mem[64]
        mem[64] = mem[64] + 64
        mem[_246] = 1
        mem[_246 + 32] = 'x'
        _255 = mem[96]
        _256 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + ceil32(_255) + 32
        if not _255:
            _339 = mem[96]
            idx = 0
            while idx < _339:
                require idx < mem[96]
                require idx < mem[_256]
                mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_256 + 32 len _255] = code.data[1852 len _255]
            _340 = mem[96]
            idx = 0
            while idx < _340:
                require idx < mem[96]
                require idx < mem[_256]
                mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[_256 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_246')), 32))), 0) - 256
                idx = idx + 1
                continue 
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                continue 
        if mem[idx + 128 len 1] >= 65:
            if mem[idx + 128 len 1] <= 70:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 55
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 55
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1] - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 55
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 55) + mem[idx + 129 len 1] - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                continue 
        if mem[idx + 129 len 1] >= 65:
            if mem[idx + 129 len 1] <= 70:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 55
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 55
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
        continue 
    call address(s) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
