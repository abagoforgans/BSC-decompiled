contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e94414e(?)
#
address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_dd737f37(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[164 len 64] = poolInfo(uint256 arg1), arg2, mem[164 len 28]
    staticcall address(arg1).mem[164 len 4] with:
            gas gas_remaining wei
           args mem[168]
    if not ext_call.success:
        revert with 0, 'failed to fetch mc data'
    if not return_data.size:
        return 32, 36, poolInfo(uint256 arg1), arg2, 0 >> 32, 0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function getUserInfo(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[196 len 96] = userInfo(uint256 arg1, address arg2), arg2, address(arg3), mem[196 len 28]
    staticcall arg1.mem[196 len 4] with:
            gas gas_remaining wei
           args mem[200 len 64]
    if not ext_call.success:
        revert with 0, 'failed to fetch user data'
    if not return_data.size:
        return 32, 68, userInfo(uint256 arg1, address arg2), arg2, arg3, 0 >> 288, 0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_ab289d73(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg4.length)) + 197 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 68) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(ceil32(arg4.length)) + arg4.length + 197] = 0
    mem[ceil32(ceil32(arg4.length)) + 197 len 96] = Mask(32, 224, sha3(Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 68) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * arg4.length) - 256)) >> 224, arg2, address(arg3), mem[ceil32(ceil32(arg4.length)) + 197 len 28]
    staticcall address(arg1).mem[ceil32(ceil32(arg4.length)) + 197 len 4] with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(arg4.length)) + 201 len 64]
    if not ext_call.success:
        revert with 0, 'failed to pending user data'
    if not return_data.size:
        return Array(len=arg4.length, data=arg4[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function getTokenData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if arg1 == stor2:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[416] = ext_call.return_data[31 len 1]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return 32, 256, 
               320,
               mem[447 len 1],
               0,
               ext_call.return_data[0],
               stor1,
               stor1,
               ext_call.return_data[0],
               13,
               'Wrapped Matic',
               0,
               6,
               'WMATIC',
               0
    mem[352] = ext_call.return_data[0]
    if not ext_call.success:
        return 32, 256, 320, 0, 0, 0, stor1, stor1, 0, 7, 'unknown', 0, 7, 'unknown', 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        mem[ceil32(return_data.size) + 608] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _31 = mem[ceil32(return_data.size) + 608]
        require mem[ceil32(return_data.size) + 608] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 639 < ceil32(return_data.size) + return_data.size + 608
        _36 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 608]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 608] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 608])) + 609 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 608])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 608])) + 609
        mem[(2 * ceil32(return_data.size)) + 608] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608] + 608]
        require _31 + _36 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 640 len ceil32(_36)] = mem[ceil32(return_data.size) + _31 + 640 len ceil32(_36)]
        if ceil32(_36) <= _36:
            mem[ceil32(return_data.size) + 352] = (2 * ceil32(return_data.size)) + 608
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _449 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _456 = mem[_449]
            require mem[_449] <= test266151307()
            require _449 + mem[_449] + 31 < _449 + return_data.size
            _460 = mem[_449 + mem[_449]]
            if mem[_449 + mem[_449]] > test266151307():
                revert with 'NH{q', 65
            if _449 + ceil32(return_data.size) + ceil32(ceil32(mem[_449 + mem[_449]])) + 1 > test266151307() or ceil32(ceil32(mem[_449 + mem[_449]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _449 + ceil32(return_data.size) + ceil32(ceil32(mem[_449 + mem[_449]])) + 1
            mem[_449 + ceil32(return_data.size)] = _460
            require _456 + _460 + 32 <= return_data.size
            mem[_449 + ceil32(return_data.size) + 32 len ceil32(_460)] = mem[_449 + _456 + 32 len ceil32(_460)]
            if ceil32(_460) <= _460:
                mem[ceil32(return_data.size) + 384] = _449 + ceil32(return_data.size)
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_996] == mem[_996 + 31 len 1]
                mem[ceil32(return_data.size) + 416] = mem[_996 + 31 len 1]
                mem[ceil32(return_data.size) + 448] = 0
                mem[mem[64] + 4] = stor1
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1060] == mem[_1060]
                mem[ceil32(return_data.size) + 480] = mem[_1060]
                mem[ceil32(return_data.size) + 512] = stor1
                mem[ceil32(return_data.size) + 544] = stor1
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1108] == mem[_1108]
                mem[ceil32(return_data.size) + 576] = mem[_1108]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 256
                _1144 = mem[(2 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 320 len ceil32(_1144)] = mem[(2 * ceil32(return_data.size)) + 640 len ceil32(_1144)]
                if ceil32(_1144) <= _1144:
                    mem[mem[64] + 64] = ceil32(_1144) + 288
                    mem[mem[64] + ceil32(_1144) + 320] = _460
                    mem[mem[64] + ceil32(_1144) + 352 len ceil32(_460)] = mem[_449 + ceil32(return_data.size) + 32 len ceil32(_460)]
                    if ceil32(_460) > _460:
                        mem[mem[64] + ceil32(_1144) + _460 + 352] = 0
                    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
                    mem[mem[64] + 128] = 0
                    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
                    mem[mem[64] + 192] = stor1
                    mem[mem[64] + 224] = stor1
                    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
                    return 32, 256, 
                           ceil32(_1144) + 288,
                           mem[mem[64] + 96],
                           0,
                           mem[mem[64] + 160],
                           stor1,
                           stor1,
                           mem[mem[64] + 256 len ceil32(_1144) + 64],
                           _460,
                           mem[mem[64] + ceil32(_1144) + 352 len ceil32(_460)]
                mem[mem[64] + _1144 + 320] = 0
                mem[mem[64] + 64] = ceil32(_1144) + 288
                mem[mem[64] + ceil32(_1144) + 320] = _460
                mem[mem[64] + ceil32(_1144) + 352 len ceil32(_460)] = mem[_449 + ceil32(return_data.size) + 32 len ceil32(_460)]
                if ceil32(_460) > _460:
                    mem[mem[64] + ceil32(_1144) + _460 + 352] = 0
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
                mem[mem[64] + 192] = stor1
                mem[mem[64] + 224] = stor1
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
                return 32, 256, 
                       ceil32(_1144) + 288,
                       mem[mem[64] + 96],
                       0,
                       mem[mem[64] + 160],
                       stor1,
                       stor1,
                       mem[mem[64] + 256 len _1144 + 64],
                       0,
                       mem[mem[64] + _1144 + 352 len ceil32(_1144) + ceil32(_460) - _1144]
            mem[_449 + ceil32(return_data.size) + _460 + 32] = 0
            mem[ceil32(return_data.size) + 384] = _449 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1000 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1000] == mem[_1000 + 31 len 1]
            mem[ceil32(return_data.size) + 416] = mem[_1000 + 31 len 1]
            mem[ceil32(return_data.size) + 448] = 0
            mem[mem[64] + 4] = stor1
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1064] == mem[_1064]
            mem[ceil32(return_data.size) + 480] = mem[_1064]
            mem[ceil32(return_data.size) + 512] = stor1
            mem[ceil32(return_data.size) + 544] = stor1
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1112] == mem[_1112]
            mem[ceil32(return_data.size) + 576] = mem[_1112]
            _1130 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 256
            _1146 = mem[(2 * ceil32(return_data.size)) + 608]
            mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 608]
            mem[mem[64] + 320 len ceil32(_1146)] = mem[(2 * ceil32(return_data.size)) + 640 len ceil32(_1146)]
            if ceil32(_1146) <= _1146:
                mem[mem[64] + 64] = ceil32(_1146) + 288
                mem[mem[64] + ceil32(_1146) + 320] = _460
                mem[mem[64] + ceil32(_1146) + 352 len ceil32(_460)] = mem[_449 + ceil32(return_data.size) + 32 len ceil32(_460)]
                if ceil32(_460) > _460:
                    mem[mem[64] + ceil32(_1146) + _460 + 352] = 0
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
                mem[mem[64] + 192] = stor1
                mem[mem[64] + 224] = stor1
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
                return 32, 256, 
                       ceil32(_1146) + 288,
                       mem[mem[64] + 96],
                       0,
                       mem[mem[64] + 160],
                       stor1,
                       stor1,
                       mem[mem[64] + 256 len ceil32(_1146) + 64],
                       _460,
                       mem[mem[64] + ceil32(_1146) + 352 len ceil32(_460)]
            mem[mem[64] + _1146 + 320] = 0
            mem[mem[64] + 64] = ceil32(_1146) + 288
            mem[_1130 + ceil32(_1146) + 320] = _460
            mem[_1130 + ceil32(_1146) + 352 len ceil32(_460)] = mem[_449 + ceil32(return_data.size) + 32 len ceil32(_460)]
            if ceil32(_460) > _460:
                mem[_1130 + ceil32(_1146) + _460 + 352] = 0
            mem[_1130 + 96] = mem[ceil32(return_data.size) + 447 len 1]
            mem[_1130 + 128] = 0
            mem[_1130 + 160] = mem[ceil32(return_data.size) + 480]
            mem[_1130 + 192] = stor1
            mem[_1130 + 224] = stor1
            mem[_1130 + 256] = mem[ceil32(return_data.size) + 576]
            return memory
              from mem[64]
               len _1130 + ceil32(_1146) + ceil32(_460) + -mem[64] + 352
        mem[(2 * ceil32(return_data.size)) + _36 + 640] = 0
        mem[ceil32(return_data.size) + 352] = (2 * ceil32(return_data.size)) + 608
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _453 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _458 = mem[_453]
        require mem[_453] <= test266151307()
        require _453 + mem[_453] + 31 < _453 + return_data.size
        _463 = mem[_453 + mem[_453]]
        if mem[_453 + mem[_453]] > test266151307():
            revert with 'NH{q', 65
        if _453 + ceil32(return_data.size) + ceil32(ceil32(mem[_453 + mem[_453]])) + 1 > test266151307() or ceil32(ceil32(mem[_453 + mem[_453]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _453 + ceil32(return_data.size) + ceil32(ceil32(mem[_453 + mem[_453]])) + 1
        mem[_453 + ceil32(return_data.size)] = _463
        require _458 + _463 + 32 <= return_data.size
        mem[_453 + ceil32(return_data.size) + 32 len ceil32(_463)] = mem[_453 + _458 + 32 len ceil32(_463)]
        if ceil32(_463) <= _463:
            mem[ceil32(return_data.size) + 384] = _453 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _997 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_997] == mem[_997 + 31 len 1]
            mem[ceil32(return_data.size) + 416] = mem[_997 + 31 len 1]
            mem[ceil32(return_data.size) + 448] = 0
            mem[mem[64] + 4] = stor1
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1061 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1061] == mem[_1061]
            mem[ceil32(return_data.size) + 480] = mem[_1061]
            mem[ceil32(return_data.size) + 512] = stor1
            mem[ceil32(return_data.size) + 544] = stor1
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1109] == mem[_1109]
            mem[ceil32(return_data.size) + 576] = mem[_1109]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 256
            _1145 = mem[(2 * ceil32(return_data.size)) + 608]
            mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 608]
            mem[mem[64] + 320 len ceil32(_1145)] = mem[(2 * ceil32(return_data.size)) + 640 len ceil32(_1145)]
            if ceil32(_1145) <= _1145:
                mem[mem[64] + 64] = ceil32(_1145) + 288
                mem[mem[64] + ceil32(_1145) + 320] = _463
                mem[mem[64] + ceil32(_1145) + 352 len ceil32(_463)] = mem[_453 + ceil32(return_data.size) + 32 len ceil32(_463)]
                if ceil32(_463) > _463:
                    mem[mem[64] + ceil32(_1145) + _463 + 352] = 0
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
                mem[mem[64] + 192] = stor1
                mem[mem[64] + 224] = stor1
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
                return 32, 256, 
                       ceil32(_1145) + 288,
                       mem[mem[64] + 96],
                       0,
                       mem[mem[64] + 160],
                       stor1,
                       stor1,
                       mem[mem[64] + 256 len ceil32(_1145) + 64],
                       _463,
                       mem[mem[64] + ceil32(_1145) + 352 len ceil32(_463)]
            mem[mem[64] + _1145 + 320] = 0
            mem[mem[64] + 64] = ceil32(_1145) + 288
            mem[mem[64] + ceil32(_1145) + 320] = _463
            mem[mem[64] + ceil32(_1145) + 352 len ceil32(_463)] = mem[_453 + ceil32(return_data.size) + 32 len ceil32(_463)]
            if ceil32(_463) > _463:
                mem[mem[64] + ceil32(_1145) + _463 + 352] = 0
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
            mem[mem[64] + 192] = stor1
            mem[mem[64] + 224] = stor1
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
            return 32, 256, 
                   ceil32(_1145) + 288,
                   mem[mem[64] + 96],
                   0,
                   mem[mem[64] + 160],
                   stor1,
                   stor1,
                   mem[mem[64] + 256 len _1145 + 64],
                   0,
                   mem[mem[64] + _1145 + 352 len ceil32(_1145) + ceil32(_463) - _1145]
        mem[_453 + ceil32(return_data.size) + _463 + 32] = 0
        mem[ceil32(return_data.size) + 384] = _453 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1001 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1001] == mem[_1001 + 31 len 1]
        mem[ceil32(return_data.size) + 416] = mem[_1001 + 31 len 1]
        mem[ceil32(return_data.size) + 448] = 0
        mem[mem[64] + 4] = stor1
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1065 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1065] == mem[_1065]
        mem[ceil32(return_data.size) + 480] = mem[_1065]
        mem[ceil32(return_data.size) + 512] = stor1
        mem[ceil32(return_data.size) + 544] = stor1
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1113] == mem[_1113]
        mem[ceil32(return_data.size) + 576] = mem[_1113]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        _1147 = mem[(2 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 320 len ceil32(_1147)] = mem[(2 * ceil32(return_data.size)) + 640 len ceil32(_1147)]
        if ceil32(_1147) <= _1147:
            mem[mem[64] + 64] = ceil32(_1147) + 288
            mem[mem[64] + ceil32(_1147) + 320] = _463
            mem[mem[64] + ceil32(_1147) + 352 len ceil32(_463)] = mem[_453 + ceil32(return_data.size) + 32 len ceil32(_463)]
            if ceil32(_463) > _463:
                mem[mem[64] + ceil32(_1147) + _463 + 352] = 0
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
            mem[mem[64] + 192] = stor1
            mem[mem[64] + 224] = stor1
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
            return 32, 256, 
                   ceil32(_1147) + 288,
                   mem[mem[64] + 96],
                   0,
                   mem[mem[64] + 160],
                   stor1,
                   stor1,
                   mem[mem[64] + 256 len ceil32(_1147) + 64],
                   _463,
                   mem[mem[64] + ceil32(_1147) + 352 len ceil32(_463)]
        mem[mem[64] + _1147 + 320] = 0
        mem[mem[64] + 64] = ceil32(_1147) + 288
        mem[mem[64] + ceil32(_1147) + 320] = _463
        mem[mem[64] + ceil32(_1147) + 352 len ceil32(_463)] = mem[_453 + ceil32(return_data.size) + 32 len ceil32(_463)]
        if ceil32(_463) > _463:
            mem[mem[64] + ceil32(_1147) + _463 + 352] = 0
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 447 len 1]
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 192] = stor1
        mem[mem[64] + 224] = stor1
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 576]
        return 32, 256, 
               ceil32(_1147) + 288,
               mem[mem[64] + 96],
               0,
               mem[mem[64] + 160],
               stor1,
               stor1,
               mem[mem[64] + 256 len _1147 + 64],
               0,
               mem[mem[64] + _1147 + 352 len ceil32(_1147) + ceil32(_463) - _1147]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 608] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _48 = mem[(2 * ceil32(return_data.size)) + 608]
    require mem[(2 * ceil32(return_data.size)) + 608] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
    _53 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 608]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 608] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 608])) + 609 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 608])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 608])) + 609
    mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608] + 608]
    require _48 + _53 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 640 len ceil32(_53)] = mem[(2 * ceil32(return_data.size)) + _48 + 640 len ceil32(_53)]
    if ceil32(_53) <= _53:
        mem[(2 * ceil32(return_data.size)) + 352] = (4 * ceil32(return_data.size)) + 608
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _450 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _457 = mem[_450]
        require mem[_450] <= test266151307()
        require _450 + mem[_450] + 31 < _450 + return_data.size
        _461 = mem[_450 + mem[_450]]
        if mem[_450 + mem[_450]] > test266151307():
            revert with 'NH{q', 65
        if _450 + ceil32(return_data.size) + ceil32(ceil32(mem[_450 + mem[_450]])) + 1 > test266151307() or ceil32(ceil32(mem[_450 + mem[_450]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _450 + ceil32(return_data.size) + ceil32(ceil32(mem[_450 + mem[_450]])) + 1
        mem[_450 + ceil32(return_data.size)] = _461
        require _457 + _461 + 32 <= return_data.size
        mem[_450 + ceil32(return_data.size) + 32 len ceil32(_461)] = mem[_450 + _457 + 32 len ceil32(_461)]
        if ceil32(_461) <= _461:
            mem[(2 * ceil32(return_data.size)) + 384] = _450 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _998 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_998] == mem[_998 + 31 len 1]
            mem[(2 * ceil32(return_data.size)) + 416] = mem[_998 + 31 len 1]
            mem[(2 * ceil32(return_data.size)) + 448] = 1
            mem[mem[64] + 4] = stor1
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1062 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1062] == mem[_1062]
            mem[(2 * ceil32(return_data.size)) + 480] = mem[_1062]
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1110] == mem[_1110 + 12 len 20]
            mem[(2 * ceil32(return_data.size)) + 512] = mem[_1110 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1138] == mem[_1138 + 12 len 20]
            mem[(2 * ceil32(return_data.size)) + 544] = mem[_1138 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1170] == mem[_1170]
            mem[(2 * ceil32(return_data.size)) + 576] = mem[_1170]
            _1198 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 256
            _1222 = mem[(4 * ceil32(return_data.size)) + 608]
            mem[mem[64] + 288] = mem[(4 * ceil32(return_data.size)) + 608]
            mem[mem[64] + 320 len ceil32(_1222)] = mem[(4 * ceil32(return_data.size)) + 640 len ceil32(_1222)]
            if ceil32(_1222) <= _1222:
                mem[mem[64] + 64] = ceil32(_1222) + 288
                mem[mem[64] + ceil32(_1222) + 320] = _461
                mem[mem[64] + ceil32(_1222) + 352 len ceil32(_461)] = mem[_450 + ceil32(return_data.size) + 32 len ceil32(_461)]
                if ceil32(_461) > _461:
                    mem[mem[64] + ceil32(_1222) + _461 + 352] = 0
                mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
                mem[mem[64] + 128] = 1
                mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
                mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
                mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 576]
                return 32, 256, 
                       ceil32(_1222) + 288,
                       mem[mem[64] + 96],
                       1,
                       mem[mem[64] + 160 len ceil32(_1222) + 160],
                       _461,
                       mem[mem[64] + ceil32(_1222) + 352 len ceil32(_461)]
            mem[mem[64] + _1222 + 320] = 0
            mem[mem[64] + 64] = ceil32(_1222) + 288
            mem[_1198 + ceil32(_1222) + 320] = _461
            mem[_1198 + ceil32(_1222) + 352 len ceil32(_461)] = mem[_450 + ceil32(return_data.size) + 32 len ceil32(_461)]
            if ceil32(_461) > _461:
                mem[_1198 + ceil32(_1222) + _461 + 352] = 0
            mem[_1198 + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
            mem[_1198 + 128] = 1
            mem[_1198 + 160] = mem[(2 * ceil32(return_data.size)) + 480]
            mem[_1198 + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
            mem[_1198 + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
            mem[_1198 + 256] = mem[(2 * ceil32(return_data.size)) + 576]
            return memory
              from mem[64]
               len _1198 + ceil32(_1222) + ceil32(_461) + -mem[64] + 352
        mem[_450 + ceil32(return_data.size) + _461 + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 384] = _450 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1002 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1002] == mem[_1002 + 31 len 1]
        mem[(2 * ceil32(return_data.size)) + 416] = mem[_1002 + 31 len 1]
        mem[(2 * ceil32(return_data.size)) + 448] = 1
        mem[mem[64] + 4] = stor1
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1066 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1066] == mem[_1066]
        mem[(2 * ceil32(return_data.size)) + 480] = mem[_1066]
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1114] == mem[_1114 + 12 len 20]
        mem[(2 * ceil32(return_data.size)) + 512] = mem[_1114 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1142] == mem[_1142 + 12 len 20]
        mem[(2 * ceil32(return_data.size)) + 544] = mem[_1142 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1176 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1176] == mem[_1176]
        mem[(2 * ceil32(return_data.size)) + 576] = mem[_1176]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        _1230 = mem[(4 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 288] = mem[(4 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 320 len ceil32(_1230)] = mem[(4 * ceil32(return_data.size)) + 640 len ceil32(_1230)]
        if ceil32(_1230) <= _1230:
            mem[mem[64] + 64] = ceil32(_1230) + 288
            mem[mem[64] + ceil32(_1230) + 320] = _461
            mem[mem[64] + ceil32(_1230) + 352 len ceil32(_461)] = mem[_450 + ceil32(return_data.size) + 32 len ceil32(_461)]
            if ceil32(_461) > _461:
                mem[mem[64] + ceil32(_1230) + _461 + 352] = 0
            mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
            mem[mem[64] + 128] = 1
            mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 480]
            mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
            mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
            mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 576]
            return 32, 256, 
                   ceil32(_1230) + 288,
                   mem[mem[64] + 96],
                   1,
                   mem[mem[64] + 160 len ceil32(_1230) + 160],
                   _461,
                   mem[mem[64] + ceil32(_1230) + 352 len ceil32(_461)]
        mem[mem[64] + _1230 + 320] = 0
        mem[mem[64] + 64] = ceil32(_1230) + 288
        mem[mem[64] + ceil32(_1230) + 320] = _461
        mem[mem[64] + ceil32(_1230) + 352 len ceil32(_461)] = mem[_450 + ceil32(return_data.size) + 32 len ceil32(_461)]
        if ceil32(_461) > _461:
            mem[mem[64] + ceil32(_1230) + _461 + 352] = 0
        mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
        mem[mem[64] + 128] = 1
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 480]
        mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
        mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
        mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 576]
        return 32, 256, 
               ceil32(_1230) + 288,
               mem[mem[64] + 96],
               1,
               mem[mem[64] + 160 len _1230 + 160],
               0,
               mem[mem[64] + _1230 + 352 len ceil32(_1230) + ceil32(_461) - _1230]
    mem[(4 * ceil32(return_data.size)) + _53 + 640] = 0
    mem[(2 * ceil32(return_data.size)) + 352] = (4 * ceil32(return_data.size)) + 608
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _454 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _459 = mem[_454]
    require mem[_454] <= test266151307()
    require _454 + mem[_454] + 31 < _454 + return_data.size
    _464 = mem[_454 + mem[_454]]
    if mem[_454 + mem[_454]] > test266151307():
        revert with 'NH{q', 65
    if _454 + ceil32(return_data.size) + ceil32(ceil32(mem[_454 + mem[_454]])) + 1 > test266151307() or ceil32(ceil32(mem[_454 + mem[_454]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _454 + ceil32(return_data.size) + ceil32(ceil32(mem[_454 + mem[_454]])) + 1
    mem[_454 + ceil32(return_data.size)] = _464
    require _459 + _464 + 32 <= return_data.size
    mem[_454 + ceil32(return_data.size) + 32 len ceil32(_464)] = mem[_454 + _459 + 32 len ceil32(_464)]
    if ceil32(_464) <= _464:
        mem[(2 * ceil32(return_data.size)) + 384] = _454 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _999 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_999] == mem[_999 + 31 len 1]
        mem[(2 * ceil32(return_data.size)) + 416] = mem[_999 + 31 len 1]
        mem[(2 * ceil32(return_data.size)) + 448] = 1
        mem[mem[64] + 4] = stor1
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1063 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1063] == mem[_1063]
        mem[(2 * ceil32(return_data.size)) + 480] = mem[_1063]
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1111] == mem[_1111 + 12 len 20]
        mem[(2 * ceil32(return_data.size)) + 512] = mem[_1111 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1139] == mem[_1139 + 12 len 20]
        mem[(2 * ceil32(return_data.size)) + 544] = mem[_1139 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1171] == mem[_1171]
        mem[(2 * ceil32(return_data.size)) + 576] = mem[_1171]
        _1199 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        _1223 = mem[(4 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 288] = mem[(4 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 320 len ceil32(_1223)] = mem[(4 * ceil32(return_data.size)) + 640 len ceil32(_1223)]
        if ceil32(_1223) <= _1223:
            mem[mem[64] + 64] = ceil32(_1223) + 288
            mem[mem[64] + ceil32(_1223) + 320] = _464
            mem[mem[64] + ceil32(_1223) + 352 len ceil32(_464)] = mem[_454 + ceil32(return_data.size) + 32 len ceil32(_464)]
            if ceil32(_464) > _464:
                mem[mem[64] + ceil32(_1223) + _464 + 352] = 0
            mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
            mem[mem[64] + 128] = 1
            mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 480]
            mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
            mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
            mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 576]
            return 32, 256, 
                   ceil32(_1223) + 288,
                   mem[mem[64] + 96],
                   1,
                   mem[mem[64] + 160 len ceil32(_1223) + 160],
                   _464,
                   mem[mem[64] + ceil32(_1223) + 352 len ceil32(_464)]
        mem[mem[64] + _1223 + 320] = 0
        mem[mem[64] + 64] = ceil32(_1223) + 288
        mem[_1199 + ceil32(_1223) + 320] = _464
        mem[_1199 + ceil32(_1223) + 352 len ceil32(_464)] = mem[_454 + ceil32(return_data.size) + 32 len ceil32(_464)]
        if ceil32(_464) > _464:
            mem[_1199 + ceil32(_1223) + _464 + 352] = 0
        mem[_1199 + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
        mem[_1199 + 128] = 1
        mem[_1199 + 160] = mem[(2 * ceil32(return_data.size)) + 480]
        mem[_1199 + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
        mem[_1199 + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
        mem[_1199 + 256] = mem[(2 * ceil32(return_data.size)) + 576]
        return memory
          from mem[64]
           len _1199 + ceil32(_1223) + ceil32(_464) + -mem[64] + 352
    mem[_454 + ceil32(return_data.size) + _464 + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 384] = _454 + ceil32(return_data.size)
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1003 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1003] == mem[_1003 + 31 len 1]
    mem[(2 * ceil32(return_data.size)) + 416] = mem[_1003 + 31 len 1]
    mem[(2 * ceil32(return_data.size)) + 448] = 1
    mem[mem[64] + 4] = stor1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1067 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1067] == mem[_1067]
    mem[(2 * ceil32(return_data.size)) + 480] = mem[_1067]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1115] == mem[_1115 + 12 len 20]
    mem[(2 * ceil32(return_data.size)) + 512] = mem[_1115 + 12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1143 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1143] == mem[_1143 + 12 len 20]
    mem[(2 * ceil32(return_data.size)) + 544] = mem[_1143 + 12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1177 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1177] == mem[_1177]
    mem[(2 * ceil32(return_data.size)) + 576] = mem[_1177]
    _1207 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 256
    _1231 = mem[(4 * ceil32(return_data.size)) + 608]
    mem[mem[64] + 288] = mem[(4 * ceil32(return_data.size)) + 608]
    mem[mem[64] + 320 len ceil32(_1231)] = mem[(4 * ceil32(return_data.size)) + 640 len ceil32(_1231)]
    if ceil32(_1231) <= _1231:
        mem[mem[64] + 64] = ceil32(_1231) + 288
        mem[mem[64] + ceil32(_1231) + 320] = _464
        mem[mem[64] + ceil32(_1231) + 352 len ceil32(_464)] = mem[_454 + ceil32(return_data.size) + 32 len ceil32(_464)]
        if ceil32(_464) > _464:
            mem[mem[64] + ceil32(_1231) + _464 + 352] = 0
        mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
        mem[mem[64] + 128] = 1
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 480]
        mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
        mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
        mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 576]
        return 32, 256, 
               ceil32(_1231) + 288,
               mem[mem[64] + 96],
               1,
               mem[mem[64] + 160 len ceil32(_1231) + 160],
               _464,
               mem[mem[64] + ceil32(_1231) + 352 len ceil32(_464)]
    mem[mem[64] + _1231 + 320] = 0
    mem[mem[64] + 64] = ceil32(_1231) + 288
    mem[_1207 + ceil32(_1231) + 320] = _464
    mem[_1207 + ceil32(_1231) + 352 len ceil32(_464)] = mem[_454 + ceil32(return_data.size) + 32 len ceil32(_464)]
    if ceil32(_464) > _464:
        mem[_1207 + ceil32(_1231) + _464 + 352] = 0
    mem[_1207 + 96] = mem[(2 * ceil32(return_data.size)) + 447 len 1]
    mem[_1207 + 128] = 1
    mem[_1207 + 160] = mem[(2 * ceil32(return_data.size)) + 480]
    mem[_1207 + 192] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
    mem[_1207 + 224] = mem[(2 * ceil32(return_data.size)) + 556 len 20]
    mem[_1207 + 256] = mem[(2 * ceil32(return_data.size)) + 576]
    return memory
      from mem[64]
       len _1207 + ceil32(_1231) + ceil32(_464) + -mem[64] + 352
}



}
