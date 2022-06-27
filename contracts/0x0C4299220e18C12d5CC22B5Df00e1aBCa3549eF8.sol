contract main {




// =====================  Runtime code  =====================


#
#  - sub_de089d7a(?)
#  - _fallback()
#
address zapAddress;
address sub_db9e152bAddress;
address stor2;

function zap() {
    return zapAddress
}

function sub_db9e152b(?) {
    return sub_db9e152bAddress
}

function sub_bc906643(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Amount and pid lengths don't match'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _416 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_db9e152bAddress)
        staticcall sub_db9e152bAddress.poolAddress(uint256 arg1) with:
                gas gas_remaining wei
               args _416
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _421 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _423 = mem[_421]
        require mem[_421] == mem[_421 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _428 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if s > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        require ext_code.size(zapAddress)
        call zapAddress.zapIn(address arg1) with:
           value mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] wei
             gas gas_remaining wei
            args address(mem[_421])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _433 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _436 = mem[_433 + 64]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = sub_db9e152bAddress
        require ext_code.size(address(_423))
        staticcall address(_423).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, sub_db9e152bAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _440 = mem[_439]
        if mem[_439] >= _436:
            if idx >= mem[96]:
                revert with 0, 50
            _442 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x82da49e800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _442
            mem[mem[64] + 36] = _436
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(sub_db9e152bAddress)
            call sub_db9e152bAddress.0x82da49e8 with:
                 gas gas_remaining wei
                args _442, _436, msg.sender
        else:
            if _436 < mem[_439]:
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_db9e152bAddress
            require ext_code.size(address(_423))
            staticcall address(_423).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_db9e152bAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _447 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _448 = mem[_447]
            if mem[_447] > !(_436 - _440):
                revert with 0, 17
            _449 = mem[64]
            mem[mem[64] + 36] = sub_db9e152bAddress
            mem[mem[64] + 68] = _448 + _436 - _440
            _450 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_450 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_450 + 36 len 28]
            mem[64] = _449 + 164
            mem[_449 + 100] = 32
            mem[_449 + 132] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_423)):
                revert with 0, 'Address: call to non-contract'
            _457 = mem[_450]
            t = 0
            while t < _457:
                mem[t + _449 + 164] = mem[t + _450 + 32]
                t = t + 32
                continue 
            if ceil32(_457) <= _457:
                call address(_423).mem[_449 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_449 + 168 len _457 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_449 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_449 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _449 + 232] = mem[idx + _449 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_449 + 232]
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _597 = mem[(32 * idx) + 128]
                        mem[_449 + 164] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + 168] = _597
                        mem[_449 + 200] = _436
                        mem[_449 + 232] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _597, _436, msg.sender
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _621 = mem[(32 * idx) + 128]
                        mem[_449 + 164] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + 168] = _621
                        mem[_449 + 200] = _436
                        mem[_449 + 232] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _621, _436, msg.sender
                else:
                    mem[64] = _449 + ceil32(return_data.size) + 165
                    mem[_449 + 164] = return_data.size
                    mem[_449 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_449 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_449 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _449 + ceil32(return_data.size) + 233] = mem[idx + _449 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_449 + ceil32(return_data.size) + 233]
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _600 = mem[(32 * idx) + 128]
                        mem[_449 + ceil32(return_data.size) + 165] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + ceil32(return_data.size) + 169] = _600
                        mem[_449 + ceil32(return_data.size) + 201] = _436
                        mem[_449 + ceil32(return_data.size) + 233] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _600, _436, msg.sender
                    else:
                        require return_data.size >= 32
                        require mem[_449 + 196] == bool(mem[_449 + 196])
                        if not mem[_449 + 196]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _624 = mem[(32 * idx) + 128]
                        mem[_449 + ceil32(return_data.size) + 165] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + ceil32(return_data.size) + 169] = _624
                        mem[_449 + ceil32(return_data.size) + 201] = _436
                        mem[_449 + ceil32(return_data.size) + 233] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _624, _436, msg.sender
            else:
                mem[_457 + _449 + 164] = 0
                call address(_423).mem[_449 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_449 + 168 len _457 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_449 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_449 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _449 + 232] = mem[idx + _449 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_449 + 232]
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _603 = mem[(32 * idx) + 128]
                        mem[_449 + 164] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + 168] = _603
                        mem[_449 + 200] = _436
                        mem[_449 + 232] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _603, _436, msg.sender
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _627 = mem[(32 * idx) + 128]
                        mem[_449 + 164] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + 168] = _627
                        mem[_449 + 200] = _436
                        mem[_449 + 232] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _627, _436, msg.sender
                else:
                    mem[64] = _449 + ceil32(return_data.size) + 165
                    mem[_449 + 164] = return_data.size
                    mem[_449 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_449 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_449 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _449 + ceil32(return_data.size) + 233] = mem[idx + _449 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_449 + ceil32(return_data.size) + 233]
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _606 = mem[(32 * idx) + 128]
                        mem[_449 + ceil32(return_data.size) + 165] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + ceil32(return_data.size) + 169] = _606
                        mem[_449 + ceil32(return_data.size) + 201] = _436
                        mem[_449 + ceil32(return_data.size) + 233] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _606, _436, msg.sender
                    else:
                        require return_data.size >= 32
                        require mem[_449 + 196] == bool(mem[_449 + 196])
                        if not mem[_449 + 196]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _630 = mem[(32 * idx) + 128]
                        mem[_449 + ceil32(return_data.size) + 165] = 0x82da49e800000000000000000000000000000000000000000000000000000000
                        mem[_449 + ceil32(return_data.size) + 169] = _630
                        mem[_449 + ceil32(return_data.size) + 201] = _436
                        mem[_449 + ceil32(return_data.size) + 233] = msg.sender
                        require ext_code.size(sub_db9e152bAddress)
                        call sub_db9e152bAddress.0x82da49e8 with:
                             gas gas_remaining wei
                            args _630, _436, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _428
        continue 
    if s != msg.value:
        revert with 0, 'Amount unmatched'
    _414 = mem[64]
    mem[mem[64]] = 64
    _420 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _546 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[_414 + (32 * mem[96]) + 96] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[_414 + (32 * _420) + 128 len 32 * _546] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _546]
    emit 0x30fdd4bc: mem[mem[64] len _414 + (32 * _420) + (32 * _546) + -mem[64] + 128]
}

function sub_54068f88(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307() or ceil32(32 * ('cd', 68).length) + 98 < 97:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Address and pid lengths don't match'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _782 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = _782
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(sub_db9e152bAddress)
        call sub_db9e152bAddress.0x4ecee741 with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _782, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _790 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _793 = mem[_790]
        if idx >= mem[96]:
            revert with 0, 50
        _803 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_db9e152bAddress)
        staticcall sub_db9e152bAddress.poolAddress(uint256 arg1) with:
                gas gas_remaining wei
               args _803
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _812 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _816 = mem[_812]
        require mem[_812] == mem[_812 + 12 len 20]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = zapAddress
        require ext_code.size(address(_816))
        staticcall address(_816).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, zapAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _839 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _844 = mem[_839]
        if mem[_839] >= _793:
            mem[mem[64] + 4] = address(_816)
            mem[mem[64] + 36] = _793
            mem[mem[64] + 68] = address(cd[4])
            require ext_code.size(zapAddress)
            call zapAddress.0x624d8940 with:
                 gas gas_remaining wei
                args address(_816), _793, address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _875 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_875]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_875]
            continue 
        if _793 < mem[_839]:
            revert with 0, 17
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = zapAddress
        require ext_code.size(address(_816))
        staticcall address(_816).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, zapAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _903 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _912 = mem[_903]
        if mem[_903] > !(_793 - _844):
            revert with 0, 17
        _929 = mem[64]
        mem[mem[64] + 36] = zapAddress
        mem[mem[64] + 68] = _912 + _793 - _844
        _934 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_934 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_934 + 36 len 28]
        mem[64] = _929 + 164
        mem[_929 + 100] = 32
        mem[_929 + 132] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_816)):
            revert with 0, 'Address: call to non-contract'
        _941 = mem[_934]
        t = 0
        while t < _941:
            mem[t + _929 + 164] = mem[t + _934 + 32]
            t = t + 32
            continue 
        if ceil32(_941) > _941:
            mem[_941 + _929 + 164] = 0
        call address(_816).mem[_929 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_929 + 168 len _941 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_929 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_929 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _929 + 232] = mem[idx + _929 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_929 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            mem[_929 + 168] = address(_816)
            mem[_929 + 200] = _793
            mem[_929 + 232] = address(cd[4])
            require ext_code.size(zapAddress)
            call zapAddress.0x624d8940 with:
                 gas gas_remaining wei
                args address(_816), _793, address(cd[4])
            mem[_929 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _929 + ceil32(return_data.size) + 164
        else:
            mem[_929 + 164] = return_data.size
            mem[_929 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_929 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_929 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _929 + ceil32(return_data.size) + 233] = mem[idx + _929 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_929 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_929 + 196] == bool(mem[_929 + 196])
                if not mem[_929 + 196]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            mem[_929 + ceil32(return_data.size) + 169] = address(_816)
            mem[_929 + ceil32(return_data.size) + 201] = _793
            mem[_929 + ceil32(return_data.size) + 233] = address(cd[4])
            require ext_code.size(zapAddress)
            call zapAddress.0x624d8940 with:
                 gas gas_remaining wei
                args address(_816), _793, address(cd[4])
            mem[_929 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _929 + ceil32(return_data.size) + ceil32(return_data.size) + 165
        require return_data.size >= 32
        if s > !ext_call.return_data[0]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    if stor2 == address(cd[4]):
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x2e1a7d4d with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value s wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Failed to send BNB'
            _795 = mem[64]
            mem[mem[64]] = address(cd[4])
            mem[mem[64] + 32] = 96
            _807 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 64] = (32 * _807) + 128
            _1032 = mem[ceil32(32 * ('cd', 36).length) + 97]
            mem[_795 + (32 * _807) + 128] = mem[ceil32(32 * ('cd', 36).length) + 97]
            mem[_795 + (32 * _807) + 160 len 32 * _1032] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1032]
            emit 0x7e2aaa46: mem[mem[64] len _795 + (32 * _807) + (32 * _1032) + -mem[64] + 160]
        else:
            _789 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_789] = return_data.size
            mem[_789 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send BNB'
            _797 = mem[64]
            mem[mem[64]] = address(cd[4])
            mem[mem[64] + 32] = 96
            _808 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 64] = (32 * _808) + 128
            _1033 = mem[ceil32(32 * ('cd', 36).length) + 97]
            mem[_797 + (32 * _808) + 128] = mem[ceil32(32 * ('cd', 36).length) + 97]
            mem[_797 + (32 * _808) + 160 len 32 * _1033] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1033]
            emit 0x7e2aaa46: mem[mem[64] len _797 + (32 * _808) + (32 * _1033) + -mem[64] + 160]
    else:
        _781 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s
        _785 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_781 + 100] = 32
        mem[_781 + 132] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[4])):
            revert with 0, 'Address: call to non-contract'
        _805 = mem[_785]
        mem[_781 + 164 len ceil32(mem[_785])] = mem[_785 + 32 len ceil32(mem[_785])]
        if ceil32(_805) <= _805:
            call address(cd[4]) with:
                 gas gas_remaining wei
                args mem[_781 + 168 len _805 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if not mem[96]:
                    mem[_781 + 164] = address(cd[4])
                    mem[_781 + 196] = 96
                    mem[_781 + 260] = mem[96]
                    mem[_781 + 292 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + 228] = (32 * mem[96]) + 128
                    _1240 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 292] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 324 len 32 * _1240] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1240]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + 292 len (32 * mem[96]) + (32 * _1240) + 32]), (32 * mem[96]) + 128
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    mem[_781 + 164] = address(cd[4])
                    mem[_781 + 196] = 96
                    mem[_781 + 260] = mem[96]
                    mem[_781 + 292 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + 228] = (32 * mem[96]) + 128
                    _1241 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 292] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 324 len 32 * _1241] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1241]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + 292 len (32 * mem[96]) + (32 * _1241) + 32]), (32 * mem[96]) + 128
            else:
                mem[_781 + 164] = return_data.size
                mem[_781 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if not return_data.size:
                    mem[_781 + ceil32(return_data.size) + 165] = address(cd[4])
                    mem[_781 + ceil32(return_data.size) + 197] = 96
                    mem[_781 + ceil32(return_data.size) + 261] = mem[96]
                    mem[_781 + ceil32(return_data.size) + 293 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + ceil32(return_data.size) + 229] = (32 * mem[96]) + 128
                    _1242 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 293] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 325 len 32 * _1242] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1242]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + ceil32(return_data.size) + 293 len (32 * mem[96]) + (32 * _1242) + 32]), (32 * mem[96]) + 128
                else:
                    require return_data.size >= 32
                    require mem[_781 + 196] == bool(mem[_781 + 196])
                    if not mem[_781 + 196]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    mem[_781 + ceil32(return_data.size) + 165] = address(cd[4])
                    mem[_781 + ceil32(return_data.size) + 197] = 96
                    mem[_781 + ceil32(return_data.size) + 261] = mem[96]
                    mem[_781 + ceil32(return_data.size) + 293 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + ceil32(return_data.size) + 229] = (32 * mem[96]) + 128
                    _1243 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 293] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 325 len 32 * _1243] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1243]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + ceil32(return_data.size) + 293 len (32 * mem[96]) + (32 * _1243) + 32]), (32 * mem[96]) + 128
        else:
            mem[_805 + _781 + 164] = 0
            call address(cd[4]) with:
                 gas gas_remaining wei
                args mem[_781 + 168 len _805 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if not mem[96]:
                    mem[_781 + 164] = address(cd[4])
                    mem[_781 + 196] = 96
                    mem[_781 + 260] = mem[96]
                    mem[_781 + 292 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + 228] = (32 * mem[96]) + 128
                    _1244 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 292] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 324 len 32 * _1244] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1244]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + 292 len (32 * mem[96]) + (32 * _1244) + 32]), (32 * mem[96]) + 128
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    mem[_781 + 164] = address(cd[4])
                    mem[_781 + 196] = 96
                    mem[_781 + 260] = mem[96]
                    mem[_781 + 292 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + 228] = (32 * mem[96]) + 128
                    _1245 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 292] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + (32 * mem[96]) + 324 len 32 * _1245] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1245]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + 292 len (32 * mem[96]) + (32 * _1245) + 32]), (32 * mem[96]) + 128
            else:
                mem[_781 + 164] = return_data.size
                mem[_781 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if not return_data.size:
                    mem[_781 + ceil32(return_data.size) + 165] = address(cd[4])
                    mem[_781 + ceil32(return_data.size) + 197] = 96
                    mem[_781 + ceil32(return_data.size) + 261] = mem[96]
                    mem[_781 + ceil32(return_data.size) + 293 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + ceil32(return_data.size) + 229] = (32 * mem[96]) + 128
                    _1246 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 293] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 325 len 32 * _1246] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1246]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + ceil32(return_data.size) + 293 len (32 * mem[96]) + (32 * _1246) + 32]), (32 * mem[96]) + 128
                else:
                    require return_data.size >= 32
                    require mem[_781 + 196] == bool(mem[_781 + 196])
                    if not mem[_781 + 196]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    mem[_781 + ceil32(return_data.size) + 165] = address(cd[4])
                    mem[_781 + ceil32(return_data.size) + 197] = 96
                    mem[_781 + ceil32(return_data.size) + 261] = mem[96]
                    mem[_781 + ceil32(return_data.size) + 293 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_781 + ceil32(return_data.size) + 229] = (32 * mem[96]) + 128
                    _1247 = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 293] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[_781 + ceil32(return_data.size) + (32 * mem[96]) + 325 len 32 * _1247] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _1247]
                    emit 0x7e2aaa46: address(cd[4]), Array(len=mem[96], data=mem[_781 + ceil32(return_data.size) + 293 len (32 * mem[96]) + (32 * _1247) + 32]), (32 * mem[96]) + 128
}



}
