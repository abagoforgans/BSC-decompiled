contract main {




// =====================  Runtime code  =====================


array of uint256 sub_e989513c;
array of uint256 sub_f7870ff2;
array of uint256 payout;

function payout() {
    return payout[0 len payout.length]
}

function sub_e989513c(?) {
    return sub_e989513c[0 len sub_e989513c.length]
}

function sub_f7870ff2(?) {
    return sub_f7870ff2[0 len sub_f7870ff2.length]
}

function _fallback() payable {
  stop
}

function sub_fe6ed077(?) {
    mem[96] = 42
    mem[128 len 42] = 0xfe5147344561646261633033343330313838356134353935433345306644663338323046454639356546
    mem[192] = 1
    mem[224] = '0'
    mem[256] = 42
    mem[64] = 352
    mem[288 len 42] = code.data[2575 len 42]
    idx = 0
    while idx < 42:
        require idx < mem[96]
        require idx < mem[256]
        mem[idx + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            require 0 < mem[192]
            require idx < mem[256]
            mem[idx + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
            mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_254 + 32 len _253] = code.data[2575 len _253]
            _338 = mem[96]
            idx = 0
            while idx < _338:
                require idx < mem[96]
                require idx < mem[_254]
                mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
    else:
        mem[_130 + 32 len _129] = code.data[2575 len _129]
        _232 = mem[96]
        idx = 0
        while idx < _232:
            require idx < mem[96]
            require idx < mem[_130]
            mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_256 + 32 len _255] = code.data[2575 len _255]
            _340 = mem[96]
            idx = 0
            while idx < _340:
                require idx < mem[96]
                require idx < mem[_256]
                mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
    idx = 2
    while idx < 42:
        require idx < mem[96]
        require idx + 1 < mem[96]
        idx = idx + 2
        continue 
    return 0
}

function action() payable {
    mem[96] = 42
    mem[128 len 42] = 0xfe5147344561646261633033343330313838356134353935433345306644663338323046454639356546
    mem[192] = 1
    mem[224] = '0'
    mem[256] = 42
    mem[64] = 352
    mem[288 len 42] = code.data[2575 len 42]
    idx = 0
    while idx < 42:
        require idx < mem[96]
        require idx < mem[256]
        mem[idx + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            require 0 < mem[192]
            require idx < mem[256]
            mem[idx + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
            mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_254 + 32 len _253] = code.data[2575 len _253]
            _338 = mem[96]
            idx = 0
            while idx < _338:
                require idx < mem[96]
                require idx < mem[_254]
                mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_243]
                    require idx < mem[_254]
                    mem[idx + _254 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
    else:
        mem[_130 + 32 len _129] = code.data[2575 len _129]
        _232 = mem[96]
        idx = 0
        while idx < _232:
            require idx < mem[96]
            require idx < mem[_130]
            mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 2:
                require 0 < mem[_124]
                require idx < mem[_130]
                mem[idx + _130 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
        else:
            mem[_256 + 32 len _255] = code.data[2575 len _255]
            _340 = mem[96]
            idx = 0
            while idx < _340:
                require idx < mem[96]
                require idx < mem[_256]
                mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_246]
                    require idx < mem[_256]
                    mem[idx + _256 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
    idx = 2
    while idx < 42:
        require idx < mem[96]
        require idx + 1 < mem[96]
        idx = idx + 2
        continue 
    call 0x0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
