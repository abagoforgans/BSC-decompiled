contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a9395325(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_133] == mem[_133 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_133 + 12 len 20]
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x9059447e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _128 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 68
        while idx < _128:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).queryPairListInfo(address[] rg1) with:
                gas gas_remaining wei
               args 32, mem[mem[64] + 36 len (32 * _128) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _248 = mem[_246]
        require mem[_246] <= test266151307()
        require _246 + mem[_246] + 31 < _246 + return_data.size
        _250 = mem[_246 + mem[_246]]
        require mem[_246 + mem[_246]] <= test266151307()
        require (32 * mem[_246 + mem[_246]]) + 32 >= 0 and _246 + ceil32(return_data.size) + (32 * mem[_246 + mem[_246]]) + 32 <= test266151307()
        mem[64] = _246 + ceil32(return_data.size) + (32 * mem[_246 + mem[_246]]) + 32
        mem[_246 + ceil32(return_data.size)] = _250
        require return_data.size >= _248 + (32 * _250) + 32
        idx = 0
        s = _246 + _248 + 32
        t = _246 + ceil32(return_data.size) + 32
        while idx < _250:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _348 = mem[_246 + 32]
        require mem[_246 + 32] <= test266151307()
        require _246 + mem[_246 + 32] + 31 < _246 + return_data.size
        _350 = mem[_246 + mem[_246 + 32]]
        require mem[_246 + mem[_246 + 32]] <= test266151307()
        _352 = mem[64]
        require mem[64] + (32 * mem[_246 + mem[_246 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_246 + mem[_246 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_246 + mem[_246 + 32]]) + 32
        mem[_352] = _350
        require return_data.size >= _348 + (32 * _350) + 32
        idx = 0
        s = _246 + _348 + 32
        t = _352 + 32
        while idx < _350:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _440 = mem[_246 + 64]
        require mem[_246 + 64] <= test266151307()
        require _246 + mem[_246 + 64] + 31 < _246 + return_data.size
        _442 = mem[_246 + mem[_246 + 64]]
        require mem[_246 + mem[_246 + 64]] <= test266151307()
        _444 = mem[64]
        require mem[64] + (32 * mem[_246 + mem[_246 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_246 + mem[_246 + 64]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_246 + mem[_246 + 64]]) + 32
        mem[_444] = _442
        require return_data.size >= _440 + (32 * _442) + 32
        mem[_444 + 32 len 32 * _442] = mem[_246 + _440 + 32 len 32 * _442]
        _524 = mem[_246 + 96]
        require mem[_246 + 96] <= test266151307()
        require _246 + mem[_246 + 96] + 31 < _246 + return_data.size
        _526 = mem[_246 + mem[_246 + 96]]
        require mem[_246 + mem[_246 + 96]] <= test266151307()
        _528 = mem[64]
        require mem[64] + (32 * mem[_246 + mem[_246 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_246 + mem[_246 + 96]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_246 + mem[_246 + 96]]) + 32
        mem[_528] = _526
        require return_data.size >= _524 + (32 * _526) + 32
        mem[_528 + 32 len 32 * _526] = mem[_246 + _524 + 32 len 32 * _526]
        _600 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_600 + 32 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < mem[_246 + ceil32(return_data.size)]
            require 0 < mem[_600]
            mem[_600 + 32] = mem[(32 * idx) + _246 + ceil32(return_data.size) + 44 len 20]
            require idx < mem[_352]
            require 1 < mem[_600]
            mem[_600 + 64] = mem[(32 * idx) + _352 + 44 len 20]
            idx = idx + 1
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 'SWAP_FEE_PERCENT'
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _682 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _687 = mem[_682 + 96]
        require ext_code.size(address(arg3))
        staticcall address(arg3).getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 'TOKEN_TO_DGAS_PAIR_MIN_PERCENT'
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _698 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _703 = mem[_698 + 96]
        _710 = mem[64]
        mem[mem[64]] = 224
        _712 = mem[_246 + ceil32(return_data.size)]
        mem[mem[64] + 224] = mem[_246 + ceil32(return_data.size)]
        idx = 0
        s = _246 + ceil32(return_data.size) + 32
        t = mem[64] + 256
        while idx < _712:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_710 + 32] = (32 * _712) + 256
        _732 = mem[_352]
        mem[_710 + (32 * _712) + 256] = mem[_352]
        idx = 0
        s = _352 + 32
        t = _710 + (32 * _712) + 288
        while idx < _732:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_710 + 64] = (32 * _712) + (32 * _732) + 288
        _748 = mem[_444]
        mem[_710 + (32 * _712) + (32 * _732) + 288] = mem[_444]
        mem[_710 + (32 * _712) + (32 * _732) + 320 len 32 * _748] = mem[_444 + 32 len 32 * _748]
        mem[_710 + 96] = (32 * _712) + (32 * _732) + (32 * _748) + 320
        _760 = mem[_528]
        mem[_710 + (32 * _712) + (32 * _732) + (32 * _748) + 320] = mem[_528]
        mem[_710 + (32 * _712) + (32 * _732) + (32 * _748) + 352 len 32 * _760] = mem[_528 + 32 len 32 * _760]
        mem[_710 + 128] = _687
        mem[_710 + 160] = _703
        mem[_710 + 192] = block.number
        return memory
          from mem[64]
           len _710 + (32 * _712) + (32 * _732) + (32 * _748) + (32 * _760) + -mem[64] + 352
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_135] == mem[_135 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_135 + 12 len 20]
        idx = idx + 1
        continue 
    _126 = mem[64]
    mem[mem[64]] = 0x9059447e00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _130 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 36] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 68
    while idx < _130:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _126 + (32 * _130) + -mem[64] + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _247 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _249 = mem[_247]
    require mem[_247] <= test266151307()
    require _247 + mem[_247] + 31 < _247 + return_data.size
    _251 = mem[_247 + mem[_247]]
    require mem[_247 + mem[_247]] <= test266151307()
    require (32 * mem[_247 + mem[_247]]) + 32 >= 0 and _247 + ceil32(return_data.size) + (32 * mem[_247 + mem[_247]]) + 32 <= test266151307()
    mem[64] = _247 + ceil32(return_data.size) + (32 * mem[_247 + mem[_247]]) + 32
    mem[_247 + ceil32(return_data.size)] = _251
    require return_data.size >= _249 + (32 * _251) + 32
    idx = 0
    s = _247 + _249 + 32
    t = _247 + ceil32(return_data.size) + 32
    while idx < _251:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _349 = mem[_247 + 32]
    require mem[_247 + 32] <= test266151307()
    require _247 + mem[_247 + 32] + 31 < _247 + return_data.size
    _351 = mem[_247 + mem[_247 + 32]]
    require mem[_247 + mem[_247 + 32]] <= test266151307()
    _353 = mem[64]
    require mem[64] + (32 * mem[_247 + mem[_247 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_247 + mem[_247 + 32]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_247 + mem[_247 + 32]]) + 32
    mem[_353] = _351
    require return_data.size >= _349 + (32 * _351) + 32
    idx = 0
    s = _247 + _349 + 32
    t = _353 + 32
    while idx < _351:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _441 = mem[_247 + 64]
    require mem[_247 + 64] <= test266151307()
    require _247 + mem[_247 + 64] + 31 < _247 + return_data.size
    _443 = mem[_247 + mem[_247 + 64]]
    require mem[_247 + mem[_247 + 64]] <= test266151307()
    _445 = mem[64]
    require mem[64] + (32 * mem[_247 + mem[_247 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_247 + mem[_247 + 64]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_247 + mem[_247 + 64]]) + 32
    mem[_445] = _443
    require return_data.size >= _441 + (32 * _443) + 32
    mem[_445 + 32 len 32 * _443] = mem[_247 + _441 + 32 len 32 * _443]
    _525 = mem[_247 + 96]
    require mem[_247 + 96] <= test266151307()
    require _247 + mem[_247 + 96] + 31 < _247 + return_data.size
    _527 = mem[_247 + mem[_247 + 96]]
    require mem[_247 + mem[_247 + 96]] <= test266151307()
    _529 = mem[64]
    require mem[64] + (32 * mem[_247 + mem[_247 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_247 + mem[_247 + 96]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_247 + mem[_247 + 96]]) + 32
    mem[_529] = _527
    require return_data.size >= _525 + (32 * _527) + 32
    mem[_529 + 32 len 32 * _527] = mem[_247 + _525 + 32 len 32 * _527]
    _601 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_601 + 32 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < mem[_247 + ceil32(return_data.size)]
        require 0 < mem[_601]
        mem[_601 + 32] = mem[(32 * idx) + _247 + ceil32(return_data.size) + 44 len 20]
        require idx < mem[_353]
        require 1 < mem[_601]
        mem[_601 + 64] = mem[(32 * idx) + _353 + 44 len 20]
        idx = idx + 1
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args 'SWAP_FEE_PERCENT'
    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _683 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 160
    _692 = mem[_683 + 96]
    require ext_code.size(address(arg3))
    staticcall address(arg3).getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args 'TOKEN_TO_DGAS_PAIR_MIN_PERCENT'
    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _699 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 160
    _708 = mem[_699 + 96]
    _711 = mem[64]
    mem[mem[64]] = 224
    _713 = mem[_247 + ceil32(return_data.size)]
    mem[mem[64] + 224] = mem[_247 + ceil32(return_data.size)]
    idx = 0
    s = _247 + ceil32(return_data.size) + 32
    t = mem[64] + 256
    while idx < _713:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_711 + 32] = (32 * _713) + 256
    _733 = mem[_353]
    mem[_711 + (32 * _713) + 256] = mem[_353]
    idx = 0
    s = _353 + 32
    t = _711 + (32 * _713) + 288
    while idx < _733:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_711 + 64] = (32 * _713) + (32 * _733) + 288
    _749 = mem[_445]
    mem[_711 + (32 * _713) + (32 * _733) + 288] = mem[_445]
    mem[_711 + (32 * _713) + (32 * _733) + 320 len 32 * _749] = mem[_445 + 32 len 32 * _749]
    mem[_711 + 96] = (32 * _713) + (32 * _733) + (32 * _749) + 320
    _761 = mem[_529]
    mem[_711 + (32 * _713) + (32 * _733) + (32 * _749) + 320] = mem[_529]
    mem[_711 + (32 * _713) + (32 * _733) + (32 * _749) + 352 len 32 * _761] = mem[_529 + 32 len 32 * _761]
    mem[_711 + 128] = _692
    mem[_711 + 160] = _708
    mem[_711 + 192] = block.number
    return memory
      from mem[64]
       len _711 + (32 * _713) + (32 * _733) + (32 * _749) + (32 * _761) + -mem[64] + 352
}



}
