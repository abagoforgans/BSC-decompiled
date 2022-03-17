contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function sub_ac42a4eb(?) {
    if not arg1:
        return eth.balance(arg2)
    if ext_code.size(arg1) <= 0:
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1badbbe3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[6559 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function sub_db70c9e0(?) {
    if ('cd', 4).length * ('cd', 36).length:
        mem[128 len 32 * ('cd', 4).length * ('cd', 36).length] = code.data[6559 len 32 * ('cd', 4).length * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        t = 0
        s = 0
        while s < ('cd', 4).length:
            require idx < ('cd', 36).length
            if not address(cd[((32 * s) + cd[4] + 36)]):
                require s + (('cd', 4).length * idx) < ('cd', 4).length * ('cd', 36).length
                mem[(32 * s + (('cd', 4).length * idx)) + 128] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            else:
                if ext_code.size(address(cd[((32 * s) + cd[4] + 36)])) <= 0:
                    require s + (('cd', 4).length * idx) < ('cd', 4).length * ('cd', 36).length
                    mem[(32 * s + (('cd', 4).length * idx)) + 128] = 0
                else:
                    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 132] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[4] + 36)]))
                    call address(cd[((32 * s) + cd[4] + 36)]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)])
                    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require s + (('cd', 4).length * idx) < ('cd', 4).length * ('cd', 36).length
                    mem[(32 * s + (('cd', 4).length * idx)) + 128] = ext_call.return_data[0]
            t = s + (('cd', 4).length * idx)
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 128] = 32
    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 160] = ('cd', 4).length * ('cd', 36).length
    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 192 len floor32(('cd', 4).length * ('cd', 36).length)] = mem[128 len floor32(('cd', 4).length * ('cd', 36).length)]
    return Array(len=('cd', 4).length * ('cd', 36).length, data=mem[(32 * ('cd', 4).length * ('cd', 36).length) + 192 len 32 * ('cd', 4).length * ('cd', 36).length]), 
}

function sub_c90b5c5d(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _41 = mem[(32 * idx) + 128]
            if not arg1:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(mem[(32 * idx) + 128])
            else:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args address(_41)
                    mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[6559 len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _45 = mem[(32 * idx) + 128]
            if not arg1:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(mem[(32 * idx) + 128])
            else:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args address(_45)
                    mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_bbd83ac3(?) {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.name() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= 4294967296
    require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
    require mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96] + mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 96] = 0x313ce56700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 96
    mem[(2 * ceil32(return_data.size)) + 192] = mem[_4 + 96]
    _17 = mem[_4 + 96]
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _17 % 32:
        mem[(2 * ceil32(return_data.size)) + 128] = _17 + 128
        mem[_17 + (2 * ceil32(return_data.size)) + 224] = mem[_9 + ceil32(return_data.size) + 96]
        _34 = mem[_9 + ceil32(return_data.size) + 96]
        mem[_17 + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[_9 + ceil32(return_data.size) + 96])] = mem[_9 + ceil32(return_data.size) + 128 len ceil32(mem[_9 + ceil32(return_data.size) + 96])]
        if not _34 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len _34 + _17 + ceil32(return_data.size) + 160
        mem[floor32(_34) + _17 + (2 * ceil32(return_data.size)) + 256] = mem[floor32(_34) + _17 + (2 * ceil32(return_data.size)) + -(_34 % 32) + 288 len _34 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len floor32(_34) + _17 + ceil32(return_data.size) + 192
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 224] = mem[floor32(_17) + (2 * ceil32(return_data.size)) + -(_17 % 32) + 256 len _17 % 32]
    mem[(2 * ceil32(return_data.size)) + 128] = floor32(_17) + 160
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 256] = mem[_9 + ceil32(return_data.size) + 96]
    _37 = mem[_9 + ceil32(return_data.size) + 96]
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[_9 + ceil32(return_data.size) + 96])] = mem[_9 + ceil32(return_data.size) + 128 len ceil32(mem[_9 + ceil32(return_data.size) + 96])]
    if not _37 % 32:
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len _37 + floor32(_17) + ceil32(return_data.size) + 192
    mem[floor32(_37) + floor32(_17) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(_37) + floor32(_17) + (2 * ceil32(return_data.size)) + -(_37 % 32) + 320 len _37 % 32]
    return memory
      from (2 * ceil32(return_data.size)) + 96
       len floor32(_37) + floor32(_17) + ceil32(return_data.size) + 224
}

function sub_ee805915(?) {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.name() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if arg2 == 1:
        _10 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x95d89b41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _25 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= 4294967296
        require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96] + mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 96] = 0x313ce56700000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x18160ddd with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = arg3
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = 192
        mem[(2 * ceil32(return_data.size)) + 288] = mem[_10 + 96]
        _71 = mem[_10 + 96]
        mem[(2 * ceil32(return_data.size)) + 320 len ceil32(mem[_10 + 96])] = mem[_10 + 128 len ceil32(mem[_10 + 96])]
        if not _71 % 32:
            mem[(2 * ceil32(return_data.size)) + 128] = _71 + 224
            mem[_71 + (2 * ceil32(return_data.size)) + 320] = mem[_25 + ceil32(return_data.size) + 96]
            _128 = mem[_25 + ceil32(return_data.size) + 96]
            mem[_71 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_25 + ceil32(return_data.size) + 96])] = mem[_25 + ceil32(return_data.size) + 128 len ceil32(mem[_25 + ceil32(return_data.size) + 96])]
            if not _128 % 32:
                return memory
                  from (2 * ceil32(return_data.size)) + 96
                   len _128 + _71 + ceil32(return_data.size) + 256
            mem[floor32(_128) + _71 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_128) + _71 + (2 * ceil32(return_data.size)) + -(_128 % 32) + 384 len _128 % 32]
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len floor32(_128) + _71 + ceil32(return_data.size) + 288
        mem[floor32(_71) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_71) + (2 * ceil32(return_data.size)) + -(_71 % 32) + 352 len _71 % 32]
        mem[(2 * ceil32(return_data.size)) + 128] = floor32(_71) + 256
        mem[floor32(_71) + (2 * ceil32(return_data.size)) + 352] = mem[_25 + ceil32(return_data.size) + 96]
        _135 = mem[_25 + ceil32(return_data.size) + 96]
        mem[floor32(_71) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_25 + ceil32(return_data.size) + 96])] = mem[_25 + ceil32(return_data.size) + 128 len ceil32(mem[_25 + ceil32(return_data.size) + 96])]
        if not _135 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len _135 + floor32(_71) + ceil32(return_data.size) + 288
        mem[floor32(_135) + floor32(_71) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_135) + floor32(_71) + (2 * ceil32(return_data.size)) + -(_135 % 32) + 416 len _135 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len floor32(_135) + floor32(_71) + ceil32(return_data.size) + 320
    if arg2 != 2:
        _11 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x95d89b41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _26 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= 4294967296
        require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96] + mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 96] = 0x313ce56700000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x18160ddd with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 224] = 0
        mem[(2 * ceil32(return_data.size)) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = 192
        mem[(2 * ceil32(return_data.size)) + 288] = mem[_11 + 96]
        _62 = mem[_11 + 96]
        mem[(2 * ceil32(return_data.size)) + 320 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _62 % 32:
            mem[(2 * ceil32(return_data.size)) + 128] = _62 + 224
            mem[_62 + (2 * ceil32(return_data.size)) + 320] = mem[_26 + ceil32(return_data.size) + 96]
            _122 = mem[_26 + ceil32(return_data.size) + 96]
            mem[_62 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_26 + ceil32(return_data.size) + 96])] = mem[_26 + ceil32(return_data.size) + 128 len ceil32(mem[_26 + ceil32(return_data.size) + 96])]
            if not _122 % 32:
                return memory
                  from (2 * ceil32(return_data.size)) + 96
                   len _122 + _62 + ceil32(return_data.size) + 256
            mem[floor32(_122) + _62 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_122) + _62 + (2 * ceil32(return_data.size)) + -(_122 % 32) + 384 len _122 % 32]
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len floor32(_122) + _62 + ceil32(return_data.size) + 288
        mem[floor32(_62) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_62) + (2 * ceil32(return_data.size)) + -(_62 % 32) + 352 len _62 % 32]
        mem[(2 * ceil32(return_data.size)) + 128] = floor32(_62) + 256
        mem[floor32(_62) + (2 * ceil32(return_data.size)) + 352] = mem[_26 + ceil32(return_data.size) + 96]
        _131 = mem[_26 + ceil32(return_data.size) + 96]
        mem[floor32(_62) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_26 + ceil32(return_data.size) + 96])] = mem[_26 + ceil32(return_data.size) + 128 len ceil32(mem[_26 + ceil32(return_data.size) + 96])]
        if not _131 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len _131 + floor32(_62) + ceil32(return_data.size) + 288
        mem[floor32(_131) + floor32(_62) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_131) + floor32(_62) + (2 * ceil32(return_data.size)) + -(_131 % 32) + 416 len _131 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len floor32(_131) + floor32(_62) + ceil32(return_data.size) + 320
    _12 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _27 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= 4294967296
    require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
    require mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96] + mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + 96] + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 96] = 0x313ce56700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = arg3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = arg3
    mem[(2 * ceil32(return_data.size)) + 132] = arg4
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 192
    mem[(2 * ceil32(return_data.size)) + 288] = mem[_12 + 96]
    _89 = mem[_12 + 96]
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
    if not _89 % 32:
        mem[(2 * ceil32(return_data.size)) + 128] = _89 + 224
        mem[_89 + (2 * ceil32(return_data.size)) + 320] = mem[_27 + ceil32(return_data.size) + 96]
        _125 = mem[_27 + ceil32(return_data.size) + 96]
        mem[_89 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_27 + ceil32(return_data.size) + 96])] = mem[_27 + ceil32(return_data.size) + 128 len ceil32(mem[_27 + ceil32(return_data.size) + 96])]
        if not _125 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len _125 + _89 + ceil32(return_data.size) + 256
        mem[floor32(_125) + _89 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_125) + _89 + (2 * ceil32(return_data.size)) + -(_125 % 32) + 384 len _125 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len floor32(_125) + _89 + ceil32(return_data.size) + 288
    mem[floor32(_89) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_89) + (2 * ceil32(return_data.size)) + -(_89 % 32) + 352 len _89 % 32]
    mem[(2 * ceil32(return_data.size)) + 128] = floor32(_89) + 256
    mem[floor32(_89) + (2 * ceil32(return_data.size)) + 352] = mem[_27 + ceil32(return_data.size) + 96]
    _133 = mem[_27 + ceil32(return_data.size) + 96]
    mem[floor32(_89) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_27 + ceil32(return_data.size) + 96])] = mem[_27 + ceil32(return_data.size) + 128 len ceil32(mem[_27 + ceil32(return_data.size) + 96])]
    if not _133 % 32:
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len _133 + floor32(_89) + ceil32(return_data.size) + 288
    mem[floor32(_133) + floor32(_89) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_133) + floor32(_89) + (2 * ceil32(return_data.size)) + -(_133 % 32) + 416 len _133 % 32]
    return memory
      from (2 * ceil32(return_data.size)) + 96
       len floor32(_133) + floor32(_89) + ceil32(return_data.size) + 320
}



}
