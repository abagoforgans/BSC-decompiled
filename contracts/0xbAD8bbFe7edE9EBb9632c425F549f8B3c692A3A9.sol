contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function get(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0x82ed13d100000000000000000000000000000000000000000000000000000000
    mem[324] = arg1
    mem[356] = arg2
    require ext_code.size(stor0)
    staticcall stor0.0x82ed13d1 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 160
    _5 = mem[320 len 4], Mask(224, 32, arg1) >> 32
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 == Mask(160, 32, arg1) >> 32
    require uint32(arg1), Mask(224, 32, arg2) >> 32 <= test266151307()
    require uint32(arg1), Mask(224, 32, arg2) >> 32 + 351 < return_data.size + 320
    _7 = mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 320]
    require mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and ceil32(mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 320]) + 352
    mem[ceil32(return_data.size) + 320] = mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 320]
    require uint32(arg1), Mask(224, 32, arg2) >> 32 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 352 len ceil32(_7)] = mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 352 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _171 = uint32(arg2), mem[388 len 28]
        require uint32(arg2), mem[388 len 28] == uint32(arg2), mem[388 len 28]
        _173 = mem[416]
        require mem[416] == bool(mem[416])
        _175 = mem[448]
        require mem[448] <= test266151307()
        require mem[448] + 351 < return_data.size + 320
        _177 = mem[mem[448] + 320]
        require mem[mem[448] + 320] <= test266151307()
        _179 = mem[64]
        require mem[64] + ceil32(mem[mem[448] + 320]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[448] + 320]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[mem[448] + 320]) + 32
        mem[_179] = mem[mem[448] + 320]
        require _175 + _177 + 32 <= return_data.size
        mem[_179 + 32 len ceil32(_177)] = mem[_175 + 352 len ceil32(_177)]
        if ceil32(_177) <= _177:
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = arg2
            require ext_code.size(stor1)
            staticcall stor1.0xc7dbadae with:
                    gas gas_remaining wei
                   args arg1, arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _345 = mem[_341]
            require mem[_341] == mem[_341]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = arg2
            require ext_code.size(stor2)
            staticcall stor2.0x8e86b125 with:
                    gas gas_remaining wei
                   args arg1, arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _361 = mem[_357]
            require mem[_357] == mem[_357]
            _365 = mem[64]
            mem[64] = mem[64] + 224
            mem[_365] = 0
            mem[_365 + 32] = 96
            mem[_365 + 64] = 0
            mem[_365 + 96] = 0
            mem[_365 + 128] = 96
            mem[_365 + 160] = 0
            mem[_365 + 192] = 0
            _367 = mem[64]
            mem[64] = mem[64] + 224
            mem[_367] = address(_5)
            mem[_367 + 32] = ceil32(return_data.size) + 320
            mem[_367 + 64] = _171
            mem[_367 + 96] = bool(_173)
            mem[_367 + 128] = _179
            mem[_367 + 160] = _345
            mem[_367 + 192] = _361
            mem[mem[64]] = 32
            mem[mem[64] + 32] = address(_5)
            mem[mem[64] + 64] = 224
            _385 = mem[ceil32(return_data.size) + 320]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 320]
            mem[mem[64] + 288 len ceil32(_385)] = mem[ceil32(return_data.size) + 352 len ceil32(_385)]
            if ceil32(_385) <= _385:
                mem[mem[64] + 96] = _171
                mem[mem[64] + 128] = bool(_173)
                mem[mem[64] + 160] = ceil32(_385) + 256
                _509 = mem[_179]
                mem[mem[64] + ceil32(_385) + 288] = mem[_179]
                mem[mem[64] + ceil32(_385) + 320 len ceil32(_509)] = mem[_179 + 32 len ceil32(_509)]
                if ceil32(_509) > _509:
                    mem[mem[64] + ceil32(_385) + _509 + 320] = 0
                return 32, address(_5), 
                       224,
                       _171,
                       bool(_173),
                       ceil32(_385) + 256,
                       _345,
                       _361,
                       mem[mem[64] + 256 len ceil32(_385) + ceil32(_509) + 64]
            mem[mem[64] + _385 + 288] = 0
            mem[mem[64] + 96] = _171
            mem[mem[64] + 128] = bool(_173)
            mem[mem[64] + 160] = ceil32(_385) + 256
            _513 = mem[_179]
            mem[mem[64] + ceil32(_385) + 288] = mem[_179]
            mem[mem[64] + ceil32(_385) + 320 len ceil32(_513)] = mem[_179 + 32 len ceil32(_513)]
            if ceil32(_513) > _513:
                mem[mem[64] + ceil32(_385) + _513 + 320] = 0
            return 32, address(_5), 
                   224,
                   _171,
                   bool(_173),
                   ceil32(_385) + 256,
                   _345,
                   _361,
                   mem[mem[64] + 256 len _385 + 32],
                   0,
                   mem[mem[64] + _385 + 320 len ceil32(_385) + ceil32(_513) - _385]
        mem[_179 + _177 + 32] = 0
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(stor1)
        staticcall stor1.0xc7dbadae with:
                gas gas_remaining wei
               args arg1, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _347 = mem[_343]
        require mem[_343] == mem[_343]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0x8e86b125 with:
                gas gas_remaining wei
               args arg1, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _363 = mem[_359]
        require mem[_359] == mem[_359]
        _368 = mem[64]
        mem[64] = mem[64] + 224
        mem[_368] = 0
        mem[_368 + 32] = 96
        mem[_368 + 64] = 0
        mem[_368 + 96] = 0
        mem[_368 + 128] = 96
        mem[_368 + 160] = 0
        mem[_368 + 192] = 0
        _372 = mem[64]
        mem[64] = mem[64] + 224
        mem[_372] = address(_5)
        mem[_372 + 32] = ceil32(return_data.size) + 320
        mem[_372 + 64] = _171
        mem[_372 + 96] = bool(_173)
        mem[_372 + 128] = _179
        mem[_372 + 160] = _347
        mem[_372 + 192] = _363
        mem[mem[64]] = 32
        mem[mem[64] + 32] = address(_5)
        mem[mem[64] + 64] = 224
        _387 = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 288 len ceil32(_387)] = mem[ceil32(return_data.size) + 352 len ceil32(_387)]
        if ceil32(_387) <= _387:
            mem[mem[64] + 96] = _171
            mem[mem[64] + 128] = bool(_173)
            mem[mem[64] + 160] = ceil32(_387) + 256
            _510 = mem[_179]
            mem[mem[64] + ceil32(_387) + 288] = mem[_179]
            mem[mem[64] + ceil32(_387) + 320 len ceil32(_510)] = mem[_179 + 32 len ceil32(_510)]
            if ceil32(_510) > _510:
                mem[mem[64] + ceil32(_387) + _510 + 320] = 0
            return 32, address(_5), 
                   224,
                   _171,
                   bool(_173),
                   ceil32(_387) + 256,
                   _347,
                   _363,
                   mem[mem[64] + 256 len ceil32(_387) + ceil32(_510) + 64]
        mem[mem[64] + _387 + 288] = 0
        mem[mem[64] + 96] = _171
        mem[mem[64] + 128] = bool(_173)
        mem[mem[64] + 160] = ceil32(_387) + 256
        _514 = mem[_179]
        mem[mem[64] + ceil32(_387) + 288] = mem[_179]
        mem[mem[64] + ceil32(_387) + 320 len ceil32(_514)] = mem[_179 + 32 len ceil32(_514)]
        if ceil32(_514) > _514:
            mem[mem[64] + ceil32(_387) + _514 + 320] = 0
        return 32, address(_5), 
               224,
               _171,
               bool(_173),
               ceil32(_387) + 256,
               _347,
               _363,
               mem[mem[64] + 256 len _387 + 32],
               0,
               mem[mem[64] + _387 + 320 len ceil32(_387) + ceil32(_514) - _387]
    mem[ceil32(return_data.size) + _7 + 352] = 0
    _172 = uint32(arg2), mem[388 len 28]
    require uint32(arg2), mem[388 len 28] == uint32(arg2), mem[388 len 28]
    _174 = mem[416]
    require mem[416] == bool(mem[416])
    _176 = mem[448]
    require mem[448] <= test266151307()
    require mem[448] + 351 < return_data.size + 320
    _178 = mem[mem[448] + 320]
    require mem[mem[448] + 320] <= test266151307()
    _180 = mem[64]
    require mem[64] + ceil32(mem[mem[448] + 320]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[448] + 320]) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(mem[mem[448] + 320]) + 32
    mem[_180] = mem[mem[448] + 320]
    require _176 + _178 + 32 <= return_data.size
    mem[_180 + 32 len ceil32(_178)] = mem[_176 + 352 len ceil32(_178)]
    if ceil32(_178) <= _178:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(stor1)
        staticcall stor1.0xc7dbadae with:
                gas gas_remaining wei
               args arg1, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _342 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _346 = mem[_342]
        require mem[_342] == mem[_342]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0x8e86b125 with:
                gas gas_remaining wei
               args arg1, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _362 = mem[_358]
        require mem[_358] == mem[_358]
        _366 = mem[64]
        mem[64] = mem[64] + 224
        mem[_366] = 0
        mem[_366 + 32] = 96
        mem[_366 + 64] = 0
        mem[_366 + 96] = 0
        mem[_366 + 128] = 96
        mem[_366 + 160] = 0
        mem[_366 + 192] = 0
        _369 = mem[64]
        mem[64] = mem[64] + 224
        mem[_369] = address(_5)
        mem[_369 + 32] = ceil32(return_data.size) + 320
        mem[_369 + 64] = _172
        mem[_369 + 96] = bool(_174)
        mem[_369 + 128] = _180
        mem[_369 + 160] = _346
        mem[_369 + 192] = _362
        mem[mem[64]] = 32
        mem[mem[64] + 32] = address(_5)
        mem[mem[64] + 64] = 224
        _386 = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 288 len ceil32(_386)] = mem[ceil32(return_data.size) + 352 len ceil32(_386)]
        if ceil32(_386) <= _386:
            mem[mem[64] + 96] = _172
            mem[mem[64] + 128] = bool(_174)
            mem[mem[64] + 160] = ceil32(_386) + 256
            _511 = mem[_180]
            mem[mem[64] + ceil32(_386) + 288] = mem[_180]
            mem[mem[64] + ceil32(_386) + 320 len ceil32(_511)] = mem[_180 + 32 len ceil32(_511)]
            if ceil32(_511) > _511:
                mem[mem[64] + ceil32(_386) + _511 + 320] = 0
            return 32, address(_5), 
                   224,
                   _172,
                   bool(_174),
                   ceil32(_386) + 256,
                   _346,
                   _362,
                   mem[mem[64] + 256 len ceil32(_386) + ceil32(_511) + 64]
        mem[mem[64] + _386 + 288] = 0
        mem[mem[64] + 96] = _172
        mem[mem[64] + 128] = bool(_174)
        mem[mem[64] + 160] = ceil32(_386) + 256
        _515 = mem[_180]
        mem[mem[64] + ceil32(_386) + 288] = mem[_180]
        mem[mem[64] + ceil32(_386) + 320 len ceil32(_515)] = mem[_180 + 32 len ceil32(_515)]
        if ceil32(_515) > _515:
            mem[mem[64] + ceil32(_386) + _515 + 320] = 0
        return 32, address(_5), 
               224,
               _172,
               bool(_174),
               ceil32(_386) + 256,
               _346,
               _362,
               mem[mem[64] + 256 len _386 + 32],
               0,
               mem[mem[64] + _386 + 320 len ceil32(_386) + ceil32(_515) - _386]
    mem[_180 + _178 + 32] = 0
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = arg2
    require ext_code.size(stor1)
    staticcall stor1.0xc7dbadae with:
            gas gas_remaining wei
           args arg1, arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _344 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _348 = mem[_344]
    require mem[_344] == mem[_344]
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = arg2
    require ext_code.size(stor2)
    staticcall stor2.0x8e86b125 with:
            gas gas_remaining wei
           args arg1, arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _360 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _364 = mem[_360]
    require mem[_360] == mem[_360]
    _370 = mem[64]
    mem[64] = mem[64] + 224
    mem[_370] = 0
    mem[_370 + 32] = 96
    mem[_370 + 64] = 0
    mem[_370 + 96] = 0
    mem[_370 + 128] = 96
    mem[_370 + 160] = 0
    mem[_370 + 192] = 0
    _374 = mem[64]
    mem[64] = mem[64] + 224
    mem[_374] = address(_5)
    mem[_374 + 32] = ceil32(return_data.size) + 320
    mem[_374 + 64] = _172
    mem[_374 + 96] = bool(_174)
    mem[_374 + 128] = _180
    mem[_374 + 160] = _348
    mem[_374 + 192] = _364
    mem[mem[64]] = 32
    mem[mem[64] + 32] = address(_5)
    mem[mem[64] + 64] = 224
    _388 = mem[ceil32(return_data.size) + 320]
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 320]
    mem[mem[64] + 288 len ceil32(_388)] = mem[ceil32(return_data.size) + 352 len ceil32(_388)]
    if ceil32(_388) <= _388:
        mem[mem[64] + 96] = _172
        mem[mem[64] + 128] = bool(_174)
        mem[mem[64] + 160] = ceil32(_388) + 256
        _512 = mem[_180]
        mem[mem[64] + ceil32(_388) + 288] = mem[_180]
        mem[mem[64] + ceil32(_388) + 320 len ceil32(_512)] = mem[_180 + 32 len ceil32(_512)]
        if ceil32(_512) > _512:
            mem[mem[64] + ceil32(_388) + _512 + 320] = 0
        return 32, address(_5), 
               224,
               _172,
               bool(_174),
               ceil32(_388) + 256,
               _348,
               _364,
               mem[mem[64] + 256 len ceil32(_388) + ceil32(_512) + 64]
    mem[mem[64] + _388 + 288] = 0
    mem[mem[64] + 96] = _172
    mem[mem[64] + 128] = bool(_174)
    mem[mem[64] + 160] = ceil32(_388) + 256
    _516 = mem[_180]
    mem[mem[64] + ceil32(_388) + 288] = mem[_180]
    mem[mem[64] + ceil32(_388) + 320 len ceil32(_516)] = mem[_180 + 32 len ceil32(_516)]
    if ceil32(_516) > _516:
        mem[mem[64] + ceil32(_388) + _516 + 320] = 0
    return 32, address(_5), 
           224,
           _172,
           bool(_174),
           ceil32(_388) + 256,
           _348,
           _364,
           mem[mem[64] + 256 len _388 + 32],
           0,
           mem[mem[64] + _388 + 320 len ceil32(_388) + ceil32(_516) - _388]
}



}
