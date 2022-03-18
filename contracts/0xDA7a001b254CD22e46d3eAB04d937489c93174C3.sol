contract main {




// =====================  Runtime code  =====================


address owner;
address refAddress;

function ref() payable {
    return refAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    refAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getReferenceData(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 356] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = ceil32(arg1.length) + 96
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 356] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 388] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.0x65555bcc with:
            gas gas_remaining wei
           args mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 352 <= test266151307())
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getReferenceDataBulk(string[] arg1, string[] arg2) payable {
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
        _106 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_106] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_106 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_106 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _106
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _107 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 >= mem[64] and mem[64] + (32 * arg2.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_107] = arg2.length
    idx = 0
    s = arg2 + 36
    t = _107 + 32
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _214 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_214] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_214 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_214 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _214
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[_107]:
        revert with 0, 'BAD_INPUT_LENGTH'
    _212 = mem[96]
    require mem[96] <= test266151307()
    _215 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _212) + 32
    if not _212:
        idx = 0
        while idx < _212:
            require idx < mem[96]
            _315 = mem[(32 * idx) + 128]
            require idx < mem[_107]
            _318 = mem[(32 * idx) + _107 + 32]
            _320 = mem[64]
            mem[64] = mem[64] + 96
            mem[_320] = 0
            mem[_320 + 32] = 0
            mem[_320 + 64] = 0
            _325 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _330 = mem[_315]
            mem[mem[64] + 68] = mem[_315]
            s = 0
            while s < _330:
                mem[s + mem[64] + 100] = mem[_315 + s + 32]
                s = s + 32
                continue 
            if ceil32(_330) <= _330:
                mem[mem[64] + 36] = ceil32(_330) + 96
                _414 = mem[_318]
                mem[ceil32(_330) + mem[64] + 100] = mem[_318]
                s = 0
                while s < _414:
                    mem[s + ceil32(_330) + mem[64] + 132] = mem[_318 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_414) <= _414:
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_414) + ceil32(_330) + _325 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _517 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_517] = mem[_507]
                    mem[_517 + 32] = mem[_507 + 32]
                    mem[_517 + 64] = mem[_507 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _517
                else:
                    mem[ceil32(_330) + _325 + _414 + 132] = 0
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_414) + ceil32(_330) + _325 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _519 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_519] = mem[_514]
                    mem[_519 + 32] = mem[_514 + 32]
                    mem[_519 + 64] = mem[_514 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _519
            else:
                mem[mem[64] + _330 + 100] = 0
                mem[mem[64] + 36] = ceil32(_330) + 96
                _415 = mem[_318]
                mem[ceil32(_330) + mem[64] + 100] = mem[_318]
                s = 0
                while s < _415:
                    mem[s + ceil32(_330) + mem[64] + 132] = mem[_318 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_415) <= _415:
                    require ext_code.size(refAddress)
                    staticcall refAddress.0x65555bcc with:
                            gas gas_remaining wei
                           args 64, ceil32(_330) + 96, mem[mem[64] + 68 len _330 + 32], 0, mem[mem[64] + _330 + 132 len ceil32(_415) + ceil32(_330) - _330]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _518 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_518] = mem[_508]
                    mem[_518 + 32] = mem[_508 + 32]
                    mem[_518 + 64] = mem[_508 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _518
                else:
                    mem[ceil32(_330) + mem[64] + _415 + 132] = 0
                    require ext_code.size(refAddress)
                    staticcall refAddress.0x65555bcc with:
                            gas gas_remaining wei
                           args 64, ceil32(_330) + 96, mem[mem[64] + 68 len _330 + 32], 0, mem[mem[64] + _330 + 132 len ceil32(_415) + ceil32(_330) - _330]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _520 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_520] = mem[_515]
                    mem[_520 + 32] = mem[_515 + 32]
                    mem[_520 + 64] = mem[_515 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _520
            idx = idx + 1
            continue 
        _314 = mem[64]
        mem[mem[64]] = 32
        _317 = mem[_215]
        mem[mem[64] + 32] = mem[_215]
        idx = 0
        s = mem[64] + 64
        t = _215 + 32
        while idx < _317:
            _408 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_408 + 32]
            mem[s + 64] = mem[_408 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _314 + (96 * _317) + -mem[64] + 64
    mem[64] = _215 + (32 * _212) + 128
    mem[_215 + (32 * _212) + 32] = 0
    mem[_215 + (32 * _212) + 64] = 0
    mem[_215 + (32 * _212) + 96] = 0
    mem[var34001] = _215 + (32 * _212) + 32
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_215 + (32 * _212) + 32] = 0
        mem[_215 + (32 * _212) + 64] = 0
        mem[_215 + (32 * _212) + 96] = 0
        mem[s + 32] = _215 + (32 * _212) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _212:
        require idx < mem[96]
        _497 = mem[(32 * idx) + 128]
        require idx < mem[_107]
        _500 = mem[(32 * idx) + _107 + 32]
        _506 = mem[64]
        mem[64] = mem[64] + 96
        mem[_506] = 0
        mem[_506 + 32] = 0
        mem[_506 + 64] = 0
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _516 = mem[_497]
        mem[mem[64] + 68] = mem[_497]
        s = 0
        while s < _516:
            mem[s + mem[64] + 100] = mem[_497 + s + 32]
            s = s + 32
            continue 
        if ceil32(_516) <= _516:
            mem[mem[64] + 36] = ceil32(_516) + 96
            _576 = mem[_500]
            mem[ceil32(_516) + mem[64] + 100] = mem[_500]
            s = 0
            while s < _576:
                mem[s + ceil32(_516) + mem[64] + 132] = mem[_500 + s + 32]
                s = s + 32
                continue 
            if ceil32(_576) <= _576:
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_516) + 96, mem[mem[64] + 68 len ceil32(_576) + ceil32(_516) + 64]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _618 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_618] = mem[_614]
                mem[_618 + 32] = mem[_614 + 32]
                mem[_618 + 64] = mem[_614 + 64]
                require idx < mem[_215]
                mem[(32 * idx) + _215 + 32] = _618
            else:
                mem[ceil32(_516) + mem[64] + _576 + 132] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_516) + 96, mem[mem[64] + 68 len ceil32(_576) + ceil32(_516) + 64]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _620 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_620] = mem[_616]
                mem[_620 + 32] = mem[_616 + 32]
                mem[_620 + 64] = mem[_616 + 64]
                require idx < mem[_215]
                mem[(32 * idx) + _215 + 32] = _620
        else:
            mem[mem[64] + _516 + 100] = 0
            mem[mem[64] + 36] = ceil32(_516) + 96
            _577 = mem[_500]
            mem[ceil32(_516) + mem[64] + 100] = mem[_500]
            s = 0
            while s < _577:
                mem[s + ceil32(_516) + mem[64] + 132] = mem[_500 + s + 32]
                s = s + 32
                continue 
            if ceil32(_577) <= _577:
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_516) + 96, mem[mem[64] + 68 len _516 + 32], 0, mem[mem[64] + _516 + 132 len ceil32(_577) + ceil32(_516) - _516]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _615 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _619 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_619] = mem[_615]
                mem[_619 + 32] = mem[_615 + 32]
                mem[_619 + 64] = mem[_615 + 64]
                require idx < mem[_215]
                mem[(32 * idx) + _215 + 32] = _619
            else:
                mem[ceil32(_516) + mem[64] + _577 + 132] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_516) + 96, mem[mem[64] + 68 len _516 + 32], 0, mem[mem[64] + _516 + 132 len ceil32(_577) + ceil32(_516) - _516]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _621 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_621] = mem[_617]
                mem[_621 + 32] = mem[_617 + 32]
                mem[_621 + 64] = mem[_617 + 64]
                require idx < mem[_215]
                mem[(32 * idx) + _215 + 32] = _621
        idx = idx + 1
        continue 
    _496 = mem[64]
    mem[mem[64]] = 32
    _499 = mem[_215]
    mem[mem[64] + 32] = mem[_215]
    idx = 0
    s = mem[64] + 64
    t = _215 + 32
    while idx < _499:
        _570 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_570 + 32]
        mem[s + 64] = mem[_570 + 64]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _496 + (96 * _499) + -mem[64] + 64
}



}
