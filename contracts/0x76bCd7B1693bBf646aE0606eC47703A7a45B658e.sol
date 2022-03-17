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

function sub_1be0ac6a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _106 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_106] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_106 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_106 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _106
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _107 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_107] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _107 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _214 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_214] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_214 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_214 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
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
            _314 = mem[(32 * idx) + 128]
            require idx < mem[_107]
            _317 = mem[(32 * idx) + _107 + 32]
            _319 = mem[64]
            mem[64] = mem[64] + 96
            mem[_319] = 0
            mem[_319 + 32] = 0
            mem[_319 + 64] = 0
            _321 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _329 = mem[_314]
            mem[mem[64] + 68] = mem[_314]
            s = 0
            while s < _329:
                mem[s + mem[64] + 100] = mem[_314 + s + 32]
                s = s + 32
                continue 
            if ceil32(_329) <= _329:
                mem[_321 + 36] = ceil32(_329) + 96
                _414 = mem[_317]
                mem[ceil32(_329) + _321 + 100] = mem[_317]
                s = 0
                while s < _414:
                    mem[s + ceil32(_329) + _321 + 132] = mem[_317 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_414) <= _414:
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_414) + ceil32(_329) + _321 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _517 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_517] = mem[_506]
                    mem[_517 + 32] = mem[_506 + 32]
                    mem[_517 + 64] = mem[_506 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _517
                else:
                    mem[ceil32(_329) + _321 + _414 + 132] = 0
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_414) + ceil32(_329) + _321 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _519 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_519] = mem[_510]
                    mem[_519 + 32] = mem[_510 + 32]
                    mem[_519 + 64] = mem[_510 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _519
            else:
                mem[_321 + _329 + 100] = 0
                mem[_321 + 36] = ceil32(_329) + 96
                _415 = mem[_317]
                mem[ceil32(_329) + _321 + 100] = mem[_317]
                s = 0
                while s < _415:
                    mem[s + ceil32(_329) + _321 + 132] = mem[_317 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_415) <= _415:
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_415) + ceil32(_329) + _321 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _518 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_518] = mem[_507]
                    mem[_518 + 32] = mem[_507 + 32]
                    mem[_518 + 64] = mem[_507 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _518
                else:
                    mem[ceil32(_329) + _321 + _415 + 132] = 0
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_415) + ceil32(_329) + _321 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _520 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_520] = mem[_511]
                    mem[_520 + 32] = mem[_511 + 32]
                    mem[_520 + 64] = mem[_511 + 64]
                    require idx < mem[_215]
                    mem[(32 * idx) + _215 + 32] = _520
            idx = idx + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = 32
        _318 = mem[_215]
        mem[mem[64] + 32] = mem[_215]
        idx = 0
        s = mem[64] + 64
        t = _215 + 32
        while idx < _318:
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
           len _316 + (96 * _318) + -mem[64] + 64
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
        _496 = mem[(32 * idx) + 128]
        require idx < mem[_107]
        _499 = mem[(32 * idx) + _107 + 32]
        _505 = mem[64]
        mem[64] = mem[64] + 96
        mem[_505] = 0
        mem[_505 + 32] = 0
        mem[_505 + 64] = 0
        _509 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _516 = mem[_496]
        mem[mem[64] + 68] = mem[_496]
        s = 0
        while s < _516:
            mem[s + mem[64] + 100] = mem[_496 + s + 32]
            s = s + 32
            continue 
        if ceil32(_516) <= _516:
            mem[mem[64] + 36] = ceil32(_516) + 96
            _576 = mem[_499]
            mem[ceil32(_516) + mem[64] + 100] = mem[_499]
            s = 0
            while s < _576:
                mem[s + ceil32(_516) + mem[64] + 132] = mem[_499 + s + 32]
                s = s + 32
                continue 
            if ceil32(_576) <= _576:
                require ext_code.size(refAddress)
                staticcall refAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_576) + ceil32(_516) + _509 + -mem[64] + 128]
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
                mem[ceil32(_516) + _509 + _576 + 132] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_576) + ceil32(_516) + _509 + -mem[64] + 128]
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
            _577 = mem[_499]
            mem[ceil32(_516) + _509 + 100] = mem[_499]
            s = 0
            while s < _577:
                mem[s + ceil32(_516) + _509 + 132] = mem[_499 + s + 32]
                s = s + 32
                continue 
            if ceil32(_577) <= _577:
                require ext_code.size(refAddress)
                staticcall refAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_577) + ceil32(_516) + _509 + -mem[64] + 128]
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
                mem[ceil32(_516) + _509 + _577 + 132] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_577) + ceil32(_516) + _509 + -mem[64] + 128]
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
    _498 = mem[64]
    mem[mem[64]] = 32
    _502 = mem[_215]
    mem[mem[64] + 32] = mem[_215]
    idx = 0
    s = mem[64] + 64
    t = _215 + 32
    while idx < _502:
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
       len _498 + (96 * _502) + -mem[64] + 64
}



}
