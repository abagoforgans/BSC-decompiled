contract main {




// =====================  Runtime code  =====================


#
#  - smartSwapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - viewSplitExactOut(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - smartSwapExactOut(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
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

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function multihopBatchSwapExactIn(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256[][] arg6, address arg7, address arg8, uint256 arg9, uint256 arg10) payable {
    require calldata.size - 4 >= 160
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
        _223 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32
        mem[_223] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + (192 * cd[(arg1 + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = arg1 + cd[s] + 68
        w = _223 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require calldata.size - v >= 192
            _455 = mem[64]
            require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
            mem[64] = mem[64] + 192
            require cd[v] == address(cd[v])
            mem[_455] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_455 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_455 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_455 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_455 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_455 + 160] = cd[(v + 160)]
            mem[w] = _455
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[t] = _223
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[96]
        idx = 0
        while idx < _446:
            require idx < mem[96]
            if var205003 >= mem[mem[(32 * idx) + 128]]:
                if var205004 < var205004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _1309 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1309] = 0
                mem[_1309 + 32] = 0
                mem[_1309 + 64] = 0
                mem[_1309 + 96] = 0
                mem[_1309 + 128] = 0
                mem[_1309 + 160] = 0
                require idx < mem[96]
                require var209002 < mem[mem[(32 * idx) + 128]]
                _1318 = mem[(32 * var209002) + mem[(32 * idx) + 128] + 32]
                _1319 = mem[mem[(32 * var209002) + mem[(32 * idx) + 128] + 32] + 32]
                if var209002 != 1:
                    _1322 = mem[mem[(32 * var209002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1322)
                    require ext_code.size(address(_1319))
                    staticcall address(_1319).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_1322)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1333] == mem[_1333]
                    if mem[_1333] <= 0:
                        _1346 = mem[_1318 + 96]
                        mem[mem[64] + 4] = mem[_1318 + 12 len 20]
                        mem[mem[64] + 36] = _1346
                        require ext_code.size(address(_1319))
                        call address(_1319).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1346
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1366] == bool(mem[_1366])
                        _1391 = mem[_1318 + 96]
                        _1392 = mem[_1318 + 64]
                        _1393 = mem[_1318 + 128]
                        _1394 = mem[_1318 + 160]
                        mem[mem[64] + 4] = mem[_1318 + 44 len 20]
                        mem[mem[64] + 36] = _1391
                        mem[mem[64] + 68] = address(_1392)
                        mem[mem[64] + 100] = _1393
                        mem[mem[64] + 132] = _1394
                        require ext_code.size(address(_1322))
                        call address(_1322).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1391, address(_1392), _1393, _1394
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1455] == mem[_1455]
                        require mem[_1455 + 32] == mem[_1455 + 32]
                        require idx < mem[96]
                        if var209002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var209002 = var209002 + 1
                            var209003 = mem[_1455]
                            continue 
                        if mem[_1455] < mem[_1455]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_1318 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_1319))
                        call address(_1319).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1373] == bool(mem[_1373])
                        _1412 = mem[_1318 + 96]
                        mem[mem[64] + 4] = mem[_1318 + 12 len 20]
                        mem[mem[64] + 36] = _1412
                        require ext_code.size(address(_1319))
                        call address(_1319).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1412
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1425] == bool(mem[_1425])
                        _1442 = mem[_1318 + 96]
                        _1443 = mem[_1318 + 64]
                        _1444 = mem[_1318 + 128]
                        _1445 = mem[_1318 + 160]
                        mem[mem[64] + 4] = mem[_1318 + 44 len 20]
                        mem[mem[64] + 36] = _1442
                        mem[mem[64] + 68] = address(_1443)
                        mem[mem[64] + 100] = _1444
                        mem[mem[64] + 132] = _1445
                        require ext_code.size(address(_1322))
                        call address(_1322).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1442, address(_1443), _1444, _1445
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1493] == mem[_1493]
                        require mem[_1493 + 32] == mem[_1493 + 32]
                        require idx < mem[96]
                        if var209002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var209002 = var209002 + 1
                            var209003 = mem[_1493]
                            continue 
                        if mem[_1493] < mem[_1493]:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var209002) + mem[(32 * idx) + 128] + 32] + 96] = var209003
                    _1326 = mem[_1318]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1326)
                    require ext_code.size(address(_1319))
                    staticcall address(_1319).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_1326)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1335] == mem[_1335]
                    if mem[_1335] <= 0:
                        _1356 = mem[_1318 + 96]
                        mem[mem[64] + 4] = mem[_1318 + 12 len 20]
                        mem[mem[64] + 36] = _1356
                        require ext_code.size(address(_1319))
                        call address(_1319).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1356
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1370] == bool(mem[_1370])
                        _1403 = mem[_1318 + 96]
                        _1404 = mem[_1318 + 64]
                        _1405 = mem[_1318 + 128]
                        _1406 = mem[_1318 + 160]
                        mem[mem[64] + 4] = mem[_1318 + 44 len 20]
                        mem[mem[64] + 36] = _1403
                        mem[mem[64] + 68] = address(_1404)
                        mem[mem[64] + 100] = _1405
                        mem[mem[64] + 132] = _1406
                        require ext_code.size(address(_1326))
                        call address(_1326).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1403, address(_1404), _1405, _1406
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1463 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1463] == mem[_1463]
                        require mem[_1463 + 32] == mem[_1463 + 32]
                        require idx < mem[96]
                        if var209002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var209002 = var209002 + 1
                            var209003 = mem[_1463]
                            continue 
                        if mem[_1463] < mem[_1463]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_1318 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_1319))
                        call address(_1319).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1377] == bool(mem[_1377])
                        _1418 = mem[_1318 + 96]
                        mem[mem[64] + 4] = mem[_1318 + 12 len 20]
                        mem[mem[64] + 36] = _1418
                        require ext_code.size(address(_1319))
                        call address(_1319).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1418
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1427] == bool(mem[_1427])
                        _1457 = mem[_1318 + 96]
                        _1458 = mem[_1318 + 64]
                        _1459 = mem[_1318 + 128]
                        _1460 = mem[_1318 + 160]
                        mem[mem[64] + 4] = mem[_1318 + 44 len 20]
                        mem[mem[64] + 36] = _1457
                        mem[mem[64] + 68] = address(_1458)
                        mem[mem[64] + 100] = _1459
                        mem[mem[64] + 132] = _1460
                        require ext_code.size(address(_1326))
                        call address(_1326).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1457, address(_1458), _1459, _1460
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1497] == mem[_1497]
                        require mem[_1497 + 32] == mem[_1497 + 32]
                        require idx < mem[96]
                        if var209002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var209002 = var209002 + 1
                            var209003 = mem[_1497]
                            continue 
                        if mem[_1497] < mem[_1497]:
                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 < arg5:
            revert with 0, 'ERR_LIMIT_OUT'
        mem[mem[64] + 4] = this.address
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _490 = mem[_484]
            require mem[_484] == mem[_484]
            if mem[_484]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_484]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_484] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _490
                    require ext_code.size(arg2)
                    call arg2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _490
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _564 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_564] == bool(mem[_564])
                    if not mem[_564]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _491 = mem[_485]
            require mem[_485] == mem[_485]
            if mem[_485]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_485]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_485] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _491
                    require ext_code.size(arg2)
                    call arg2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _491
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _565 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_565] == bool(mem[_565])
                    if not mem[_565]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg4
        require ext_code.size(arg2)
        call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _245 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_245] == bool(mem[_245])
        if not mem[_245]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _445 = mem[96]
        idx = 0
        while idx < _445:
            require idx < mem[96]
            if var241003 >= mem[mem[(32 * idx) + 128]]:
                if var241004 < var241004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _1308 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1308] = 0
                mem[_1308 + 32] = 0
                mem[_1308 + 64] = 0
                mem[_1308 + 96] = 0
                mem[_1308 + 128] = 0
                mem[_1308 + 160] = 0
                require idx < mem[96]
                require var245002 < mem[mem[(32 * idx) + 128]]
                _1316 = mem[(32 * var245002) + mem[(32 * idx) + 128] + 32]
                _1317 = mem[mem[(32 * var245002) + mem[(32 * idx) + 128] + 32] + 32]
                if var245002 != 1:
                    _1320 = mem[mem[(32 * var245002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1320)
                    require ext_code.size(address(_1317))
                    staticcall address(_1317).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_1320)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1332] == mem[_1332]
                    if mem[_1332] <= 0:
                        _1341 = mem[_1316 + 96]
                        mem[mem[64] + 4] = mem[_1316 + 12 len 20]
                        mem[mem[64] + 36] = _1341
                        require ext_code.size(address(_1317))
                        call address(_1317).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1341
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1364 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1364] == bool(mem[_1364])
                        _1385 = mem[_1316 + 96]
                        _1386 = mem[_1316 + 64]
                        _1387 = mem[_1316 + 128]
                        _1388 = mem[_1316 + 160]
                        mem[mem[64] + 4] = mem[_1316 + 44 len 20]
                        mem[mem[64] + 36] = _1385
                        mem[mem[64] + 68] = address(_1386)
                        mem[mem[64] + 100] = _1387
                        mem[mem[64] + 132] = _1388
                        require ext_code.size(address(_1320))
                        call address(_1320).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1385, address(_1386), _1387, _1388
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1448] == mem[_1448]
                        require mem[_1448 + 32] == mem[_1448 + 32]
                        require idx < mem[96]
                        if var245002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var245002 = var245002 + 1
                            var245003 = mem[_1448]
                            continue 
                        if mem[_1448] < mem[_1448]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_1316 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_1317))
                        call address(_1317).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1372] == bool(mem[_1372])
                        _1409 = mem[_1316 + 96]
                        mem[mem[64] + 4] = mem[_1316 + 12 len 20]
                        mem[mem[64] + 36] = _1409
                        require ext_code.size(address(_1317))
                        call address(_1317).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1409
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1424] == bool(mem[_1424])
                        _1435 = mem[_1316 + 96]
                        _1436 = mem[_1316 + 64]
                        _1437 = mem[_1316 + 128]
                        _1438 = mem[_1316 + 160]
                        mem[mem[64] + 4] = mem[_1316 + 44 len 20]
                        mem[mem[64] + 36] = _1435
                        mem[mem[64] + 68] = address(_1436)
                        mem[mem[64] + 100] = _1437
                        mem[mem[64] + 132] = _1438
                        require ext_code.size(address(_1320))
                        call address(_1320).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1435, address(_1436), _1437, _1438
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1492] == mem[_1492]
                        require mem[_1492 + 32] == mem[_1492 + 32]
                        require idx < mem[96]
                        if var245002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var245002 = var245002 + 1
                            var245003 = mem[_1492]
                            continue 
                        if mem[_1492] < mem[_1492]:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var245002) + mem[(32 * idx) + 128] + 32] + 96] = var245003
                    _1324 = mem[_1316]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1324)
                    require ext_code.size(address(_1317))
                    staticcall address(_1317).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_1324)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1334] == mem[_1334]
                    if mem[_1334] <= 0:
                        _1351 = mem[_1316 + 96]
                        mem[mem[64] + 4] = mem[_1316 + 12 len 20]
                        mem[mem[64] + 36] = _1351
                        require ext_code.size(address(_1317))
                        call address(_1317).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1351
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1368 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1368] == bool(mem[_1368])
                        _1397 = mem[_1316 + 96]
                        _1398 = mem[_1316 + 64]
                        _1399 = mem[_1316 + 128]
                        _1400 = mem[_1316 + 160]
                        mem[mem[64] + 4] = mem[_1316 + 44 len 20]
                        mem[mem[64] + 36] = _1397
                        mem[mem[64] + 68] = address(_1398)
                        mem[mem[64] + 100] = _1399
                        mem[mem[64] + 132] = _1400
                        require ext_code.size(address(_1324))
                        call address(_1324).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1397, address(_1398), _1399, _1400
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1462] == mem[_1462]
                        require mem[_1462 + 32] == mem[_1462 + 32]
                        require idx < mem[96]
                        if var245002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var245002 = var245002 + 1
                            var245003 = mem[_1462]
                            continue 
                        if mem[_1462] < mem[_1462]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_1316 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_1317))
                        call address(_1317).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1375] == bool(mem[_1375])
                        _1415 = mem[_1316 + 96]
                        mem[mem[64] + 4] = mem[_1316 + 12 len 20]
                        mem[mem[64] + 36] = _1415
                        require ext_code.size(address(_1317))
                        call address(_1317).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1415
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1426] == bool(mem[_1426])
                        _1450 = mem[_1316 + 96]
                        _1451 = mem[_1316 + 64]
                        _1452 = mem[_1316 + 128]
                        _1453 = mem[_1316 + 160]
                        mem[mem[64] + 4] = mem[_1316 + 44 len 20]
                        mem[mem[64] + 36] = _1450
                        mem[mem[64] + 68] = address(_1451)
                        mem[mem[64] + 100] = _1452
                        mem[mem[64] + 132] = _1453
                        require ext_code.size(address(_1324))
                        call address(_1324).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1450, address(_1451), _1452, _1453
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1495] == mem[_1495]
                        require mem[_1495 + 32] == mem[_1495 + 32]
                        require idx < mem[96]
                        if var245002 + 1 < mem[mem[(32 * idx) + 128]]:
                            var245002 = var245002 + 1
                            var245003 = mem[_1495]
                            continue 
                        if mem[_1495] < mem[_1495]:
                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 < arg5:
            revert with 0, 'ERR_LIMIT_OUT'
        mem[mem[64] + 4] = this.address
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _488 = mem[_482]
            require mem[_482] == mem[_482]
            if mem[_482]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_482]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_482] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _488
                    require ext_code.size(arg2)
                    call arg2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _488
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == bool(mem[_562])
                    if not mem[_562]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _489 = mem[_483]
            require mem[_483] == mem[_483]
            if mem[_483]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_483]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_483] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _489
                    require ext_code.size(arg2)
                    call arg2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _489
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_563] == bool(mem[_563])
                    if not mem[_563]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}

function batchSwapExactIn(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256[] arg6, address arg7, address arg8, uint256 arg9, uint256 arg10) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (192 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 192
        _216 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_216] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_216 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_216 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_216 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_216 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_216 + 160] = cd[(s + 160)]
        mem[t] = _216
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _435 = mem[96]
        idx = 0
        s = 0
        while idx < _435:
            _439 = mem[64]
            mem[64] = mem[64] + 192
            mem[_439] = 0
            mem[_439 + 32] = 0
            mem[_439 + 64] = 0
            mem[_439 + 96] = 0
            mem[_439 + 128] = 0
            mem[_439 + 160] = 0
            require idx < mem[96]
            _446 = mem[(32 * idx) + 128]
            _447 = mem[mem[(32 * idx) + 128] + 32]
            _448 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_448)
            require ext_code.size(address(_447))
            staticcall address(_447).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_448)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_477] == mem[_477]
            if mem[_477] <= 0:
                _514 = mem[_446 + 96]
                mem[mem[64] + 4] = mem[_446 + 12 len 20]
                mem[mem[64] + 36] = _514
                require ext_code.size(address(_447))
                call address(_447).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _514
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_574] == bool(mem[_574])
                _613 = mem[_446 + 96]
                _614 = mem[_446 + 64]
                _615 = mem[_446 + 128]
                _616 = mem[_446 + 160]
                mem[mem[64] + 4] = mem[_446 + 44 len 20]
                mem[mem[64] + 36] = _613
                mem[mem[64] + 68] = address(_614)
                mem[mem[64] + 100] = _615
                mem[mem[64] + 132] = _616
                require ext_code.size(address(_448))
                call address(_448).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613, address(_614), _615, _616
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_865] == mem[_865]
                require mem[_865 + 32] == mem[_865 + 32]
                if s + mem[_865] < mem[_865]:
                    revert with 0, 'SafeMath: addition overflow'
                _435 = mem[96]
                idx = idx + 1
                s = s + mem[_865]
                continue 
            mem[mem[64] + 4] = mem[_446 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_447))
            call address(_447).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _581 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_581] == bool(mem[_581])
            _638 = mem[_446 + 96]
            mem[mem[64] + 4] = mem[_446 + 12 len 20]
            mem[mem[64] + 36] = _638
            require ext_code.size(address(_447))
            call address(_447).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _638
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
            _843 = mem[_446 + 96]
            _844 = mem[_446 + 64]
            _845 = mem[_446 + 128]
            _846 = mem[_446 + 160]
            mem[mem[64] + 4] = mem[_446 + 44 len 20]
            mem[mem[64] + 36] = _843
            mem[mem[64] + 68] = address(_844)
            mem[mem[64] + 100] = _845
            mem[mem[64] + 132] = _846
            require ext_code.size(address(_448))
            call address(_448).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _843, address(_844), _845, _846
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _993 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_993] == mem[_993]
            require mem[_993 + 32] == mem[_993 + 32]
            if s + mem[_993] < mem[_993]:
                revert with 0, 'SafeMath: addition overflow'
            _435 = mem[96]
            idx = idx + 1
            s = s + mem[_993]
            continue 
        if s < arg5:
            revert with 0, 'ERR_LIMIT_OUT'
        if not s:
            mem[mem[64] + 4] = this.address
            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _492 = mem[_484]
                require mem[_484] == mem[_484]
                if mem[_484]:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_484]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_484] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _492
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _492
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_632] == bool(mem[_632])
                        if not mem[_632]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _493 = mem[_485]
                require mem[_485] == mem[_485]
                if mem[_485]:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_485]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_485] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _493
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _493
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_633] == bool(mem[_633])
                        if not mem[_633]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _568 = mem[_550]
                        require mem[_550] == mem[_550]
                        if mem[_550]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_550]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_550] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _568
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _568
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _802 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_802] == bool(mem[_802])
                                if not mem[_802]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _569 = mem[_551]
                        require mem[_551] == mem[_551]
                        if mem[_551]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_551]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_551] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _569
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _569
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _803 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_803] == bool(mem[_803])
                                if not mem[_803]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_471] = return_data.size
                    mem[_471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _570 = mem[_552]
                        require mem[_552] == mem[_552]
                        if mem[_552]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_552]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_552] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _570
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _570
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _804 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_804] == bool(mem[_804])
                                if not mem[_804]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _571 = mem[_553]
                        require mem[_553] == mem[_553]
                        if mem[_553]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_553]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_553] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _571
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _571
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _805 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_805] == bool(mem[_805])
                                if not mem[_805]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(arg3)
                call arg3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_487] == bool(mem[_487])
                if not mem[_487]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _624 = mem[_594]
                    require mem[_594] == mem[_594]
                    if mem[_594]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_594]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_594] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _624
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _624
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_910] == bool(mem[_910])
                            if not mem[_910]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _625 = mem[_595]
                    require mem[_595] == mem[_595]
                    if mem[_595]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_595]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_595] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _625
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _625
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _911 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_911] == bool(mem[_911])
                            if not mem[_911]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg4
        require ext_code.size(arg2)
        call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_233] == bool(mem[_233])
        if not mem[_233]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _434 = mem[96]
        idx = 0
        s = 0
        while idx < _434:
            _437 = mem[64]
            mem[64] = mem[64] + 192
            mem[_437] = 0
            mem[_437 + 32] = 0
            mem[_437 + 64] = 0
            mem[_437 + 96] = 0
            mem[_437 + 128] = 0
            mem[_437 + 160] = 0
            require idx < mem[96]
            _442 = mem[(32 * idx) + 128]
            _443 = mem[mem[(32 * idx) + 128] + 32]
            _444 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_444)
            require ext_code.size(address(_443))
            staticcall address(_443).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_444)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_475] == mem[_475]
            if mem[_475] <= 0:
                _509 = mem[_442 + 96]
                mem[mem[64] + 4] = mem[_442 + 12 len 20]
                mem[mem[64] + 36] = _509
                require ext_code.size(address(_443))
                call address(_443).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _509
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_566] == bool(mem[_566])
                _605 = mem[_442 + 96]
                _606 = mem[_442 + 64]
                _607 = mem[_442 + 128]
                _608 = mem[_442 + 160]
                mem[mem[64] + 4] = mem[_442 + 44 len 20]
                mem[mem[64] + 36] = _605
                mem[mem[64] + 68] = address(_606)
                mem[mem[64] + 100] = _607
                mem[mem[64] + 132] = _608
                require ext_code.size(address(_444))
                call address(_444).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _605, address(_606), _607, _608
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_856] == mem[_856]
                require mem[_856 + 32] == mem[_856 + 32]
                if s + mem[_856] < mem[_856]:
                    revert with 0, 'SafeMath: addition overflow'
                _434 = mem[96]
                idx = idx + 1
                s = s + mem[_856]
                continue 
            mem[mem[64] + 4] = mem[_442 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_443))
            call address(_443).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _578 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_578] == bool(mem[_578])
            _635 = mem[_442 + 96]
            mem[mem[64] + 4] = mem[_442 + 12 len 20]
            mem[mem[64] + 36] = _635
            require ext_code.size(address(_443))
            call address(_443).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _635
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _738 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_738] == bool(mem[_738])
            _837 = mem[_442 + 96]
            _838 = mem[_442 + 64]
            _839 = mem[_442 + 128]
            _840 = mem[_442 + 160]
            mem[mem[64] + 4] = mem[_442 + 44 len 20]
            mem[mem[64] + 36] = _837
            mem[mem[64] + 68] = address(_838)
            mem[mem[64] + 100] = _839
            mem[mem[64] + 132] = _840
            require ext_code.size(address(_444))
            call address(_444).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _837, address(_838), _839, _840
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _992 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_992] == mem[_992]
            require mem[_992 + 32] == mem[_992 + 32]
            if s + mem[_992] < mem[_992]:
                revert with 0, 'SafeMath: addition overflow'
            _434 = mem[96]
            idx = idx + 1
            s = s + mem[_992]
            continue 
        if s < arg5:
            revert with 0, 'ERR_LIMIT_OUT'
        if not s:
            mem[mem[64] + 4] = this.address
            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _490 = mem[_480]
                require mem[_480] == mem[_480]
                if mem[_480]:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_480] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _490
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _490
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_630] == bool(mem[_630])
                        if not mem[_630]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _491 = mem[_481]
                require mem[_481] == mem[_481]
                if mem[_481]:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_481]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_481] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _491
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _491
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_631] == bool(mem[_631])
                        if not mem[_631]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _560 = mem[_546]
                        require mem[_546] == mem[_546]
                        if mem[_546]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_546]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_546] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _560
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _560
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_798] == bool(mem[_798])
                                if not mem[_798]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _561 = mem[_547]
                        require mem[_547] == mem[_547]
                        if mem[_547]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_547]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_547] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _561
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _561
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_799] == bool(mem[_799])
                                if not mem[_799]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_468] = return_data.size
                    mem[_468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _548 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _562 = mem[_548]
                        require mem[_548] == mem[_548]
                        if mem[_548]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_548]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_548] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _562
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _562
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_800] == bool(mem[_800])
                                if not mem[_800]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _563 = mem[_549]
                        require mem[_549] == mem[_549]
                        if mem[_549]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_549]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_549] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _563
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _563
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _801 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_801] == bool(mem[_801])
                                if not mem[_801]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(arg3)
                call arg3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _486 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_486] == bool(mem[_486])
                if not mem[_486]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _590 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _618 = mem[_590]
                    require mem[_590] == mem[_590]
                    if mem[_590]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_590]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_590] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _618
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _618
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _904 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_904] == bool(mem[_904])
                            if not mem[_904]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _619 = mem[_591]
                    require mem[_591] == mem[_591]
                    if mem[_591]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_591]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_591] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _619
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _619
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_905] == bool(mem[_905])
                            if not mem[_905]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
    return s
}

function viewSplitExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[96] = 0xbfdbfc4300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg4
    require ext_code.size(stor2)
    staticcall stor2.0xbfdbfc43 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1031 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 0
        s = 0
        while idx < _5:
            require idx < mem[ceil32(return_data.size) + 96]
            _2122 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _2126 = mem[64]
            mem[64] = mem[64] + 224
            mem[_2126] = 0
            mem[_2126 + 32] = 0
            mem[_2126 + 64] = 0
            mem[_2126 + 96] = 0
            mem[_2126 + 128] = 0
            mem[_2126 + 160] = 0
            mem[_2126 + 192] = 0
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_2122))
            staticcall address(_2122).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2248 = mem[_2199]
            require mem[_2199] == mem[_2199]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_2122))
            staticcall address(_2122).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2769 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2840 = mem[_2769]
            require mem[_2769] == mem[_2769]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_2122))
            staticcall address(_2122).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2956 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2969 = mem[_2956]
            require mem[_2956] == mem[_2956]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_2122))
            staticcall address(_2122).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3072 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3082 = mem[_3072]
            require mem[_3072] == mem[_3072]
            require ext_code.size(address(_2122))
            staticcall address(_2122).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3105 = mem[_3102]
            require mem[_3102] == mem[_3102]
            if _2969 + _3082 < _3082:
                revert with 0, 'SafeMath: addition overflow'
            if not _2969:
                _3113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3113] = 26
                mem[_3113 + 32] = 'SafeMath: division by zero'
                if not _2969 + _3082:
                    _3116 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3116 + 68] = mem[idx + _3113 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3116 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3116 + -mem[64] + 100
                if not 0 / _2969 + _3082:
                    _3129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3129] = 26
                    mem[_3129 + 32] = 'SafeMath: division by zero'
                    _3146 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_3146] = 0
                    mem[_3146 + 32] = 0
                    mem[_3146 + 64] = 0
                    mem[_3146 + 96] = 0
                    mem[_3146 + 128] = 0
                    mem[_3146 + 160] = 0
                    mem[_3146 + 192] = 0
                    _3155 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_3155] = address(_2122)
                    mem[_3155 + 32] = _2248
                    mem[_3155 + 64] = _2969
                    mem[_3155 + 96] = _2840
                    mem[_3155 + 128] = _3082
                    mem[_3155 + 160] = _3105
                    mem[_3155 + 192] = 0
                    require idx < mem[_1031]
                    mem[(32 * idx) + _1031 + 32] = _3155
                    require idx < mem[_1031]
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if _2840 * 0 / _2969 + _3082 / 0 / _2969 + _3082 != _2840:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3133] = 26
                mem[_3133 + 32] = 'SafeMath: division by zero'
                _3154 = mem[64]
                mem[64] = mem[64] + 224
                mem[_3154] = 0
                mem[_3154 + 32] = 0
                mem[_3154 + 64] = 0
                mem[_3154 + 96] = 0
                mem[_3154 + 128] = 0
                mem[_3154 + 160] = 0
                mem[_3154 + 192] = 0
                _3158 = mem[64]
                mem[64] = mem[64] + 224
                mem[_3158] = address(_2122)
                mem[_3158 + 32] = _2248
                mem[_3158 + 64] = _2969
                mem[_3158 + 96] = _2840
                mem[_3158 + 128] = _3082
                mem[_3158 + 160] = _3105
                mem[_3158 + 192] = _2840 * 0 / _2969 + _3082 / 10^18
                require idx < mem[_1031]
                mem[(32 * idx) + _1031 + 32] = _3158
                require idx < mem[_1031]
                if (_2840 * 0 / _2969 + _3082 / 10^18) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (_2840 * 0 / _2969 + _3082 / 10^18) + s
                continue 
            if 10^18 * _2969 / _2969 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _3115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3115] = 26
            mem[_3115 + 32] = 'SafeMath: division by zero'
            if not _2969 + _3082:
                _3117 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3117 + 68] = mem[idx + _3115 + 32]
                    idx = idx + 32
                    continue 
                mem[_3117 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3117 + -mem[64] + 100
            if not 10^18 * _2969 / _2969 + _3082:
                _3132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3132] = 26
                mem[_3132 + 32] = 'SafeMath: division by zero'
                _3151 = mem[64]
                mem[64] = mem[64] + 224
                mem[_3151] = 0
                mem[_3151 + 32] = 0
                mem[_3151 + 64] = 0
                mem[_3151 + 96] = 0
                mem[_3151 + 128] = 0
                mem[_3151 + 160] = 0
                mem[_3151 + 192] = 0
                _3157 = mem[64]
                mem[64] = mem[64] + 224
                mem[_3157] = address(_2122)
                mem[_3157 + 32] = _2248
                mem[_3157 + 64] = _2969
                mem[_3157 + 96] = _2840
                mem[_3157 + 128] = _3082
                mem[_3157 + 160] = _3105
                mem[_3157 + 192] = 0
                require idx < mem[_1031]
                mem[(32 * idx) + _1031 + 32] = _3157
                require idx < mem[_1031]
                if s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s
                continue 
            if _2840 * 10^18 * _2969 / _2969 + _3082 / 10^18 * _2969 / _2969 + _3082 != _2840:
                revert with 0, 'SafeMath: multiplication overflow'
            _3136 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3136] = 26
            mem[_3136 + 32] = 'SafeMath: division by zero'
            _3156 = mem[64]
            mem[64] = mem[64] + 224
            mem[_3156] = 0
            mem[_3156 + 32] = 0
            mem[_3156 + 64] = 0
            mem[_3156 + 96] = 0
            mem[_3156 + 128] = 0
            mem[_3156 + 160] = 0
            mem[_3156 + 192] = 0
            _3160 = mem[64]
            mem[64] = mem[64] + 224
            mem[_3160] = address(_2122)
            mem[_3160 + 32] = _2248
            mem[_3160 + 64] = _2969
            mem[_3160 + 96] = _2840
            mem[_3160 + 128] = _3082
            mem[_3160 + 160] = _3105
            mem[_3160 + 192] = _2840 * 10^18 * _2969 / _2969 + _3082 / 10^18
            require idx < mem[_1031]
            mem[(32 * idx) + _1031 + 32] = _3160
            require idx < mem[_1031]
            if (_2840 * 10^18 * _2969 / _2969 + _3082 / 10^18) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (_2840 * 10^18 * _2969 / _2969 + _3082 / 10^18) + s
            continue 
        _2118 = mem[_1031]
        _2119 = mem[64]
        mem[mem[64]] = mem[_1031]
        mem[64] = mem[64] + (32 * _2118) + 32
        if not _2118:
            _3222 = mem[_1031]
            idx = 0
            t = 0
            while idx < _3222:
                require idx < mem[_1031]
                _3230 = mem[mem[(32 * idx) + _1031 + 32] + 192]
                if not arg3:
                    _3250 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3250] = 26
                    mem[_3250 + 32] = 'SafeMath: division by zero'
                    if s:
                        require idx < mem[_2119]
                        mem[(32 * idx) + _2119 + 32] = 0 / s
                        require idx < mem[_2119]
                        if (0 / s) + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        _3222 = mem[_1031]
                        idx = idx + 1
                        t = (0 / s) + t
                        continue 
                    _3273 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3273 + 68] = mem[idx + _3250 + 32]
                        _3222 = mem[_1031]
                        idx = idx + 32
                        continue 
                    mem[_3273 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3273 + -mem[64] + 100
                if mem[mem[(32 * idx) + _1031 + 32] + 192] * arg3 / arg3 != mem[mem[(32 * idx) + _1031 + 32] + 192]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3263] = 26
                mem[_3263 + 32] = 'SafeMath: division by zero'
                if s:
                    require idx < mem[_2119]
                    mem[(32 * idx) + _2119 + 32] = _3230 * arg3 / s
                    require idx < mem[_2119]
                    if (_3230 * arg3 / s) + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    _3222 = mem[_1031]
                    idx = idx + 1
                    t = (_3230 * arg3 / s) + t
                    continue 
                _3281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3281 + 68] = mem[idx + _3263 + 32]
                    _3222 = mem[_1031]
                    idx = idx + 32
                    continue 
                mem[_3281 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3281 + -mem[64] + 100
            if t < arg3:
                _3234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3234] = 30
                mem[_3234 + 32] = 'SafeMath: subtraction overflow'
                if t > arg3:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require 0 < mem[_2119]
                if arg3 - t + mem[_2119 + 32] < mem[_2119 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                require 0 < mem[_2119]
                mem[_2119 + 32] = arg3 - t + mem[_2119 + 32]
                _3303 = mem[_1031]
                _3304 = mem[64]
                mem[mem[64]] = mem[_1031]
                mem[64] = mem[64] + (32 * _3303) + 32
                if not _3303:
                    _4252 = mem[_1031]
                    idx = 0
                    while idx < _4252:
                        _4261 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < mem[_1031]
                        mem[_4261] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                        mem[_4261 + 32] = arg1
                        mem[_4261 + 64] = arg2
                        require idx < mem[_2119]
                        mem[_4261 + 96] = mem[(32 * idx) + _2119 + 32]
                        mem[_4261 + 128] = 0
                        mem[_4261 + 160] = -1
                        require idx < mem[_3304]
                        mem[(32 * idx) + _3304 + 32] = _4261
                        _4252 = mem[_1031]
                        idx = idx + 1
                        continue 
                    _5209 = mem[_2119]
                    idx = 0
                    s = 0
                    while idx < _5209:
                        require idx < mem[_1031]
                        _5229 = mem[mem[(32 * idx) + _1031 + 32]]
                        require idx < mem[_1031]
                        require idx < mem[_1031]
                        _5266 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                        require idx < mem[_1031]
                        _5283 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                        require idx < mem[_1031]
                        _5310 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                        require idx < mem[_2119]
                        _5336 = mem[(32 * idx) + _2119 + 32]
                        require idx < mem[_1031]
                        _5366 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                        mem[mem[64] + 36] = _5266
                        mem[mem[64] + 68] = _5283
                        mem[mem[64] + 100] = _5310
                        mem[mem[64] + 132] = _5336
                        mem[mem[64] + 164] = _5366
                        require ext_code.size(address(_5229))
                        staticcall address(_5229).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], _5266, _5283, _5310, _5336, _5366
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5890 = mem[_5874]
                        require mem[_5874] == mem[_5874]
                        if mem[_5874] + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _5209 = mem[_2119]
                        idx = idx + 1
                        s = mem[_5874] + s
                        continue 
                    _5245 = mem[64]
                    mem[mem[64]] = 64
                    _5308 = mem[_3304]
                    mem[mem[64] + 64] = mem[_3304]
                    idx = 0
                    s = _3304 + 32
                    t = mem[64] + 96
                    while idx < _5308:
                        _6036 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6036 + 44 len 20]
                        mem[t + 64] = mem[_6036 + 76 len 20]
                        mem[t + 96] = mem[_6036 + 96]
                        mem[t + 128] = mem[_6036 + 128]
                        mem[t + 160] = mem[_6036 + 160]
                        idx = idx + 1
                        s = s + 32
                        t = t + 192
                        continue 
                    mem[_5245 + 32] = _5890 * _5209
                    return memory
                      from mem[64]
                       len _5245 + (192 * _5308) + -mem[64] + 96
                mem[64] = _3304 + (32 * _3303) + 224
                mem[_3304 + (32 * _3303) + 32] = 0
                mem[_3304 + (32 * _3303) + 64] = 0
                mem[_3304 + (32 * _3303) + 96] = 0
                mem[_3304 + (32 * _3303) + 128] = 0
                mem[_3304 + (32 * _3303) + 160] = 0
                mem[_3304 + (32 * _3303) + 192] = 0
                mem[var100001] = _3304 + (32 * _3303) + 32
                s = var100001
                idx = var100002
                while idx - 1:
                    mem[64] = mem[64] + 192
                    mem[_3304 + (32 * _3303) + 32] = 0
                    mem[_3304 + (32 * _3303) + 64] = 0
                    mem[_3304 + (32 * _3303) + 96] = 0
                    mem[_3304 + (32 * _3303) + 128] = 0
                    mem[_3304 + (32 * _3303) + 160] = 0
                    mem[_3304 + (32 * _3303) + 192] = 0
                    mem[s + 32] = _3304 + (32 * _3303) + 32
                    s = s + 32
                    idx = idx - 1
                    continue 
                _6026 = mem[_1031]
                idx = 0
                while idx < _6026:
                    _6037 = mem[64]
                    mem[64] = mem[64] + 192
                    require idx < mem[_1031]
                    mem[_6037] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                    mem[_6037 + 32] = arg1
                    mem[_6037 + 64] = arg2
                    require idx < mem[_2119]
                    mem[_6037 + 96] = mem[(32 * idx) + _2119 + 32]
                    mem[_6037 + 128] = 0
                    mem[_6037 + 160] = -1
                    require idx < mem[_3304]
                    mem[(32 * idx) + _3304 + 32] = _6037
                    _6026 = mem[_1031]
                    idx = idx + 1
                    continue 
                _6632 = mem[_2119]
                idx = 0
                s = 0
                while idx < _6632:
                    require idx < mem[_1031]
                    _6655 = mem[mem[(32 * idx) + _1031 + 32]]
                    require idx < mem[_1031]
                    require idx < mem[_1031]
                    _6711 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                    require idx < mem[_1031]
                    _6739 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                    require idx < mem[_1031]
                    _6773 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                    require idx < mem[_2119]
                    _6813 = mem[(32 * idx) + _2119 + 32]
                    require idx < mem[_1031]
                    _6843 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                    mem[mem[64] + 36] = _6711
                    mem[mem[64] + 68] = _6739
                    mem[mem[64] + 100] = _6773
                    mem[mem[64] + 132] = _6813
                    mem[mem[64] + 164] = _6843
                    require ext_code.size(address(_6655))
                    staticcall address(_6655).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _6711, _6739, _6773, _6813, _6843
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7032 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7048 = mem[_7032]
                    require mem[_7032] == mem[_7032]
                    if mem[_7032] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _6632 = mem[_2119]
                    idx = idx + 1
                    s = mem[_7032] + s
                    continue 
                _6679 = mem[64]
                mem[mem[64]] = 64
                _6771 = mem[_3304]
                mem[mem[64] + 64] = mem[_3304]
                idx = 0
                s = _3304 + 32
                t = mem[64] + 96
                while idx < _6771:
                    _7116 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7116 + 44 len 20]
                    mem[t + 64] = mem[_7116 + 76 len 20]
                    mem[t + 96] = mem[_7116 + 96]
                    mem[t + 128] = mem[_7116 + 128]
                    mem[t + 160] = mem[_7116 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 192
                    continue 
                mem[_6679 + 32] = _7048 * _6632
                return memory
                  from mem[64]
                   len _6679 + (192 * _6771) + -mem[64] + 96
            _3233 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3233] = 30
            mem[_3233 + 32] = 'SafeMath: subtraction overflow'
            if arg3 > t:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require 0 < mem[_2119]
            _3259 = mem[_2119 + 32]
            _3272 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3272] = 30
            mem[_3272 + 32] = 'SafeMath: subtraction overflow'
            if t - arg3 > _3259:
                var103001 = 32
                revert with 0, 'SafeMath: subtraction overflow', 0
            require 0 < mem[_2119]
            mem[_2119 + 32] = _3259 - t + arg3
            _3331 = mem[_1031]
            _3332 = mem[64]
            mem[mem[64]] = mem[_1031]
            mem[64] = mem[64] + (32 * _3331) + 32
            if not _3331:
                _4251 = mem[_1031]
                idx = 0
                while idx < _4251:
                    _4256 = mem[64]
                    mem[64] = mem[64] + 192
                    require idx < mem[_1031]
                    mem[_4256] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                    mem[_4256 + 32] = arg1
                    mem[_4256 + 64] = arg2
                    require idx < mem[_2119]
                    mem[_4256 + 96] = mem[(32 * idx) + _2119 + 32]
                    mem[_4256 + 128] = 0
                    mem[_4256 + 160] = -1
                    require idx < mem[_3332]
                    mem[(32 * idx) + _3332 + 32] = _4256
                    _4251 = mem[_1031]
                    idx = idx + 1
                    continue 
                _5207 = mem[_2119]
                idx = 0
                s = 0
                while idx < _5207:
                    require idx < mem[_1031]
                    _5226 = mem[mem[(32 * idx) + _1031 + 32]]
                    require idx < mem[_1031]
                    require idx < mem[_1031]
                    _5262 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                    require idx < mem[_1031]
                    _5278 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                    require idx < mem[_1031]
                    _5303 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                    require idx < mem[_2119]
                    _5331 = mem[(32 * idx) + _2119 + 32]
                    require idx < mem[_1031]
                    _5362 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                    mem[mem[64] + 36] = _5262
                    mem[mem[64] + 68] = _5278
                    mem[mem[64] + 100] = _5303
                    mem[mem[64] + 132] = _5331
                    mem[mem[64] + 164] = _5362
                    require ext_code.size(address(_5226))
                    staticcall address(_5226).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _5262, _5278, _5303, _5331, _5362
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5889 = mem[_5873]
                    require mem[_5873] == mem[_5873]
                    if mem[_5873] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _5207 = mem[_2119]
                    idx = idx + 1
                    s = mem[_5873] + s
                    continue 
                _5241 = mem[64]
                mem[mem[64]] = 64
                _5301 = mem[_3332]
                mem[mem[64] + 64] = mem[_3332]
                idx = 0
                s = _3332 + 32
                t = mem[64] + 96
                while idx < _5301:
                    _6033 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_6033 + 44 len 20]
                    mem[t + 64] = mem[_6033 + 76 len 20]
                    mem[t + 96] = mem[_6033 + 96]
                    mem[t + 128] = mem[_6033 + 128]
                    mem[t + 160] = mem[_6033 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 192
                    continue 
                mem[_5241 + 32] = _5889 * _5207
                return memory
                  from mem[64]
                   len _5241 + (192 * _5301) + -mem[64] + 96
            mem[64] = _3332 + (32 * _3331) + 224
            mem[_3332 + (32 * _3331) + 32] = 0
            mem[_3332 + (32 * _3331) + 64] = 0
            mem[_3332 + (32 * _3331) + 96] = 0
            mem[_3332 + (32 * _3331) + 128] = 0
            mem[_3332 + (32 * _3331) + 160] = 0
            mem[_3332 + (32 * _3331) + 192] = 0
            mem[var102001] = _3332 + (32 * _3331) + 32
            s = var102001
            idx = var102002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[_3332 + (32 * _3331) + 32] = 0
                mem[_3332 + (32 * _3331) + 64] = 0
                mem[_3332 + (32 * _3331) + 96] = 0
                mem[_3332 + (32 * _3331) + 128] = 0
                mem[_3332 + (32 * _3331) + 160] = 0
                mem[_3332 + (32 * _3331) + 192] = 0
                mem[s + 32] = _3332 + (32 * _3331) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _6025 = mem[_1031]
            idx = 0
            while idx < _6025:
                _6034 = mem[64]
                mem[64] = mem[64] + 192
                require idx < mem[_1031]
                mem[_6034] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                mem[_6034 + 32] = arg1
                mem[_6034 + 64] = arg2
                require idx < mem[_2119]
                mem[_6034 + 96] = mem[(32 * idx) + _2119 + 32]
                mem[_6034 + 128] = 0
                mem[_6034 + 160] = -1
                require idx < mem[_3332]
                mem[(32 * idx) + _3332 + 32] = _6034
                _6025 = mem[_1031]
                idx = idx + 1
                continue 
            _6631 = mem[_2119]
            idx = 0
            s = 0
            while idx < _6631:
                require idx < mem[_1031]
                _6652 = mem[mem[(32 * idx) + _1031 + 32]]
                require idx < mem[_1031]
                require idx < mem[_1031]
                _6708 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                require idx < mem[_1031]
                _6736 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                require idx < mem[_1031]
                _6769 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                require idx < mem[_2119]
                _6811 = mem[(32 * idx) + _2119 + 32]
                require idx < mem[_1031]
                _6840 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                mem[mem[64] + 36] = _6708
                mem[mem[64] + 68] = _6736
                mem[mem[64] + 100] = _6769
                mem[mem[64] + 132] = _6811
                mem[mem[64] + 164] = _6840
                require ext_code.size(address(_6652))
                staticcall address(_6652).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _6708, _6736, _6769, _6811, _6840
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7031 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7047 = mem[_7031]
                require mem[_7031] == mem[_7031]
                if mem[_7031] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _6631 = mem[_2119]
                idx = idx + 1
                s = mem[_7031] + s
                continue 
            _6675 = mem[64]
            mem[mem[64]] = 64
            _6767 = mem[_3332]
            mem[mem[64] + 64] = mem[_3332]
            idx = 0
            s = _3332 + 32
            t = mem[64] + 96
            while idx < _6767:
                _7115 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7115 + 44 len 20]
                mem[t + 64] = mem[_7115 + 76 len 20]
                mem[t + 96] = mem[_7115 + 96]
                mem[t + 128] = mem[_7115 + 128]
                mem[t + 160] = mem[_7115 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            mem[_6675 + 32] = _7047 * _6631
            return memory
              from mem[64]
               len _6675 + (192 * _6767) + -mem[64] + 96
        mem[_2119 + 32 len 32 * _2118] = code.data[13429 len 32 * _2118]
        _3223 = mem[_1031]
        idx = 0
        t = 0
        while idx < _3223:
            require idx < mem[_1031]
            _3232 = mem[mem[(32 * idx) + _1031 + 32] + 192]
            if not arg3:
                _3253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3253] = 26
                mem[_3253 + 32] = 'SafeMath: division by zero'
                if s:
                    require idx < mem[_2119]
                    mem[(32 * idx) + _2119 + 32] = 0 / s
                    require idx < mem[_2119]
                    if (0 / s) + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    _3223 = mem[_1031]
                    idx = idx + 1
                    t = (0 / s) + t
                    continue 
                _3275 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3275 + 68] = mem[idx + _3253 + 32]
                    _3223 = mem[_1031]
                    idx = idx + 32
                    continue 
                mem[_3275 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3275 + -mem[64] + 100
            if mem[mem[(32 * idx) + _1031 + 32] + 192] * arg3 / arg3 != mem[mem[(32 * idx) + _1031 + 32] + 192]:
                revert with 0, 'SafeMath: multiplication overflow'
            _3268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3268] = 26
            mem[_3268 + 32] = 'SafeMath: division by zero'
            if s:
                require idx < mem[_2119]
                mem[(32 * idx) + _2119 + 32] = _3232 * arg3 / s
                require idx < mem[_2119]
                if (_3232 * arg3 / s) + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                _3223 = mem[_1031]
                idx = idx + 1
                t = (_3232 * arg3 / s) + t
                continue 
            _3283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3283 + 68] = mem[idx + _3268 + 32]
                _3223 = mem[_1031]
                idx = idx + 32
                continue 
            mem[_3283 + 94] = 0
            revert with memory
              from mem[64]
               len _3283 + -mem[64] + 100
        if t < arg3:
            _3236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3236] = 30
            mem[_3236 + 32] = 'SafeMath: subtraction overflow'
            if t > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require 0 < mem[_2119]
            if arg3 - t + mem[_2119 + 32] < mem[_2119 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_2119]
            mem[_2119 + 32] = arg3 - t + mem[_2119 + 32]
            _3309 = mem[_1031]
            _3310 = mem[64]
            mem[mem[64]] = mem[_1031]
            mem[64] = mem[64] + (32 * _3309) + 32
            if not _3309:
                _4254 = mem[_1031]
                idx = 0
                while idx < _4254:
                    _4272 = mem[64]
                    mem[64] = mem[64] + 192
                    require idx < mem[_1031]
                    mem[_4272] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                    mem[_4272 + 32] = arg1
                    mem[_4272 + 64] = arg2
                    require idx < mem[_2119]
                    mem[_4272 + 96] = mem[(32 * idx) + _2119 + 32]
                    mem[_4272 + 128] = 0
                    mem[_4272 + 160] = -1
                    require idx < mem[_3310]
                    mem[(32 * idx) + _3310 + 32] = _4272
                    _4254 = mem[_1031]
                    idx = idx + 1
                    continue 
                _5213 = mem[_2119]
                idx = 0
                s = 0
                while idx < _5213:
                    require idx < mem[_1031]
                    _5235 = mem[mem[(32 * idx) + _1031 + 32]]
                    require idx < mem[_1031]
                    require idx < mem[_1031]
                    _5274 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                    require idx < mem[_1031]
                    _5293 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                    require idx < mem[_1031]
                    _5324 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                    require idx < mem[_2119]
                    _5346 = mem[(32 * idx) + _2119 + 32]
                    require idx < mem[_1031]
                    _5374 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                    mem[mem[64] + 36] = _5274
                    mem[mem[64] + 68] = _5293
                    mem[mem[64] + 100] = _5324
                    mem[mem[64] + 132] = _5346
                    mem[mem[64] + 164] = _5374
                    require ext_code.size(address(_5235))
                    staticcall address(_5235).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _5274, _5293, _5324, _5346, _5374
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5892 = mem[_5876]
                    require mem[_5876] == mem[_5876]
                    if mem[_5876] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _5213 = mem[_2119]
                    idx = idx + 1
                    s = mem[_5876] + s
                    continue 
                _5253 = mem[64]
                mem[mem[64]] = 64
                _5322 = mem[_3310]
                mem[mem[64] + 64] = mem[_3310]
                idx = 0
                s = _3310 + 32
                t = mem[64] + 96
                while idx < _5322:
                    _6042 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_6042 + 44 len 20]
                    mem[t + 64] = mem[_6042 + 76 len 20]
                    mem[t + 96] = mem[_6042 + 96]
                    mem[t + 128] = mem[_6042 + 128]
                    mem[t + 160] = mem[_6042 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 192
                    continue 
                mem[_5253 + 32] = _5892 * _5213
                return memory
                  from mem[64]
                   len _5253 + (192 * _5322) + -mem[64] + 96
            mem[64] = _3310 + (32 * _3309) + 224
            mem[_3310 + (32 * _3309) + 32] = 0
            mem[_3310 + (32 * _3309) + 64] = 0
            mem[_3310 + (32 * _3309) + 96] = 0
            mem[_3310 + (32 * _3309) + 128] = 0
            mem[_3310 + (32 * _3309) + 160] = 0
            mem[_3310 + (32 * _3309) + 192] = 0
            mem[var101001] = _3310 + (32 * _3309) + 32
            s = var101001
            idx = var101002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[_3310 + (32 * _3309) + 32] = 0
                mem[_3310 + (32 * _3309) + 64] = 0
                mem[_3310 + (32 * _3309) + 96] = 0
                mem[_3310 + (32 * _3309) + 128] = 0
                mem[_3310 + (32 * _3309) + 160] = 0
                mem[_3310 + (32 * _3309) + 192] = 0
                mem[s + 32] = _3310 + (32 * _3309) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _6028 = mem[_1031]
            idx = 0
            while idx < _6028:
                _6043 = mem[64]
                mem[64] = mem[64] + 192
                require idx < mem[_1031]
                mem[_6043] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                mem[_6043 + 32] = arg1
                mem[_6043 + 64] = arg2
                require idx < mem[_2119]
                mem[_6043 + 96] = mem[(32 * idx) + _2119 + 32]
                mem[_6043 + 128] = 0
                mem[_6043 + 160] = -1
                require idx < mem[_3310]
                mem[(32 * idx) + _3310 + 32] = _6043
                _6028 = mem[_1031]
                idx = idx + 1
                continue 
            _6634 = mem[_2119]
            idx = 0
            s = 0
            while idx < _6634:
                require idx < mem[_1031]
                _6661 = mem[mem[(32 * idx) + _1031 + 32]]
                require idx < mem[_1031]
                require idx < mem[_1031]
                _6717 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                require idx < mem[_1031]
                _6745 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                require idx < mem[_1031]
                _6781 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                require idx < mem[_2119]
                _6817 = mem[(32 * idx) + _2119 + 32]
                require idx < mem[_1031]
                _6849 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                mem[mem[64] + 36] = _6717
                mem[mem[64] + 68] = _6745
                mem[mem[64] + 100] = _6781
                mem[mem[64] + 132] = _6817
                mem[mem[64] + 164] = _6849
                require ext_code.size(address(_6661))
                staticcall address(_6661).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _6717, _6745, _6781, _6817, _6849
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7050 = mem[_7034]
                require mem[_7034] == mem[_7034]
                if mem[_7034] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _6634 = mem[_2119]
                idx = idx + 1
                s = mem[_7034] + s
                continue 
            _6687 = mem[64]
            mem[mem[64]] = 64
            _6779 = mem[_3310]
            mem[mem[64] + 64] = mem[_3310]
            idx = 0
            s = _3310 + 32
            t = mem[64] + 96
            while idx < _6779:
                _7118 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7118 + 44 len 20]
                mem[t + 64] = mem[_7118 + 76 len 20]
                mem[t + 96] = mem[_7118 + 96]
                mem[t + 128] = mem[_7118 + 128]
                mem[t + 160] = mem[_7118 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            mem[_6687 + 32] = _7050 * _6634
            return memory
              from mem[64]
               len _6687 + (192 * _6779) + -mem[64] + 96
        _3235 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3235] = 30
        mem[_3235 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > t:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require 0 < mem[_2119]
        _3264 = mem[_2119 + 32]
        _3274 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3274] = 30
        mem[_3274 + 32] = 'SafeMath: subtraction overflow'
        if t - arg3 > _3264:
            var104001 = 32
            revert with 0, 'SafeMath: subtraction overflow', 0
        require 0 < mem[_2119]
        mem[_2119 + 32] = _3264 - t + arg3
        _3335 = mem[_1031]
        _3336 = mem[64]
        mem[mem[64]] = mem[_1031]
        mem[64] = mem[64] + (32 * _3335) + 32
        if not _3335:
            _4253 = mem[_1031]
            idx = 0
            while idx < _4253:
                _4267 = mem[64]
                mem[64] = mem[64] + 192
                require idx < mem[_1031]
                mem[_4267] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                mem[_4267 + 32] = arg1
                mem[_4267 + 64] = arg2
                require idx < mem[_2119]
                mem[_4267 + 96] = mem[(32 * idx) + _2119 + 32]
                mem[_4267 + 128] = 0
                mem[_4267 + 160] = -1
                require idx < mem[_3336]
                mem[(32 * idx) + _3336 + 32] = _4267
                _4253 = mem[_1031]
                idx = idx + 1
                continue 
            _5211 = mem[_2119]
            idx = 0
            s = 0
            while idx < _5211:
                require idx < mem[_1031]
                _5232 = mem[mem[(32 * idx) + _1031 + 32]]
                require idx < mem[_1031]
                require idx < mem[_1031]
                _5270 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                require idx < mem[_1031]
                _5288 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                require idx < mem[_1031]
                _5317 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                require idx < mem[_2119]
                _5341 = mem[(32 * idx) + _2119 + 32]
                require idx < mem[_1031]
                _5370 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                mem[mem[64] + 36] = _5270
                mem[mem[64] + 68] = _5288
                mem[mem[64] + 100] = _5317
                mem[mem[64] + 132] = _5341
                mem[mem[64] + 164] = _5370
                require ext_code.size(address(_5232))
                staticcall address(_5232).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _5270, _5288, _5317, _5341, _5370
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5875 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5891 = mem[_5875]
                require mem[_5875] == mem[_5875]
                if mem[_5875] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _5211 = mem[_2119]
                idx = idx + 1
                s = mem[_5875] + s
                continue 
            _5249 = mem[64]
            mem[mem[64]] = 64
            _5315 = mem[_3336]
            mem[mem[64] + 64] = mem[_3336]
            idx = 0
            s = _3336 + 32
            t = mem[64] + 96
            while idx < _5315:
                _6039 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_6039 + 44 len 20]
                mem[t + 64] = mem[_6039 + 76 len 20]
                mem[t + 96] = mem[_6039 + 96]
                mem[t + 128] = mem[_6039 + 128]
                mem[t + 160] = mem[_6039 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            mem[_5249 + 32] = _5891 * _5211
            return memory
              from mem[64]
               len _5249 + (192 * _5315) + -mem[64] + 96
        mem[64] = _3336 + (32 * _3335) + 224
        mem[_3336 + (32 * _3335) + 32] = 0
        mem[_3336 + (32 * _3335) + 64] = 0
        mem[_3336 + (32 * _3335) + 96] = 0
        mem[_3336 + (32 * _3335) + 128] = 0
        mem[_3336 + (32 * _3335) + 160] = 0
        mem[_3336 + (32 * _3335) + 192] = 0
        mem[var103001] = _3336 + (32 * _3335) + 32
        s = var103001
        idx = var103002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_3336 + (32 * _3335) + 32] = 0
            mem[_3336 + (32 * _3335) + 64] = 0
            mem[_3336 + (32 * _3335) + 96] = 0
            mem[_3336 + (32 * _3335) + 128] = 0
            mem[_3336 + (32 * _3335) + 160] = 0
            mem[_3336 + (32 * _3335) + 192] = 0
            mem[s + 32] = _3336 + (32 * _3335) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _6027 = mem[_1031]
        idx = 0
        while idx < _6027:
            _6040 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[_1031]
            mem[_6040] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
            mem[_6040 + 32] = arg1
            mem[_6040 + 64] = arg2
            require idx < mem[_2119]
            mem[_6040 + 96] = mem[(32 * idx) + _2119 + 32]
            mem[_6040 + 128] = 0
            mem[_6040 + 160] = -1
            require idx < mem[_3336]
            mem[(32 * idx) + _3336 + 32] = _6040
            _6027 = mem[_1031]
            idx = idx + 1
            continue 
        _6633 = mem[_2119]
        idx = 0
        s = 0
        while idx < _6633:
            require idx < mem[_1031]
            _6658 = mem[mem[(32 * idx) + _1031 + 32]]
            require idx < mem[_1031]
            require idx < mem[_1031]
            _6714 = mem[mem[(32 * idx) + _1031 + 32] + 64]
            require idx < mem[_1031]
            _6742 = mem[mem[(32 * idx) + _1031 + 32] + 96]
            require idx < mem[_1031]
            _6777 = mem[mem[(32 * idx) + _1031 + 32] + 128]
            require idx < mem[_2119]
            _6815 = mem[(32 * idx) + _2119 + 32]
            require idx < mem[_1031]
            _6846 = mem[mem[(32 * idx) + _1031 + 32] + 160]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
            mem[mem[64] + 36] = _6714
            mem[mem[64] + 68] = _6742
            mem[mem[64] + 100] = _6777
            mem[mem[64] + 132] = _6815
            mem[mem[64] + 164] = _6846
            require ext_code.size(address(_6658))
            staticcall address(_6658).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _6714, _6742, _6777, _6815, _6846
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7033 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7049 = mem[_7033]
            require mem[_7033] == mem[_7033]
            if mem[_7033] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _6633 = mem[_2119]
            idx = idx + 1
            s = mem[_7033] + s
            continue 
        _6683 = mem[64]
        mem[mem[64]] = 64
        _6775 = mem[_3336]
        mem[mem[64] + 64] = mem[_3336]
        idx = 0
        s = _3336 + 32
        t = mem[64] + 96
        while idx < _6775:
            _7117 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_7117 + 44 len 20]
            mem[t + 64] = mem[_7117 + 76 len 20]
            mem[t + 96] = mem[_7117 + 96]
            mem[t + 128] = mem[_7117 + 128]
            mem[t + 160] = mem[_7117 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        mem[_6683 + 32] = _7049 * _6633
        return memory
          from mem[64]
           len _6683 + (192 * _6775) + -mem[64] + 96
    mem[64] = _1031 + (32 * _5) + 256
    mem[_1031 + (32 * _5) + 32] = 0
    mem[_1031 + (32 * _5) + 64] = 0
    mem[_1031 + (32 * _5) + 96] = 0
    mem[_1031 + (32 * _5) + 128] = 0
    mem[_1031 + (32 * _5) + 160] = 0
    mem[_1031 + (32 * _5) + 192] = 0
    mem[_1031 + (32 * _5) + 224] = 0
    mem[var80001] = _1031 + (32 * _5) + 32
    s = var80001
    s = var80002
    while ceil32(return_data.size) + (32 * _5) + 127:
        mem[64] = mem[64] + 224
        mem[_1031 + (32 * _5) + 32] = 0
        mem[_1031 + (32 * _5) + 64] = 0
        mem[_1031 + (32 * _5) + 96] = 0
        mem[_1031 + (32 * _5) + 128] = 0
        mem[_1031 + (32 * _5) + 160] = 0
        mem[_1031 + (32 * _5) + 192] = 0
        mem[_1031 + (32 * _5) + 224] = 0
        mem[_4 + (32 * _5) + 160] = _1031 + (32 * _5) + 32
        s = _4 + (32 * _5) + 160
        s = ceil32(return_data.size) + (32 * _5) + 127
        continue 
    _4255 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _4255:
        require idx < mem[ceil32(return_data.size) + 96]
        _4293 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _4313 = mem[64]
        mem[64] = mem[64] + 224
        mem[_4313] = 0
        mem[_4313 + 32] = 0
        mem[_4313 + 64] = 0
        mem[_4313 + 96] = 0
        mem[_4313 + 128] = 0
        mem[_4313 + 160] = 0
        mem[_4313 + 192] = 0
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_4293))
        staticcall address(_4293).getBalance(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4586 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4636 = mem[_4586]
        require mem[_4586] == mem[_4586]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(_4293))
        staticcall address(_4293).getBalance(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4963 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4985 = mem[_4963]
        require mem[_4963] == mem[_4963]
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_4293))
        staticcall address(_4293).getDenormalizedWeight(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5067 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5085 = mem[_5067]
        require mem[_5067] == mem[_5067]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(_4293))
        staticcall address(_4293).getDenormalizedWeight(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5142 = mem[_5136]
        require mem[_5136] == mem[_5136]
        require ext_code.size(address(_4293))
        staticcall address(_4293).getSwapFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5150 = mem[_5149]
        require mem[_5149] == mem[_5149]
        if _5085 + _5142 < _5142:
            revert with 0, 'SafeMath: addition overflow'
        if not _5085:
            _5153 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5153] = 26
            mem[_5153 + 32] = 'SafeMath: division by zero'
            if not _5085 + _5142:
                _5156 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5156 + 68] = mem[idx + _5153 + 32]
                    _4255 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 32
                    continue 
                mem[_5156 + 94] = 0
                revert with memory
                  from mem[64]
                   len _5156 + -mem[64] + 100
            if not 0 / _5085 + _5142:
                _5163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5163] = 26
                mem[_5163 + 32] = 'SafeMath: division by zero'
                _5171 = mem[64]
                mem[64] = mem[64] + 224
                mem[_5171] = 0
                mem[_5171 + 32] = 0
                mem[_5171 + 64] = 0
                mem[_5171 + 96] = 0
                mem[_5171 + 128] = 0
                mem[_5171 + 160] = 0
                mem[_5171 + 192] = 0
                _5178 = mem[64]
                mem[64] = mem[64] + 224
                mem[_5178] = address(_4293)
                mem[_5178 + 32] = _4636
                mem[_5178 + 64] = _5085
                mem[_5178 + 96] = _4985
                mem[_5178 + 128] = _5142
                mem[_5178 + 160] = _5150
                mem[_5178 + 192] = 0
                require idx < mem[_1031]
                mem[(32 * idx) + _1031 + 32] = _5178
                require idx < mem[_1031]
                if s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _4255 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            if _4985 * 0 / _5085 + _5142 / 0 / _5085 + _5142 != _4985:
                revert with 0, 'SafeMath: multiplication overflow'
            _5165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5165] = 26
            mem[_5165 + 32] = 'SafeMath: division by zero'
            _5177 = mem[64]
            mem[64] = mem[64] + 224
            mem[_5177] = 0
            mem[_5177 + 32] = 0
            mem[_5177 + 64] = 0
            mem[_5177 + 96] = 0
            mem[_5177 + 128] = 0
            mem[_5177 + 160] = 0
            mem[_5177 + 192] = 0
            _5181 = mem[64]
            mem[64] = mem[64] + 224
            mem[_5181] = address(_4293)
            mem[_5181 + 32] = _4636
            mem[_5181 + 64] = _5085
            mem[_5181 + 96] = _4985
            mem[_5181 + 128] = _5142
            mem[_5181 + 160] = _5150
            mem[_5181 + 192] = _4985 * 0 / _5085 + _5142 / 10^18
            require idx < mem[_1031]
            mem[(32 * idx) + _1031 + 32] = _5181
            require idx < mem[_1031]
            if (_4985 * 0 / _5085 + _5142 / 10^18) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _4255 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = (_4985 * 0 / _5085 + _5142 / 10^18) + s
            continue 
        if 10^18 * _5085 / _5085 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _5155 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5155] = 26
        mem[_5155 + 32] = 'SafeMath: division by zero'
        if not _5085 + _5142:
            _5157 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _5157 + 68] = mem[idx + _5155 + 32]
                _4255 = mem[ceil32(return_data.size) + 96]
                idx = idx + 32
                continue 
            mem[_5157 + 94] = 0
            revert with memory
              from mem[64]
               len _5157 + -mem[64] + 100
        if not 10^18 * _5085 / _5085 + _5142:
            _5164 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5164] = 26
            mem[_5164 + 32] = 'SafeMath: division by zero'
            _5174 = mem[64]
            mem[64] = mem[64] + 224
            mem[_5174] = 0
            mem[_5174 + 32] = 0
            mem[_5174 + 64] = 0
            mem[_5174 + 96] = 0
            mem[_5174 + 128] = 0
            mem[_5174 + 160] = 0
            mem[_5174 + 192] = 0
            _5180 = mem[64]
            mem[64] = mem[64] + 224
            mem[_5180] = address(_4293)
            mem[_5180 + 32] = _4636
            mem[_5180 + 64] = _5085
            mem[_5180 + 96] = _4985
            mem[_5180 + 128] = _5142
            mem[_5180 + 160] = _5150
            mem[_5180 + 192] = 0
            require idx < mem[_1031]
            mem[(32 * idx) + _1031 + 32] = _5180
            require idx < mem[_1031]
            if s < s:
                revert with 0, 'SafeMath: addition overflow'
            _4255 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s
            continue 
        if _4985 * 10^18 * _5085 / _5085 + _5142 / 10^18 * _5085 / _5085 + _5142 != _4985:
            revert with 0, 'SafeMath: multiplication overflow'
        _5167 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5167] = 26
        mem[_5167 + 32] = 'SafeMath: division by zero'
        _5179 = mem[64]
        mem[64] = mem[64] + 224
        mem[_5179] = 0
        mem[_5179 + 32] = 0
        mem[_5179 + 64] = 0
        mem[_5179 + 96] = 0
        mem[_5179 + 128] = 0
        mem[_5179 + 160] = 0
        mem[_5179 + 192] = 0
        _5183 = mem[64]
        mem[64] = mem[64] + 224
        mem[_5183] = address(_4293)
        mem[_5183 + 32] = _4636
        mem[_5183 + 64] = _5085
        mem[_5183 + 96] = _4985
        mem[_5183 + 128] = _5142
        mem[_5183 + 160] = _5150
        mem[_5183 + 192] = _4985 * 10^18 * _5085 / _5085 + _5142 / 10^18
        require idx < mem[_1031]
        mem[(32 * idx) + _1031 + 32] = _5183
        require idx < mem[_1031]
        if (_4985 * 10^18 * _5085 / _5085 + _5142 / 10^18) + s < s:
            revert with 0, 'SafeMath: addition overflow'
        _4255 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = (_4985 * 10^18 * _5085 / _5085 + _5142 / 10^18) + s
        continue 
    _4278 = mem[_1031]
    _4279 = mem[64]
    mem[mem[64]] = mem[_1031]
    mem[64] = mem[64] + (32 * _4278) + 32
    if not _4278:
        _5215 = mem[_1031]
        idx = 0
        t = 0
        while idx < _5215:
            require idx < mem[_1031]
            _5238 = mem[mem[(32 * idx) + _1031 + 32] + 192]
            if not arg3:
                _5353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5353] = 26
                mem[_5353 + 32] = 'SafeMath: division by zero'
                if s:
                    require idx < mem[_4279]
                    mem[(32 * idx) + _4279 + 32] = 0 / s
                    require idx < mem[_4279]
                    if (0 / s) + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    _5215 = mem[_1031]
                    idx = idx + 1
                    t = (0 / s) + t
                    continue 
                _5400 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5400 + 68] = mem[idx + _5353 + 32]
                    _5215 = mem[_1031]
                    idx = idx + 32
                    continue 
                mem[_5400 + 94] = 0
                revert with memory
                  from mem[64]
                   len _5400 + -mem[64] + 100
            if mem[mem[(32 * idx) + _1031 + 32] + 192] * arg3 / arg3 != mem[mem[(32 * idx) + _1031 + 32] + 192]:
                revert with 0, 'SafeMath: multiplication overflow'
            _5381 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5381] = 26
            mem[_5381 + 32] = 'SafeMath: division by zero'
            if s:
                require idx < mem[_4279]
                mem[(32 * idx) + _4279 + 32] = _5238 * arg3 / s
                require idx < mem[_4279]
                if (_5238 * arg3 / s) + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                _5215 = mem[_1031]
                idx = idx + 1
                t = (_5238 * arg3 / s) + t
                continue 
            _5420 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _5420 + 68] = mem[idx + _5381 + 32]
                _5215 = mem[_1031]
                idx = idx + 32
                continue 
            mem[_5420 + 94] = 0
            revert with memory
              from mem[64]
               len _5420 + -mem[64] + 100
        if t < arg3:
            _5258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5258] = 30
            mem[_5258 + 32] = 'SafeMath: subtraction overflow'
            if t > arg3:
                var104001 = 32
                revert with 0, 'SafeMath: subtraction overflow', 0
            require 0 < mem[_4279]
            if arg3 - t + mem[_4279 + 32] < mem[_4279 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_4279]
            mem[_4279 + 32] = arg3 - t + mem[_4279 + 32]
            _5478 = mem[_1031]
            _5479 = mem[64]
            mem[mem[64]] = mem[_1031]
            mem[64] = mem[64] + (32 * _5478) + 32
            if not _5478:
                _6030 = mem[_1031]
                idx = 0
                while idx < _6030:
                    _6050 = mem[64]
                    mem[64] = mem[64] + 192
                    require idx < mem[_1031]
                    mem[_6050] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                    mem[_6050 + 32] = arg1
                    mem[_6050 + 64] = arg2
                    require idx < mem[_4279]
                    mem[_6050 + 96] = mem[(32 * idx) + _4279 + 32]
                    mem[_6050 + 128] = 0
                    mem[_6050 + 160] = -1
                    require idx < mem[_5479]
                    mem[(32 * idx) + _5479 + 32] = _6050
                    _6030 = mem[_1031]
                    idx = idx + 1
                    continue 
                _6637 = mem[_4279]
                idx = 0
                s = 0
                while idx < _6637:
                    require idx < mem[_1031]
                    _6667 = mem[mem[(32 * idx) + _1031 + 32]]
                    require idx < mem[_1031]
                    require idx < mem[_1031]
                    _6724 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                    require idx < mem[_1031]
                    _6753 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                    require idx < mem[_1031]
                    _6792 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                    require idx < mem[_4279]
                    _6824 = mem[(32 * idx) + _4279 + 32]
                    require idx < mem[_1031]
                    _6856 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                    mem[mem[64] + 36] = _6724
                    mem[mem[64] + 68] = _6753
                    mem[mem[64] + 100] = _6792
                    mem[mem[64] + 132] = _6824
                    mem[mem[64] + 164] = _6856
                    require ext_code.size(address(_6667))
                    staticcall address(_6667).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _6724, _6753, _6792, _6824, _6856
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7052 = mem[_7036]
                    require mem[_7036] == mem[_7036]
                    if mem[_7036] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _6637 = mem[_4279]
                    idx = idx + 1
                    s = mem[_7036] + s
                    continue 
                _6695 = mem[64]
                mem[mem[64]] = 64
                _6790 = mem[_5479]
                mem[mem[64] + 64] = mem[_5479]
                idx = 0
                s = _5479 + 32
                t = mem[64] + 96
                while idx < _6790:
                    _7122 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7122 + 44 len 20]
                    mem[t + 64] = mem[_7122 + 76 len 20]
                    mem[t + 96] = mem[_7122 + 96]
                    mem[t + 128] = mem[_7122 + 128]
                    mem[t + 160] = mem[_7122 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 192
                    continue 
                mem[_6695 + 32] = _7052 * _6637
                return memory
                  from mem[64]
                   len _6695 + (192 * _6790) + -mem[64] + 96
            mem[64] = _5479 + (32 * _5478) + 224
            mem[_5479 + (32 * _5478) + 32] = 0
            mem[_5479 + (32 * _5478) + 64] = 0
            mem[_5479 + (32 * _5478) + 96] = 0
            mem[_5479 + (32 * _5478) + 128] = 0
            mem[_5479 + (32 * _5478) + 160] = 0
            mem[_5479 + (32 * _5478) + 192] = 0
            mem[var107001] = _5479 + (32 * _5478) + 32
            s = var107001
            idx = var107002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[_5479 + (32 * _5478) + 32] = 0
                mem[_5479 + (32 * _5478) + 64] = 0
                mem[_5479 + (32 * _5478) + 96] = 0
                mem[_5479 + (32 * _5478) + 128] = 0
                mem[_5479 + (32 * _5478) + 160] = 0
                mem[_5479 + (32 * _5478) + 192] = 0
                mem[s + 32] = _5479 + (32 * _5478) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _7112 = mem[_1031]
            idx = 0
            while idx < _7112:
                _7123 = mem[64]
                mem[64] = mem[64] + 192
                require idx < mem[_1031]
                mem[_7123] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                mem[_7123 + 32] = arg1
                mem[_7123 + 64] = arg2
                require idx < mem[_4279]
                mem[_7123 + 96] = mem[(32 * idx) + _4279 + 32]
                mem[_7123 + 128] = 0
                mem[_7123 + 160] = -1
                require idx < mem[_5479]
                mem[(32 * idx) + _5479 + 32] = _7123
                _7112 = mem[_1031]
                idx = idx + 1
                continue 
            _7356 = mem[_4279]
            idx = 0
            s = 0
            while idx < _7356:
                require idx < mem[_1031]
                _7367 = mem[mem[(32 * idx) + _1031 + 32]]
                require idx < mem[_1031]
                require idx < mem[_1031]
                _7395 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                require idx < mem[_1031]
                _7407 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                require idx < mem[_1031]
                _7421 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                require idx < mem[_4279]
                _7433 = mem[(32 * idx) + _4279 + 32]
                require idx < mem[_1031]
                _7443 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                mem[mem[64] + 36] = _7395
                mem[mem[64] + 68] = _7407
                mem[mem[64] + 100] = _7421
                mem[mem[64] + 132] = _7433
                mem[mem[64] + 164] = _7443
                require ext_code.size(address(_7367))
                staticcall address(_7367).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _7395, _7407, _7421, _7433, _7443
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7488 = mem[_7480]
                require mem[_7480] == mem[_7480]
                if mem[_7480] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _7356 = mem[_4279]
                idx = idx + 1
                s = mem[_7480] + s
                continue 
            _7379 = mem[64]
            mem[mem[64]] = 64
            _7419 = mem[_5479]
            mem[mem[64] + 64] = mem[_5479]
            idx = 0
            s = _5479 + 32
            t = mem[64] + 96
            while idx < _7419:
                _7504 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7504 + 44 len 20]
                mem[t + 64] = mem[_7504 + 76 len 20]
                mem[t + 96] = mem[_7504 + 96]
                mem[t + 128] = mem[_7504 + 128]
                mem[t + 160] = mem[_7504 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            mem[_7379 + 32] = _7488 * _7356
            return memory
              from mem[64]
               len _7379 + (192 * _7419) + -mem[64] + 96
        _5257 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5257] = 30
        mem[_5257 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > t:
            var104001 = 32
            revert with 0, 'SafeMath: subtraction overflow', 0
        require 0 < mem[_4279]
        _5377 = mem[_4279 + 32]
        _5399 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5399] = 30
        mem[_5399 + 32] = 'SafeMath: subtraction overflow'
        if t - arg3 > _5377:
            var110001 = 32
            revert with 0, 'SafeMath: subtraction overflow', 0
        require 0 < mem[_4279]
        mem[_4279 + 32] = _5377 - t + arg3
        _5523 = mem[_1031]
        _5524 = mem[64]
        mem[mem[64]] = mem[_1031]
        mem[64] = mem[64] + (32 * _5523) + 32
        if not _5523:
            _6029 = mem[_1031]
            idx = 0
            while idx < _6029:
                _6045 = mem[64]
                mem[64] = mem[64] + 192
                require idx < mem[_1031]
                mem[_6045] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                mem[_6045 + 32] = arg1
                mem[_6045 + 64] = arg2
                require idx < mem[_4279]
                mem[_6045 + 96] = mem[(32 * idx) + _4279 + 32]
                mem[_6045 + 128] = 0
                mem[_6045 + 160] = -1
                require idx < mem[_5524]
                mem[(32 * idx) + _5524 + 32] = _6045
                _6029 = mem[_1031]
                idx = idx + 1
                continue 
            _6635 = mem[_4279]
            idx = 0
            s = 0
            while idx < _6635:
                require idx < mem[_1031]
                _6664 = mem[mem[(32 * idx) + _1031 + 32]]
                require idx < mem[_1031]
                require idx < mem[_1031]
                _6720 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                require idx < mem[_1031]
                _6748 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                require idx < mem[_1031]
                _6785 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                require idx < mem[_4279]
                _6819 = mem[(32 * idx) + _4279 + 32]
                require idx < mem[_1031]
                _6852 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                mem[mem[64] + 36] = _6720
                mem[mem[64] + 68] = _6748
                mem[mem[64] + 100] = _6785
                mem[mem[64] + 132] = _6819
                mem[mem[64] + 164] = _6852
                require ext_code.size(address(_6664))
                staticcall address(_6664).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _6720, _6748, _6785, _6819, _6852
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7051 = mem[_7035]
                require mem[_7035] == mem[_7035]
                if mem[_7035] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _6635 = mem[_4279]
                idx = idx + 1
                s = mem[_7035] + s
                continue 
            _6691 = mem[64]
            mem[mem[64]] = 64
            _6783 = mem[_5524]
            mem[mem[64] + 64] = mem[_5524]
            idx = 0
            s = _5524 + 32
            t = mem[64] + 96
            while idx < _6783:
                _7119 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7119 + 44 len 20]
                mem[t + 64] = mem[_7119 + 76 len 20]
                mem[t + 96] = mem[_7119 + 96]
                mem[t + 128] = mem[_7119 + 128]
                mem[t + 160] = mem[_7119 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            mem[_6691 + 32] = _7051 * _6635
            return memory
              from mem[64]
               len _6691 + (192 * _6783) + -mem[64] + 96
        mem[64] = _5524 + (32 * _5523) + 224
        mem[_5524 + (32 * _5523) + 32] = 0
        mem[_5524 + (32 * _5523) + 64] = 0
        mem[_5524 + (32 * _5523) + 96] = 0
        mem[_5524 + (32 * _5523) + 128] = 0
        mem[_5524 + (32 * _5523) + 160] = 0
        mem[_5524 + (32 * _5523) + 192] = 0
        mem[var109001] = _5524 + (32 * _5523) + 32
        s = var109001
        idx = var109002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_5524 + (32 * _5523) + 32] = 0
            mem[_5524 + (32 * _5523) + 64] = 0
            mem[_5524 + (32 * _5523) + 96] = 0
            mem[_5524 + (32 * _5523) + 128] = 0
            mem[_5524 + (32 * _5523) + 160] = 0
            mem[_5524 + (32 * _5523) + 192] = 0
            mem[s + 32] = _5524 + (32 * _5523) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _7111 = mem[_1031]
        idx = 0
        while idx < _7111:
            _7120 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[_1031]
            mem[_7120] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
            mem[_7120 + 32] = arg1
            mem[_7120 + 64] = arg2
            require idx < mem[_4279]
            mem[_7120 + 96] = mem[(32 * idx) + _4279 + 32]
            mem[_7120 + 128] = 0
            mem[_7120 + 160] = -1
            require idx < mem[_5524]
            mem[(32 * idx) + _5524 + 32] = _7120
            _7111 = mem[_1031]
            idx = idx + 1
            continue 
        _7355 = mem[_4279]
        idx = 0
        s = 0
        while idx < _7355:
            require idx < mem[_1031]
            _7364 = mem[mem[(32 * idx) + _1031 + 32]]
            require idx < mem[_1031]
            require idx < mem[_1031]
            _7392 = mem[mem[(32 * idx) + _1031 + 32] + 64]
            require idx < mem[_1031]
            _7404 = mem[mem[(32 * idx) + _1031 + 32] + 96]
            require idx < mem[_1031]
            _7417 = mem[mem[(32 * idx) + _1031 + 32] + 128]
            require idx < mem[_4279]
            _7431 = mem[(32 * idx) + _4279 + 32]
            require idx < mem[_1031]
            _7440 = mem[mem[(32 * idx) + _1031 + 32] + 160]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
            mem[mem[64] + 36] = _7392
            mem[mem[64] + 68] = _7404
            mem[mem[64] + 100] = _7417
            mem[mem[64] + 132] = _7431
            mem[mem[64] + 164] = _7440
            require ext_code.size(address(_7364))
            staticcall address(_7364).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _7392, _7404, _7417, _7431, _7440
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7487 = mem[_7479]
            require mem[_7479] == mem[_7479]
            if mem[_7479] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _7355 = mem[_4279]
            idx = idx + 1
            s = mem[_7479] + s
            continue 
        _7375 = mem[64]
        mem[mem[64]] = 64
        _7415 = mem[_5524]
        mem[mem[64] + 64] = mem[_5524]
        idx = 0
        s = _5524 + 32
        t = mem[64] + 96
        while idx < _7415:
            _7503 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_7503 + 44 len 20]
            mem[t + 64] = mem[_7503 + 76 len 20]
            mem[t + 96] = mem[_7503 + 96]
            mem[t + 128] = mem[_7503 + 128]
            mem[t + 160] = mem[_7503 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        mem[_7375 + 32] = _7487 * _7355
        return memory
          from mem[64]
           len _7375 + (192 * _7415) + -mem[64] + 96
    mem[_4279 + 32 len 32 * _4278] = code.data[13429 len 32 * _4278]
    _5216 = mem[_1031]
    idx = 0
    t = 0
    while idx < _5216:
        require idx < mem[_1031]
        _5240 = mem[mem[(32 * idx) + _1031 + 32] + 192]
        if not arg3:
            _5356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5356] = 26
            mem[_5356 + 32] = 'SafeMath: division by zero'
            if s:
                require idx < mem[_4279]
                mem[(32 * idx) + _4279 + 32] = 0 / s
                require idx < mem[_4279]
                if (0 / s) + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                _5216 = mem[_1031]
                idx = idx + 1
                t = (0 / s) + t
                continue 
            _5402 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _5402 + 68] = mem[idx + _5356 + 32]
                _5216 = mem[_1031]
                idx = idx + 32
                continue 
            mem[_5402 + 94] = 0
            revert with memory
              from mem[64]
               len _5402 + -mem[64] + 100
        if mem[mem[(32 * idx) + _1031 + 32] + 192] * arg3 / arg3 != mem[mem[(32 * idx) + _1031 + 32] + 192]:
            revert with 0, 'SafeMath: multiplication overflow'
        _5386 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5386] = 26
        mem[_5386 + 32] = 'SafeMath: division by zero'
        if s:
            require idx < mem[_4279]
            mem[(32 * idx) + _4279 + 32] = _5240 * arg3 / s
            require idx < mem[_4279]
            if (_5240 * arg3 / s) + t < t:
                revert with 0, 'SafeMath: addition overflow'
            _5216 = mem[_1031]
            idx = idx + 1
            t = (_5240 * arg3 / s) + t
            continue 
        _5422 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _5422 + 68] = mem[idx + _5386 + 32]
            _5216 = mem[_1031]
            idx = idx + 32
            continue 
        mem[_5422 + 94] = 0
        revert with memory
          from mem[64]
           len _5422 + -mem[64] + 100
    if t < arg3:
        _5260 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5260] = 30
        mem[_5260 + 32] = 'SafeMath: subtraction overflow'
        if t > arg3:
            var105001 = 32
            revert with 0, 'SafeMath: subtraction overflow', 0
        require 0 < mem[_4279]
        if arg3 - t + mem[_4279 + 32] < mem[_4279 + 32]:
            revert with 0, 'SafeMath: addition overflow'
        require 0 < mem[_4279]
        mem[_4279 + 32] = arg3 - t + mem[_4279 + 32]
        _5484 = mem[_1031]
        _5485 = mem[64]
        mem[mem[64]] = mem[_1031]
        mem[64] = mem[64] + (32 * _5484) + 32
        if not _5484:
            _6032 = mem[_1031]
            idx = 0
            while idx < _6032:
                _6061 = mem[64]
                mem[64] = mem[64] + 192
                require idx < mem[_1031]
                mem[_6061] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
                mem[_6061 + 32] = arg1
                mem[_6061 + 64] = arg2
                require idx < mem[_4279]
                mem[_6061 + 96] = mem[(32 * idx) + _4279 + 32]
                mem[_6061 + 128] = 0
                mem[_6061 + 160] = -1
                require idx < mem[_5485]
                mem[(32 * idx) + _5485 + 32] = _6061
                _6032 = mem[_1031]
                idx = idx + 1
                continue 
            _6641 = mem[_4279]
            idx = 0
            s = 0
            while idx < _6641:
                require idx < mem[_1031]
                _6673 = mem[mem[(32 * idx) + _1031 + 32]]
                require idx < mem[_1031]
                require idx < mem[_1031]
                _6732 = mem[mem[(32 * idx) + _1031 + 32] + 64]
                require idx < mem[_1031]
                _6763 = mem[mem[(32 * idx) + _1031 + 32] + 96]
                require idx < mem[_1031]
                _6806 = mem[mem[(32 * idx) + _1031 + 32] + 128]
                require idx < mem[_4279]
                _6834 = mem[(32 * idx) + _4279 + 32]
                require idx < mem[_1031]
                _6864 = mem[mem[(32 * idx) + _1031 + 32] + 160]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
                mem[mem[64] + 36] = _6732
                mem[mem[64] + 68] = _6763
                mem[mem[64] + 100] = _6806
                mem[mem[64] + 132] = _6834
                mem[mem[64] + 164] = _6864
                require ext_code.size(address(_6673))
                staticcall address(_6673).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _6732, _6763, _6806, _6834, _6864
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7038 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7054 = mem[_7038]
                require mem[_7038] == mem[_7038]
                if mem[_7038] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                _6641 = mem[_4279]
                idx = idx + 1
                s = mem[_7038] + s
                continue 
            _6703 = mem[64]
            mem[mem[64]] = 64
            _6804 = mem[_5485]
            mem[mem[64] + 64] = mem[_5485]
            idx = 0
            s = _5485 + 32
            t = mem[64] + 96
            while idx < _6804:
                _7128 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7128 + 44 len 20]
                mem[t + 64] = mem[_7128 + 76 len 20]
                mem[t + 96] = mem[_7128 + 96]
                mem[t + 128] = mem[_7128 + 128]
                mem[t + 160] = mem[_7128 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            mem[_6703 + 32] = _7054 * _6641
            return memory
              from mem[64]
               len _6703 + (192 * _6804) + -mem[64] + 96
        mem[64] = _5485 + (32 * _5484) + 224
        mem[_5485 + (32 * _5484) + 32] = 0
        mem[_5485 + (32 * _5484) + 64] = 0
        mem[_5485 + (32 * _5484) + 96] = 0
        mem[_5485 + (32 * _5484) + 128] = 0
        mem[_5485 + (32 * _5484) + 160] = 0
        mem[_5485 + (32 * _5484) + 192] = 0
        mem[var108001] = _5485 + (32 * _5484) + 32
        s = var108001
        idx = var108002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_5485 + (32 * _5484) + 32] = 0
            mem[_5485 + (32 * _5484) + 64] = 0
            mem[_5485 + (32 * _5484) + 96] = 0
            mem[_5485 + (32 * _5484) + 128] = 0
            mem[_5485 + (32 * _5484) + 160] = 0
            mem[_5485 + (32 * _5484) + 192] = 0
            mem[s + 32] = _5485 + (32 * _5484) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _7114 = mem[_1031]
        idx = 0
        while idx < _7114:
            _7129 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[_1031]
            mem[_7129] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
            mem[_7129 + 32] = arg1
            mem[_7129 + 64] = arg2
            require idx < mem[_4279]
            mem[_7129 + 96] = mem[(32 * idx) + _4279 + 32]
            mem[_7129 + 128] = 0
            mem[_7129 + 160] = -1
            require idx < mem[_5485]
            mem[(32 * idx) + _5485 + 32] = _7129
            _7114 = mem[_1031]
            idx = idx + 1
            continue 
        _7358 = mem[_4279]
        idx = 0
        s = 0
        while idx < _7358:
            require idx < mem[_1031]
            _7373 = mem[mem[(32 * idx) + _1031 + 32]]
            require idx < mem[_1031]
            require idx < mem[_1031]
            _7401 = mem[mem[(32 * idx) + _1031 + 32] + 64]
            require idx < mem[_1031]
            _7413 = mem[mem[(32 * idx) + _1031 + 32] + 96]
            require idx < mem[_1031]
            _7429 = mem[mem[(32 * idx) + _1031 + 32] + 128]
            require idx < mem[_4279]
            _7437 = mem[(32 * idx) + _4279 + 32]
            require idx < mem[_1031]
            _7449 = mem[mem[(32 * idx) + _1031 + 32] + 160]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
            mem[mem[64] + 36] = _7401
            mem[mem[64] + 68] = _7413
            mem[mem[64] + 100] = _7429
            mem[mem[64] + 132] = _7437
            mem[mem[64] + 164] = _7449
            require ext_code.size(address(_7373))
            staticcall address(_7373).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _7401, _7413, _7429, _7437, _7449
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7490 = mem[_7482]
            require mem[_7482] == mem[_7482]
            if mem[_7482] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _7358 = mem[_4279]
            idx = idx + 1
            s = mem[_7482] + s
            continue 
        _7387 = mem[64]
        mem[mem[64]] = 64
        _7427 = mem[_5485]
        mem[mem[64] + 64] = mem[_5485]
        idx = 0
        s = _5485 + 32
        t = mem[64] + 96
        while idx < _7427:
            _7506 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_7506 + 44 len 20]
            mem[t + 64] = mem[_7506 + 76 len 20]
            mem[t + 96] = mem[_7506 + 96]
            mem[t + 128] = mem[_7506 + 128]
            mem[t + 160] = mem[_7506 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        mem[_7387 + 32] = _7490 * _7358
        return memory
          from mem[64]
           len _7387 + (192 * _7427) + -mem[64] + 96
    _5259 = mem[64]
    mem[64] = mem[64] + 64
    mem[_5259] = 30
    mem[_5259 + 32] = 'SafeMath: subtraction overflow'
    if arg3 > t:
        var105001 = 32
        revert with 0, 'SafeMath: subtraction overflow', 0
    require 0 < mem[_4279]
    _5382 = mem[_4279 + 32]
    _5401 = mem[64]
    mem[64] = mem[64] + 64
    mem[_5401] = 30
    mem[_5401 + 32] = 'SafeMath: subtraction overflow'
    if t - arg3 > _5382:
        var111001 = 32
        revert with 0, 'SafeMath: subtraction overflow', 0
    require 0 < mem[_4279]
    mem[_4279 + 32] = _5382 - t + arg3
    _5527 = mem[_1031]
    _5528 = mem[64]
    mem[mem[64]] = mem[_1031]
    mem[64] = mem[64] + (32 * _5527) + 32
    if not _5527:
        _6031 = mem[_1031]
        idx = 0
        while idx < _6031:
            _6056 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[_1031]
            mem[_6056] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
            mem[_6056 + 32] = arg1
            mem[_6056 + 64] = arg2
            require idx < mem[_4279]
            mem[_6056 + 96] = mem[(32 * idx) + _4279 + 32]
            mem[_6056 + 128] = 0
            mem[_6056 + 160] = -1
            require idx < mem[_5528]
            mem[(32 * idx) + _5528 + 32] = _6056
            _6031 = mem[_1031]
            idx = idx + 1
            continue 
        _6639 = mem[_4279]
        idx = 0
        s = 0
        while idx < _6639:
            require idx < mem[_1031]
            _6670 = mem[mem[(32 * idx) + _1031 + 32]]
            require idx < mem[_1031]
            require idx < mem[_1031]
            _6728 = mem[mem[(32 * idx) + _1031 + 32] + 64]
            require idx < mem[_1031]
            _6758 = mem[mem[(32 * idx) + _1031 + 32] + 96]
            require idx < mem[_1031]
            _6799 = mem[mem[(32 * idx) + _1031 + 32] + 128]
            require idx < mem[_4279]
            _6829 = mem[(32 * idx) + _4279 + 32]
            require idx < mem[_1031]
            _6860 = mem[mem[(32 * idx) + _1031 + 32] + 160]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
            mem[mem[64] + 36] = _6728
            mem[mem[64] + 68] = _6758
            mem[mem[64] + 100] = _6799
            mem[mem[64] + 132] = _6829
            mem[mem[64] + 164] = _6860
            require ext_code.size(address(_6670))
            staticcall address(_6670).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _6728, _6758, _6799, _6829, _6860
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7037 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7053 = mem[_7037]
            require mem[_7037] == mem[_7037]
            if mem[_7037] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _6639 = mem[_4279]
            idx = idx + 1
            s = mem[_7037] + s
            continue 
        _6699 = mem[64]
        mem[mem[64]] = 64
        _6797 = mem[_5528]
        mem[mem[64] + 64] = mem[_5528]
        idx = 0
        s = _5528 + 32
        t = mem[64] + 96
        while idx < _6797:
            _7125 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_7125 + 44 len 20]
            mem[t + 64] = mem[_7125 + 76 len 20]
            mem[t + 96] = mem[_7125 + 96]
            mem[t + 128] = mem[_7125 + 128]
            mem[t + 160] = mem[_7125 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        mem[_6699 + 32] = _7053 * _6639
        return memory
          from mem[64]
           len _6699 + (192 * _6797) + -mem[64] + 96
    mem[64] = _5528 + (32 * _5527) + 224
    mem[_5528 + (32 * _5527) + 32] = 0
    mem[_5528 + (32 * _5527) + 64] = 0
    mem[_5528 + (32 * _5527) + 96] = 0
    mem[_5528 + (32 * _5527) + 128] = 0
    mem[_5528 + (32 * _5527) + 160] = 0
    mem[_5528 + (32 * _5527) + 192] = 0
    mem[var110001] = _5528 + (32 * _5527) + 32
    s = var110001
    idx = var110002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[_5528 + (32 * _5527) + 32] = 0
        mem[_5528 + (32 * _5527) + 64] = 0
        mem[_5528 + (32 * _5527) + 96] = 0
        mem[_5528 + (32 * _5527) + 128] = 0
        mem[_5528 + (32 * _5527) + 160] = 0
        mem[_5528 + (32 * _5527) + 192] = 0
        mem[s + 32] = _5528 + (32 * _5527) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _7113 = mem[_1031]
    idx = 0
    while idx < _7113:
        _7126 = mem[64]
        mem[64] = mem[64] + 192
        require idx < mem[_1031]
        mem[_7126] = mem[mem[(32 * idx) + _1031 + 32] + 12 len 20]
        mem[_7126 + 32] = arg1
        mem[_7126 + 64] = arg2
        require idx < mem[_4279]
        mem[_7126 + 96] = mem[(32 * idx) + _4279 + 32]
        mem[_7126 + 128] = 0
        mem[_7126 + 160] = -1
        require idx < mem[_5528]
        mem[(32 * idx) + _5528 + 32] = _7126
        _7113 = mem[_1031]
        idx = idx + 1
        continue 
    _7357 = mem[_4279]
    idx = 0
    s = 0
    while idx < _7357:
        require idx < mem[_1031]
        _7370 = mem[mem[(32 * idx) + _1031 + 32]]
        require idx < mem[_1031]
        require idx < mem[_1031]
        _7398 = mem[mem[(32 * idx) + _1031 + 32] + 64]
        require idx < mem[_1031]
        _7410 = mem[mem[(32 * idx) + _1031 + 32] + 96]
        require idx < mem[_1031]
        _7425 = mem[mem[(32 * idx) + _1031 + 32] + 128]
        require idx < mem[_4279]
        _7435 = mem[(32 * idx) + _4279 + 32]
        require idx < mem[_1031]
        _7446 = mem[mem[(32 * idx) + _1031 + 32] + 160]
        mem[mem[64] + 4] = mem[mem[(32 * idx) + _1031 + 32] + 32]
        mem[mem[64] + 36] = _7398
        mem[mem[64] + 68] = _7410
        mem[mem[64] + 100] = _7425
        mem[mem[64] + 132] = _7435
        mem[mem[64] + 164] = _7446
        require ext_code.size(address(_7370))
        staticcall address(_7370).calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], _7398, _7410, _7425, _7435, _7446
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7481 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7489 = mem[_7481]
        require mem[_7481] == mem[_7481]
        if mem[_7481] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        _7357 = mem[_4279]
        idx = idx + 1
        s = mem[_7481] + s
        continue 
    _7383 = mem[64]
    mem[mem[64]] = 64
    _7423 = mem[_5528]
    mem[mem[64] + 64] = mem[_5528]
    idx = 0
    s = _5528 + 32
    t = mem[64] + 96
    while idx < _7423:
        _7505 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_7505 + 44 len 20]
        mem[t + 64] = mem[_7505 + 76 len 20]
        mem[t + 96] = mem[_7505 + 96]
        mem[t + 128] = mem[_7505 + 128]
        mem[t + 160] = mem[_7505 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    mem[_7383 + 32] = _7489 * _7357
    return memory
      from mem[64]
       len _7383 + (192 * _7423) + -mem[64] + 96
}

function batchSwapExactOut(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256[] arg6, address arg7, address arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (192 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 192
        _826 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_826] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_826 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_826 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_826 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_826 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_826 + 160] = cd[(s + 160)]
        mem[t] = _826
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1767 = mem[96]
        idx = 0
        s = 0
        while idx < _1767:
            _1771 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1771] = 0
            mem[_1771 + 32] = 0
            mem[_1771 + 64] = 0
            mem[_1771 + 96] = 0
            mem[_1771 + 128] = 0
            mem[_1771 + 160] = 0
            require idx < mem[96]
            _1778 = mem[(32 * idx) + 128]
            _1779 = mem[mem[(32 * idx) + 128] + 32]
            _1780 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1780)
            require ext_code.size(address(_1779))
            staticcall address(_1779).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_1780)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1803] == mem[_1803]
            if mem[_1803] <= 0:
                _1812 = mem[_1778 + 128]
                mem[mem[64] + 4] = mem[_1778 + 12 len 20]
                mem[mem[64] + 36] = _1812
                require ext_code.size(address(_1779))
                call address(_1779).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1812
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1844] == bool(mem[_1844])
                _1907 = mem[_1778 + 128]
                _1908 = mem[_1778 + 64]
                _1909 = mem[_1778 + 96]
                _1910 = mem[_1778 + 160]
                mem[mem[64] + 4] = mem[_1778 + 44 len 20]
                mem[mem[64] + 36] = _1907
                mem[mem[64] + 68] = address(_1908)
                mem[mem[64] + 100] = _1909
                mem[mem[64] + 132] = _1910
                require ext_code.size(address(_1780))
                call address(_1780).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1907, address(_1908), _1909, _1910
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2087 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2087] == mem[_2087]
                require mem[_2087 + 32] == mem[_2087 + 32]
                if s + mem[_2087] < mem[_2087]:
                    revert with 0, 'SafeMath: addition overflow'
                _1767 = mem[96]
                idx = idx + 1
                s = s + mem[_2087]
                continue 
            mem[mem[64] + 4] = mem[_1778 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_1779))
            call address(_1779).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1847 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1847] == bool(mem[_1847])
            _1928 = mem[_1778 + 128]
            mem[mem[64] + 4] = mem[_1778 + 12 len 20]
            mem[mem[64] + 36] = _1928
            require ext_code.size(address(_1779))
            call address(_1779).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1928
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2005 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2005] == bool(mem[_2005])
            _2081 = mem[_1778 + 128]
            _2082 = mem[_1778 + 64]
            _2083 = mem[_1778 + 96]
            _2084 = mem[_1778 + 160]
            mem[mem[64] + 4] = mem[_1778 + 44 len 20]
            mem[mem[64] + 36] = _2081
            mem[mem[64] + 68] = address(_2082)
            mem[mem[64] + 100] = _2083
            mem[mem[64] + 132] = _2084
            require ext_code.size(address(_1780))
            call address(_1780).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _2081, address(_2082), _2083, _2084
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2491] == mem[_2491]
            require mem[_2491 + 32] == mem[_2491 + 32]
            if s + mem[_2491] < mem[_2491]:
                revert with 0, 'SafeMath: addition overflow'
            _1767 = mem[96]
            idx = idx + 1
            s = s + mem[_2491]
            continue 
        if s > arg4:
            revert with 0, 'ERR_LIMIT_IN'
        mem[mem[64] + 4] = this.address
        if arg3 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg3)
            staticcall arg3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1794 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1801 = mem[_1794]
            require mem[_1794] == mem[_1794]
            if not mem[_1794]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1882 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1902 = mem[_1882]
                    require mem[_1882] == mem[_1882]
                    if mem[_1882]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1882]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1882] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1902
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1902
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2150 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2150] == bool(mem[_2150])
                            if not mem[_2150]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1883 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1903 = mem[_1883]
                    require mem[_1883] == mem[_1883]
                    if mem[_1883]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1883]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1883] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1903
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1903
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2151] == bool(mem[_2151])
                            if not mem[_2151]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1794]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1794] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2014 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2044 = mem[_2014]
                            require mem[_2014] == mem[_2014]
                            if mem[_2014]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2014]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2014] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2044
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2044
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2474 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2474] == bool(mem[_2474])
                                    if not mem[_2474]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2015 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2045 = mem[_2015]
                            require mem[_2015] == mem[_2015]
                            if mem[_2015]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2015]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2015] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2045
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2045
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2475 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2475] == bool(mem[_2475])
                                    if not mem[_2475]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1861] = return_data.size
                        mem[_1861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2016 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2046 = mem[_2016]
                            require mem[_2016] == mem[_2016]
                            if mem[_2016]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2016]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2016] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2046
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2046
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2476 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2476] == bool(mem[_2476])
                                    if not mem[_2476]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2017 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2047 = mem[_2017]
                            require mem[_2017] == mem[_2017]
                            if mem[_2017]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2017]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2017] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2047
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2047
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2477 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2477] == bool(mem[_2477])
                                    if not mem[_2477]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1801
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1801
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1890] == bool(mem[_1890])
                    if not mem[_1890]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2096 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2134 = mem[_2096]
                        require mem[_2096] == mem[_2096]
                        if mem[_2096]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2096]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2096] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2134
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2134
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2659 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2659] == bool(mem[_2659])
                                if not mem[_2659]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2097 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2135 = mem[_2097]
                        require mem[_2097] == mem[_2097]
                        if mem[_2097]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2097]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2097] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2135
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2135
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2660 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2660] == bool(mem[_2660])
                                if not mem[_2660]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1795 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1802 = mem[_1795]
            require mem[_1795] == mem[_1795]
            if not mem[_1795]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1904 = mem[_1886]
                    require mem[_1886] == mem[_1886]
                    if mem[_1886]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1886]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1886] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1904
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1904
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2152] == bool(mem[_2152])
                            if not mem[_2152]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1905 = mem[_1887]
                    require mem[_1887] == mem[_1887]
                    if mem[_1887]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1887]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1887] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1905
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1905
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2153] == bool(mem[_2153])
                            if not mem[_2153]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1795]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1795] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2018 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2050 = mem[_2018]
                            require mem[_2018] == mem[_2018]
                            if mem[_2018]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2018]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2018] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2050
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2050
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2478 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2478] == bool(mem[_2478])
                                    if not mem[_2478]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2019 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2051 = mem[_2019]
                            require mem[_2019] == mem[_2019]
                            if mem[_2019]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2019]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2019] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2051
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2051
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2479 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2479] == bool(mem[_2479])
                                    if not mem[_2479]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1864 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1864] = return_data.size
                        mem[_1864 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2052 = mem[_2020]
                            require mem[_2020] == mem[_2020]
                            if mem[_2020]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2020]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2020] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2052
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2052
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2480 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2480] == bool(mem[_2480])
                                    if not mem[_2480]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2021 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2053 = mem[_2021]
                            require mem[_2021] == mem[_2021]
                            if mem[_2021]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2021]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2021] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2053
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2053
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2481 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2481] == bool(mem[_2481])
                                    if not mem[_2481]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1802
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1802
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1891] == bool(mem[_1891])
                    if not mem[_1891]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2140 = mem[_2100]
                        require mem[_2100] == mem[_2100]
                        if mem[_2100]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2100]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2100] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2140
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2140
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2665] == bool(mem[_2665])
                                if not mem[_2665]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2101 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2141 = mem[_2101]
                        require mem[_2101] == mem[_2101]
                        if mem[_2101]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2101]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2101] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2141
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2141
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2666 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2666] == bool(mem[_2666])
                                if not mem[_2666]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg4
        require ext_code.size(arg2)
        call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _847 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_847] == bool(mem[_847])
        if not mem[_847]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _1766 = mem[96]
        idx = 0
        s = 0
        while idx < _1766:
            _1769 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1769] = 0
            mem[_1769 + 32] = 0
            mem[_1769 + 64] = 0
            mem[_1769 + 96] = 0
            mem[_1769 + 128] = 0
            mem[_1769 + 160] = 0
            require idx < mem[96]
            _1774 = mem[(32 * idx) + 128]
            _1775 = mem[mem[(32 * idx) + 128] + 32]
            _1776 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1776)
            require ext_code.size(address(_1775))
            staticcall address(_1775).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_1776)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1800] == mem[_1800]
            if mem[_1800] <= 0:
                _1807 = mem[_1774 + 128]
                mem[mem[64] + 4] = mem[_1774 + 12 len 20]
                mem[mem[64] + 36] = _1807
                require ext_code.size(address(_1775))
                call address(_1775).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1807
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1842 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1842] == bool(mem[_1842])
                _1897 = mem[_1774 + 128]
                _1898 = mem[_1774 + 64]
                _1899 = mem[_1774 + 96]
                _1900 = mem[_1774 + 160]
                mem[mem[64] + 4] = mem[_1774 + 44 len 20]
                mem[mem[64] + 36] = _1897
                mem[mem[64] + 68] = address(_1898)
                mem[mem[64] + 100] = _1899
                mem[mem[64] + 132] = _1900
                require ext_code.size(address(_1776))
                call address(_1776).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1897, address(_1898), _1899, _1900
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2086 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2086] == mem[_2086]
                require mem[_2086 + 32] == mem[_2086 + 32]
                if s + mem[_2086] < mem[_2086]:
                    revert with 0, 'SafeMath: addition overflow'
                _1766 = mem[96]
                idx = idx + 1
                s = s + mem[_2086]
                continue 
            mem[mem[64] + 4] = mem[_1774 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_1775))
            call address(_1775).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1846 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1846] == bool(mem[_1846])
            _1921 = mem[_1774 + 128]
            mem[mem[64] + 4] = mem[_1774 + 12 len 20]
            mem[mem[64] + 36] = _1921
            require ext_code.size(address(_1775))
            call address(_1775).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1921
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2004 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2004] == bool(mem[_2004])
            _2071 = mem[_1774 + 128]
            _2072 = mem[_1774 + 64]
            _2073 = mem[_1774 + 96]
            _2074 = mem[_1774 + 160]
            mem[mem[64] + 4] = mem[_1774 + 44 len 20]
            mem[mem[64] + 36] = _2071
            mem[mem[64] + 68] = address(_2072)
            mem[mem[64] + 100] = _2073
            mem[mem[64] + 132] = _2074
            require ext_code.size(address(_1776))
            call address(_1776).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _2071, address(_2072), _2073, _2074
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2486] == mem[_2486]
            require mem[_2486 + 32] == mem[_2486 + 32]
            if s + mem[_2486] < mem[_2486]:
                revert with 0, 'SafeMath: addition overflow'
            _1766 = mem[96]
            idx = idx + 1
            s = s + mem[_2486]
            continue 
        if s > arg4:
            revert with 0, 'ERR_LIMIT_IN'
        mem[mem[64] + 4] = this.address
        if arg3 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg3)
            staticcall arg3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1792 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1798 = mem[_1792]
            require mem[_1792] == mem[_1792]
            if not mem[_1792]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1892 = mem[_1874]
                    require mem[_1874] == mem[_1874]
                    if mem[_1874]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1874]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1874] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1892
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1892
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2146] == bool(mem[_2146])
                            if not mem[_2146]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1893 = mem[_1875]
                    require mem[_1875] == mem[_1875]
                    if mem[_1875]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1875]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1875] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1893
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1893
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2147] == bool(mem[_2147])
                            if not mem[_2147]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1792]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1792] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2006 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2032 = mem[_2006]
                            require mem[_2006] == mem[_2006]
                            if mem[_2006]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2006]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2006] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2032
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2032
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2466 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2466] == bool(mem[_2466])
                                    if not mem[_2466]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2007 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2033 = mem[_2007]
                            require mem[_2007] == mem[_2007]
                            if mem[_2007]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2007]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2007] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2033
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2033
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2467 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2467] == bool(mem[_2467])
                                    if not mem[_2467]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1854] = return_data.size
                        mem[_1854 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2008 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2034 = mem[_2008]
                            require mem[_2008] == mem[_2008]
                            if mem[_2008]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2008]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2008] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2034
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2034
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2468 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2468] == bool(mem[_2468])
                                    if not mem[_2468]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2009 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2035 = mem[_2009]
                            require mem[_2009] == mem[_2009]
                            if mem[_2009]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2009]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2009] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2035
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2035
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2469 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2469] == bool(mem[_2469])
                                    if not mem[_2469]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1798
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1798
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1888] == bool(mem[_1888])
                    if not mem[_1888]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2088 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2122 = mem[_2088]
                        require mem[_2088] == mem[_2088]
                        if mem[_2088]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2088]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2088] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2122
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2122
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2646 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2646] == bool(mem[_2646])
                                if not mem[_2646]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2123 = mem[_2089]
                        require mem[_2089] == mem[_2089]
                        if mem[_2089]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2089]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2089] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2123
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2123
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2647 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2647] == bool(mem[_2647])
                                if not mem[_2647]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1799 = mem[_1793]
            require mem[_1793] == mem[_1793]
            if not mem[_1793]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1894 = mem[_1878]
                    require mem[_1878] == mem[_1878]
                    if mem[_1878]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1878]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1878] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1894
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1894
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2148 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2148] == bool(mem[_2148])
                            if not mem[_2148]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1895 = mem[_1879]
                    require mem[_1879] == mem[_1879]
                    if mem[_1879]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1879]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1879] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1895
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1895
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2149] == bool(mem[_2149])
                            if not mem[_2149]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1793]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1793] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2010 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2038 = mem[_2010]
                            require mem[_2010] == mem[_2010]
                            if mem[_2010]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2010]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2010] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2038
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2038
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2470 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2470] == bool(mem[_2470])
                                    if not mem[_2470]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2011 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2039 = mem[_2011]
                            require mem[_2011] == mem[_2011]
                            if mem[_2011]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2011]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2011] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2039
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2039
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2471 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2471] == bool(mem[_2471])
                                    if not mem[_2471]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1857] = return_data.size
                        mem[_1857 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2012 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2040 = mem[_2012]
                            require mem[_2012] == mem[_2012]
                            if mem[_2012]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2012]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2012] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2040
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2040
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2472] == bool(mem[_2472])
                                    if not mem[_2472]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2013 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2041 = mem[_2013]
                            require mem[_2013] == mem[_2013]
                            if mem[_2013]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2013]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2013] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2041
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2041
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2473 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2473] == bool(mem[_2473])
                                    if not mem[_2473]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1799
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1799
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1889] == bool(mem[_1889])
                    if not mem[_1889]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2128 = mem[_2092]
                        require mem[_2092] == mem[_2092]
                        if mem[_2092]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2092]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2092] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2128
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2128
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2652] == bool(mem[_2652])
                                if not mem[_2652]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2093 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2129 = mem[_2093]
                        require mem[_2093] == mem[_2093]
                        if mem[_2093]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2093]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2093] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2129
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2129
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2653] == bool(mem[_2653])
                                if not mem[_2653]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
    return s
}

function multihopBatchSwapExactOut(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256[][] arg6, address arg7, address arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 128
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
        _911 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32
        mem[_911] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + (192 * cd[(arg1 + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = arg1 + cd[s] + 68
        w = _911 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require calldata.size - v >= 192
            _1951 = mem[64]
            require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
            mem[64] = mem[64] + 192
            require cd[v] == address(cd[v])
            mem[_1951] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_1951 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_1951 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_1951 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_1951 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_1951 + 160] = cd[(v + 160)]
            mem[w] = _1951
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[t] = _911
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1938 = mem[96]
        idx = 0
        s = 0
        while idx < _1938:
            require idx < mem[96]
            if 1 == mem[mem[(32 * idx) + 128]]:
                _1950 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1950] = 0
                mem[_1950 + 32] = 0
                mem[_1950 + 64] = 0
                mem[_1950 + 96] = 0
                mem[_1950 + 128] = 0
                mem[_1950 + 160] = 0
                require idx < mem[96]
                require 0 < mem[mem[(32 * idx) + 128]]
                _1980 = mem[mem[(32 * idx) + 128] + 32]
                _1981 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
                _1982 = mem[mem[mem[(32 * idx) + 128] + 32]]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1982)
                require ext_code.size(address(_1981))
                staticcall address(_1981).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_1982)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2011] == mem[_2011]
                if mem[_2011] <= 0:
                    _2024 = mem[_1980 + 128]
                    mem[mem[64] + 4] = mem[_1980 + 12 len 20]
                    mem[mem[64] + 36] = _2024
                    require ext_code.size(address(_1981))
                    call address(_1981).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _2024
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2062] == bool(mem[_2062])
                    _2143 = mem[_1980 + 128]
                    _2144 = mem[_1980 + 64]
                    _2145 = mem[_1980 + 96]
                    _2146 = mem[_1980 + 160]
                    mem[mem[64] + 4] = mem[_1980 + 44 len 20]
                    mem[mem[64] + 36] = _2143
                    mem[mem[64] + 68] = address(_2144)
                    mem[mem[64] + 100] = _2145
                    mem[mem[64] + 132] = _2146
                    require ext_code.size(address(_1982))
                    call address(_1982).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _2143, address(_2144), _2145, _2146
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2361] == mem[_2361]
                    require mem[_2361 + 32] == mem[_2361 + 32]
                    if s + mem[_2361] < mem[_2361]:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + mem[_2361]
                    continue 
                mem[mem[64] + 4] = mem[_1980 + 12 len 20]
                mem[mem[64] + 36] = 0
                require ext_code.size(address(_1981))
                call address(_1981).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2081 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2081] == bool(mem[_2081])
                _2168 = mem[_1980 + 128]
                mem[mem[64] + 4] = mem[_1980 + 12 len 20]
                mem[mem[64] + 36] = _2168
                require ext_code.size(address(_1981))
                call address(_1981).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2168
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2261] == bool(mem[_2261])
                _2347 = mem[_1980 + 128]
                _2348 = mem[_1980 + 64]
                _2349 = mem[_1980 + 96]
                _2350 = mem[_1980 + 160]
                mem[mem[64] + 4] = mem[_1980 + 44 len 20]
                mem[mem[64] + 36] = _2347
                mem[mem[64] + 68] = address(_2348)
                mem[mem[64] + 100] = _2349
                mem[mem[64] + 132] = _2350
                require ext_code.size(address(_1982))
                call address(_1982).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2347, address(_2348), _2349, _2350
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2785] == mem[_2785]
                require mem[_2785 + 32] == mem[_2785 + 32]
                if s + mem[_2785] < mem[_2785]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + mem[_2785]
                continue 
            _1949 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1949] = 0
            mem[_1949 + 32] = 0
            mem[_1949 + 64] = 0
            mem[_1949 + 96] = 0
            mem[_1949 + 128] = 0
            mem[_1949 + 160] = 0
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            _1976 = mem[mem[(32 * idx) + 128] + 64]
            _1977 = mem[mem[mem[(32 * idx) + 128] + 64]]
            _1978 = mem[mem[mem[(32 * idx) + 128] + 64] + 32]
            mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128] + 64] + 44 len 20]
            require ext_code.size(address(_1977))
            staticcall address(_1977).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(_1978)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1989 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1995 = mem[_1989]
            require mem[_1989] == mem[_1989]
            _2009 = mem[_1976 + 32]
            mem[mem[64] + 4] = mem[_1976 + 44 len 20]
            require ext_code.size(address(_1977))
            staticcall address(_1977).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(_2009)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2017 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2037 = mem[_2017]
            require mem[_2017] == mem[_2017]
            _2056 = mem[_1976 + 64]
            mem[mem[64] + 4] = mem[_1976 + 76 len 20]
            require ext_code.size(address(_1977))
            staticcall address(_1977).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(_2056)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2127 = mem[_2112]
            require mem[_2112] == mem[_2112]
            _2172 = mem[_1976 + 64]
            mem[mem[64] + 4] = mem[_1976 + 76 len 20]
            require ext_code.size(address(_1977))
            staticcall address(_1977).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(_2172)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2287 = mem[_2250]
            require mem[_2250] == mem[_2250]
            _2309 = mem[_1976 + 96]
            require ext_code.size(address(_1977))
            staticcall address(_1977).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2395 = mem[_2345]
            require mem[_2345] == mem[_2345]
            mem[mem[64] + 4] = _1995
            mem[mem[64] + 36] = _2037
            mem[mem[64] + 68] = _2127
            mem[mem[64] + 100] = _2287
            mem[mem[64] + 132] = _2309
            mem[mem[64] + 164] = _2395
            require ext_code.size(address(_1977))
            staticcall address(_1977).calcInGivenOut(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                    gas gas_remaining wei
                   args _1995, _2037, _2127, _2287, _2309, _2395
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2960 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2995 = mem[_2960]
            require mem[_2960] == mem[_2960]
            _3047 = mem[64]
            mem[64] = mem[64] + 192
            mem[_3047] = 0
            mem[_3047 + 32] = 0
            mem[_3047 + 64] = 0
            mem[_3047 + 96] = 0
            mem[_3047 + 128] = 0
            mem[_3047 + 160] = 0
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            _3066 = mem[mem[(32 * idx) + 128] + 32]
            _3067 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
            _3068 = mem[mem[mem[(32 * idx) + 128] + 32]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_3068)
            require ext_code.size(address(_3067))
            staticcall address(_3067).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_3068)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3083 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3083] == mem[_3083]
            if mem[_3083] >= -1:
                _3094 = mem[_3066 + 128]
                _3095 = mem[_3066 + 64]
                _3096 = mem[_3066 + 160]
                mem[mem[64] + 4] = mem[_3066 + 44 len 20]
                mem[mem[64] + 36] = _3094
                mem[mem[64] + 68] = address(_3095)
                mem[mem[64] + 100] = _2995
                mem[mem[64] + 132] = _3096
                require ext_code.size(address(_3068))
                call address(_3068).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3094, address(_3095), _2995, _3096
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _3121 = mem[_3119]
                require mem[_3119] == mem[_3119]
                require mem[_3119 + 32] == mem[_3119 + 32]
                _3127 = mem[_1976 + 32]
                _3128 = mem[_1976]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_3128)
                require ext_code.size(address(_3127))
                staticcall address(_3127).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_3128)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3141] == mem[_3141]
                if mem[_3141] >= -1:
                    _3159 = mem[_1976 + 128]
                    _3160 = mem[_1976 + 64]
                    _3161 = mem[_1976 + 96]
                    _3162 = mem[_1976 + 160]
                    mem[mem[64] + 4] = mem[_1976 + 44 len 20]
                    mem[mem[64] + 36] = _3159
                    mem[mem[64] + 68] = address(_3160)
                    mem[mem[64] + 100] = _3161
                    mem[mem[64] + 132] = _3162
                    require ext_code.size(address(_1977))
                    call address(_1977).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3159, address(_3160), _3161, _3162
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_3209] == mem[_3209]
                    require mem[_3209 + 32] == mem[_3209 + 32]
                else:
                    mem[mem[64] + 4] = mem[_1976 + 12 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_3127))
                    call address(_3127).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3172 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3172] == bool(mem[_3172])
                    _3193 = mem[_1976 + 128]
                    _3194 = mem[_1976 + 64]
                    _3195 = mem[_1976 + 96]
                    _3196 = mem[_1976 + 160]
                    mem[mem[64] + 4] = mem[_1976 + 44 len 20]
                    mem[mem[64] + 36] = _3193
                    mem[mem[64] + 68] = address(_3194)
                    mem[mem[64] + 100] = _3195
                    mem[mem[64] + 132] = _3196
                    require ext_code.size(address(_1977))
                    call address(_1977).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3193, address(_3194), _3195, _3196
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_3240] == mem[_3240]
                    require mem[_3240 + 32] == mem[_3240 + 32]
                if s + _3121 < _3121:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + _3121
                continue 
            mem[mem[64] + 4] = mem[_3066 + 12 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_3067))
            call address(_3067).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3103] == bool(mem[_3103])
            _3112 = mem[_3066 + 128]
            _3113 = mem[_3066 + 64]
            _3114 = mem[_3066 + 160]
            mem[mem[64] + 4] = mem[_3066 + 44 len 20]
            mem[mem[64] + 36] = _3112
            mem[mem[64] + 68] = address(_3113)
            mem[mem[64] + 100] = _2995
            mem[mem[64] + 132] = _3114
            require ext_code.size(address(_3068))
            call address(_3068).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _3112, address(_3113), _2995, _3114
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _3135 = mem[_3133]
            require mem[_3133] == mem[_3133]
            require mem[_3133 + 32] == mem[_3133 + 32]
            _3147 = mem[_1976 + 32]
            _3148 = mem[_1976]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_3148)
            require ext_code.size(address(_3147))
            staticcall address(_3147).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_3148)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3173] == mem[_3173]
            if mem[_3173] >= -1:
                _3199 = mem[_1976 + 128]
                _3200 = mem[_1976 + 64]
                _3201 = mem[_1976 + 96]
                _3202 = mem[_1976 + 160]
                mem[mem[64] + 4] = mem[_1976 + 44 len 20]
                mem[mem[64] + 36] = _3199
                mem[mem[64] + 68] = address(_3200)
                mem[mem[64] + 100] = _3201
                mem[mem[64] + 132] = _3202
                require ext_code.size(address(_1977))
                call address(_1977).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3199, address(_3200), _3201, _3202
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_3241] == mem[_3241]
                require mem[_3241 + 32] == mem[_3241 + 32]
            else:
                mem[mem[64] + 4] = mem[_1976 + 12 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_3147))
                call address(_3147).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3217] == bool(mem[_3217])
                _3229 = mem[_1976 + 128]
                _3230 = mem[_1976 + 64]
                _3231 = mem[_1976 + 96]
                _3232 = mem[_1976 + 160]
                mem[mem[64] + 4] = mem[_1976 + 44 len 20]
                mem[mem[64] + 36] = _3229
                mem[mem[64] + 68] = address(_3230)
                mem[mem[64] + 100] = _3231
                mem[mem[64] + 132] = _3232
                require ext_code.size(address(_1977))
                call address(_1977).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3229, address(_3230), _3231, _3232
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_3259] == mem[_3259]
                require mem[_3259 + 32] == mem[_3259 + 32]
            if s + _3135 < _3135:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + _3135
            continue 
        if s > arg4:
            revert with 0, 'ERR_LIMIT_IN'
        mem[mem[64] + 4] = this.address
        if arg3 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg3)
            staticcall arg3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1998 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2002 = mem[_1998]
            require mem[_1998] == mem[_1998]
            if not mem[_1998]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2118 = mem[_2100]
                    require mem[_2100] == mem[_2100]
                    if mem[_2100]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2100]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2100] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2118
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2118
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2391] == bool(mem[_2391])
                            if not mem[_2391]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2119 = mem[_2101]
                    require mem[_2101] == mem[_2101]
                    if mem[_2101]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2101]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2101] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2119
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2119
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2392] == bool(mem[_2392])
                            if not mem[_2392]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1998]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1998] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2242 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2275 = mem[_2242]
                            require mem[_2242] == mem[_2242]
                            if mem[_2242]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2242]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2242] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2275
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2275
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2716 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2716] == bool(mem[_2716])
                                    if not mem[_2716]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2243 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2276 = mem[_2243]
                            require mem[_2243] == mem[_2243]
                            if mem[_2243]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2243]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2243] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2276
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2276
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2717 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2717] == bool(mem[_2717])
                                    if not mem[_2717]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _2075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2075] = return_data.size
                        mem[_2075 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2244 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2277 = mem[_2244]
                            require mem[_2244] == mem[_2244]
                            if mem[_2244]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2244]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2244] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2277
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2277
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2718 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2718] == bool(mem[_2718])
                                    if not mem[_2718]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2245 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2278 = mem[_2245]
                            require mem[_2245] == mem[_2245]
                            if mem[_2245]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2245]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2245] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2278
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2278
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2719 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2719] == bool(mem[_2719])
                                    if not mem[_2719]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2002
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2002
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2110] == bool(mem[_2110])
                    if not mem[_2110]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2374 = mem[_2321]
                        require mem[_2321] == mem[_2321]
                        if mem[_2321]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2321]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2321] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2374
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2374
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2904 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2904] == bool(mem[_2904])
                                if not mem[_2904]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2375 = mem[_2322]
                        require mem[_2322] == mem[_2322]
                        if mem[_2322]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2322]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2322] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2375
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2375
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2905 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2905] == bool(mem[_2905])
                                if not mem[_2905]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1999 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2003 = mem[_1999]
            require mem[_1999] == mem[_1999]
            if not mem[_1999]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2120 = mem[_2104]
                    require mem[_2104] == mem[_2104]
                    if mem[_2104]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2104]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2104] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2120
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2120
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2393 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2393] == bool(mem[_2393])
                            if not mem[_2393]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2105 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2121 = mem[_2105]
                    require mem[_2105] == mem[_2105]
                    if mem[_2105]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2105]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2105] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2121
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2121
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2394 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2394] == bool(mem[_2394])
                            if not mem[_2394]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1999]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1999] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2246 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2281 = mem[_2246]
                            require mem[_2246] == mem[_2246]
                            if mem[_2246]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2246]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2246] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2281
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2281
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2720 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2720] == bool(mem[_2720])
                                    if not mem[_2720]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2282 = mem[_2247]
                            require mem[_2247] == mem[_2247]
                            if mem[_2247]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2247]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2247] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2282
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2282
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2721 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2721] == bool(mem[_2721])
                                    if not mem[_2721]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _2078 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2078] = return_data.size
                        mem[_2078 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2248 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2283 = mem[_2248]
                            require mem[_2248] == mem[_2248]
                            if mem[_2248]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2248]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2248] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2283
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2283
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2722 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2722] == bool(mem[_2722])
                                    if not mem[_2722]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2249 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2284 = mem[_2249]
                            require mem[_2249] == mem[_2249]
                            if mem[_2249]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2249]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2249] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2284
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2284
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2723 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2723] == bool(mem[_2723])
                                    if not mem[_2723]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2003
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2003
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2111] == bool(mem[_2111])
                    if not mem[_2111]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2380 = mem[_2325]
                        require mem[_2325] == mem[_2325]
                        if mem[_2325]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2325]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2325] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2380
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2380
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2910 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2910] == bool(mem[_2910])
                                if not mem[_2910]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2381 = mem[_2326]
                        require mem[_2326] == mem[_2326]
                        if mem[_2326]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2326]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2326] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2381
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2381
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2911 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2911] == bool(mem[_2911])
                                if not mem[_2911]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg4
        require ext_code.size(arg2)
        call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _948 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_948] == bool(mem[_948])
        if not mem[_948]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _1937 = mem[96]
        idx = 0
        s = 0
        while idx < _1937:
            require idx < mem[96]
            if 1 == mem[mem[(32 * idx) + 128]]:
                _1948 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1948] = 0
                mem[_1948 + 32] = 0
                mem[_1948 + 64] = 0
                mem[_1948 + 96] = 0
                mem[_1948 + 128] = 0
                mem[_1948 + 160] = 0
                require idx < mem[96]
                require 0 < mem[mem[(32 * idx) + 128]]
                _1970 = mem[mem[(32 * idx) + 128] + 32]
                _1971 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
                _1972 = mem[mem[mem[(32 * idx) + 128] + 32]]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1972)
                require ext_code.size(address(_1971))
                staticcall address(_1971).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_1972)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2008] == mem[_2008]
                if mem[_2008] <= 0:
                    _2019 = mem[_1970 + 128]
                    mem[mem[64] + 4] = mem[_1970 + 12 len 20]
                    mem[mem[64] + 36] = _2019
                    require ext_code.size(address(_1971))
                    call address(_1971).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _2019
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2060] == bool(mem[_2060])
                    _2133 = mem[_1970 + 128]
                    _2134 = mem[_1970 + 64]
                    _2135 = mem[_1970 + 96]
                    _2136 = mem[_1970 + 160]
                    mem[mem[64] + 4] = mem[_1970 + 44 len 20]
                    mem[mem[64] + 36] = _2133
                    mem[mem[64] + 68] = address(_2134)
                    mem[mem[64] + 100] = _2135
                    mem[mem[64] + 132] = _2136
                    require ext_code.size(address(_1972))
                    call address(_1972).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _2133, address(_2134), _2135, _2136
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2356] == mem[_2356]
                    require mem[_2356 + 32] == mem[_2356 + 32]
                    if s + mem[_2356] < mem[_2356]:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + mem[_2356]
                    continue 
                mem[mem[64] + 4] = mem[_1970 + 12 len 20]
                mem[mem[64] + 36] = 0
                require ext_code.size(address(_1971))
                call address(_1971).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2074 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2074] == bool(mem[_2074])
                _2165 = mem[_1970 + 128]
                mem[mem[64] + 4] = mem[_1970 + 12 len 20]
                mem[mem[64] + 36] = _2165
                require ext_code.size(address(_1971))
                call address(_1971).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2165
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2256] == bool(mem[_2256])
                _2336 = mem[_1970 + 128]
                _2337 = mem[_1970 + 64]
                _2338 = mem[_1970 + 96]
                _2339 = mem[_1970 + 160]
                mem[mem[64] + 4] = mem[_1970 + 44 len 20]
                mem[mem[64] + 36] = _2336
                mem[mem[64] + 68] = address(_2337)
                mem[mem[64] + 100] = _2338
                mem[mem[64] + 132] = _2339
                require ext_code.size(address(_1972))
                call address(_1972).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2336, address(_2337), _2338, _2339
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2784 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2784] == mem[_2784]
                require mem[_2784 + 32] == mem[_2784 + 32]
                if s + mem[_2784] < mem[_2784]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + mem[_2784]
                continue 
            _1947 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1947] = 0
            mem[_1947 + 32] = 0
            mem[_1947 + 64] = 0
            mem[_1947 + 96] = 0
            mem[_1947 + 128] = 0
            mem[_1947 + 160] = 0
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            _1966 = mem[mem[(32 * idx) + 128] + 64]
            _1967 = mem[mem[mem[(32 * idx) + 128] + 64]]
            _1968 = mem[mem[mem[(32 * idx) + 128] + 64] + 32]
            mem[mem[64] + 4] = mem[mem[mem[(32 * idx) + 128] + 64] + 44 len 20]
            require ext_code.size(address(_1967))
            staticcall address(_1967).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(_1968)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1988 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1994 = mem[_1988]
            require mem[_1988] == mem[_1988]
            _2006 = mem[_1966 + 32]
            mem[mem[64] + 4] = mem[_1966 + 44 len 20]
            require ext_code.size(address(_1967))
            staticcall address(_1967).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(_2006)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2016 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2036 = mem[_2016]
            require mem[_2016] == mem[_2016]
            _2052 = mem[_1966 + 64]
            mem[mem[64] + 4] = mem[_1966 + 76 len 20]
            require ext_code.size(address(_1967))
            staticcall address(_1967).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(_2052)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2124 = mem[_2108]
            require mem[_2108] == mem[_2108]
            _2170 = mem[_1966 + 64]
            mem[mem[64] + 4] = mem[_1966 + 76 len 20]
            require ext_code.size(address(_1967))
            staticcall address(_1967).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(_2170)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2240 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2274 = mem[_2240]
            require mem[_2240] == mem[_2240]
            _2306 = mem[_1966 + 96]
            require ext_code.size(address(_1967))
            staticcall address(_1967).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2390 = mem[_2334]
            require mem[_2334] == mem[_2334]
            mem[mem[64] + 4] = _1994
            mem[mem[64] + 36] = _2036
            mem[mem[64] + 68] = _2124
            mem[mem[64] + 100] = _2274
            mem[mem[64] + 132] = _2306
            mem[mem[64] + 164] = _2390
            require ext_code.size(address(_1967))
            staticcall address(_1967).calcInGivenOut(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
                    gas gas_remaining wei
                   args _1994, _2036, _2124, _2274, _2306, _2390
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2954 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2986 = mem[_2954]
            require mem[_2954] == mem[_2954]
            _3046 = mem[64]
            mem[64] = mem[64] + 192
            mem[_3046] = 0
            mem[_3046 + 32] = 0
            mem[_3046 + 64] = 0
            mem[_3046 + 96] = 0
            mem[_3046 + 128] = 0
            mem[_3046 + 160] = 0
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            _3058 = mem[mem[(32 * idx) + 128] + 32]
            _3059 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
            _3060 = mem[mem[mem[(32 * idx) + 128] + 32]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_3060)
            require ext_code.size(address(_3059))
            staticcall address(_3059).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_3060)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3082 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3082] == mem[_3082]
            if mem[_3082] >= -1:
                _3087 = mem[_3058 + 128]
                _3088 = mem[_3058 + 64]
                _3089 = mem[_3058 + 160]
                mem[mem[64] + 4] = mem[_3058 + 44 len 20]
                mem[mem[64] + 36] = _3087
                mem[mem[64] + 68] = address(_3088)
                mem[mem[64] + 100] = _2986
                mem[mem[64] + 132] = _3089
                require ext_code.size(address(_3060))
                call address(_3060).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3087, address(_3088), _2986, _3089
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _3120 = mem[_3118]
                require mem[_3118] == mem[_3118]
                require mem[_3118 + 32] == mem[_3118 + 32]
                _3124 = mem[_1966 + 32]
                _3125 = mem[_1966]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_3125)
                require ext_code.size(address(_3124))
                staticcall address(_3124).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_3125)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3140] == mem[_3140]
                if mem[_3140] >= -1:
                    _3151 = mem[_1966 + 128]
                    _3152 = mem[_1966 + 64]
                    _3153 = mem[_1966 + 96]
                    _3154 = mem[_1966 + 160]
                    mem[mem[64] + 4] = mem[_1966 + 44 len 20]
                    mem[mem[64] + 36] = _3151
                    mem[mem[64] + 68] = address(_3152)
                    mem[mem[64] + 100] = _3153
                    mem[mem[64] + 132] = _3154
                    require ext_code.size(address(_1967))
                    call address(_1967).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3151, address(_3152), _3153, _3154
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3208 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_3208] == mem[_3208]
                    require mem[_3208 + 32] == mem[_3208 + 32]
                else:
                    mem[mem[64] + 4] = mem[_1966 + 12 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_3124))
                    call address(_3124).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3170] == bool(mem[_3170])
                    _3179 = mem[_1966 + 128]
                    _3180 = mem[_1966 + 64]
                    _3181 = mem[_1966 + 96]
                    _3182 = mem[_1966 + 160]
                    mem[mem[64] + 4] = mem[_1966 + 44 len 20]
                    mem[mem[64] + 36] = _3179
                    mem[mem[64] + 68] = address(_3180)
                    mem[mem[64] + 100] = _3181
                    mem[mem[64] + 132] = _3182
                    require ext_code.size(address(_1967))
                    call address(_1967).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3179, address(_3180), _3181, _3182
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3238 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_3238] == mem[_3238]
                    require mem[_3238 + 32] == mem[_3238 + 32]
                if s + _3120 < _3120:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + _3120
                continue 
            mem[mem[64] + 4] = mem[_3058 + 12 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_3059))
            call address(_3059).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3102] == bool(mem[_3102])
            _3107 = mem[_3058 + 128]
            _3108 = mem[_3058 + 64]
            _3109 = mem[_3058 + 160]
            mem[mem[64] + 4] = mem[_3058 + 44 len 20]
            mem[mem[64] + 36] = _3107
            mem[mem[64] + 68] = address(_3108)
            mem[mem[64] + 100] = _2986
            mem[mem[64] + 132] = _3109
            require ext_code.size(address(_3060))
            call address(_3060).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _3107, address(_3108), _2986, _3109
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _3134 = mem[_3132]
            require mem[_3132] == mem[_3132]
            require mem[_3132 + 32] == mem[_3132 + 32]
            _3144 = mem[_1966 + 32]
            _3145 = mem[_1966]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_3145)
            require ext_code.size(address(_3144))
            staticcall address(_3144).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_3145)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3171] == mem[_3171]
            if mem[_3171] >= -1:
                _3185 = mem[_1966 + 128]
                _3186 = mem[_1966 + 64]
                _3187 = mem[_1966 + 96]
                _3188 = mem[_1966 + 160]
                mem[mem[64] + 4] = mem[_1966 + 44 len 20]
                mem[mem[64] + 36] = _3185
                mem[mem[64] + 68] = address(_3186)
                mem[mem[64] + 100] = _3187
                mem[mem[64] + 132] = _3188
                require ext_code.size(address(_1967))
                call address(_1967).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3185, address(_3186), _3187, _3188
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_3239] == mem[_3239]
                require mem[_3239 + 32] == mem[_3239 + 32]
            else:
                mem[mem[64] + 4] = mem[_1966 + 12 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_3144))
                call address(_3144).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3216] == bool(mem[_3216])
                _3223 = mem[_1966 + 128]
                _3224 = mem[_1966 + 64]
                _3225 = mem[_1966 + 96]
                _3226 = mem[_1966 + 160]
                mem[mem[64] + 4] = mem[_1966 + 44 len 20]
                mem[mem[64] + 36] = _3223
                mem[mem[64] + 68] = address(_3224)
                mem[mem[64] + 100] = _3225
                mem[mem[64] + 132] = _3226
                require ext_code.size(address(_1967))
                call address(_1967).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3223, address(_3224), _3225, _3226
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_3258] == mem[_3258]
                require mem[_3258 + 32] == mem[_3258 + 32]
            if s + _3134 < _3134:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + _3134
            continue 
        if s > arg4:
            revert with 0, 'ERR_LIMIT_IN'
        mem[mem[64] + 4] = this.address
        if arg3 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg3)
            staticcall arg3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1996 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2000 = mem[_1996]
            require mem[_1996] == mem[_1996]
            if not mem[_1996]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2092 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2114 = mem[_2092]
                    require mem[_2092] == mem[_2092]
                    if mem[_2092]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2092]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2092] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2114
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2114
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2386] == bool(mem[_2386])
                            if not mem[_2386]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2093 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2115 = mem[_2093]
                    require mem[_2093] == mem[_2093]
                    if mem[_2093]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2093]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2093] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2115
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2115
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2387] == bool(mem[_2387])
                            if not mem[_2387]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1996]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1996] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2232 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2262 = mem[_2232]
                            require mem[_2232] == mem[_2232]
                            if mem[_2232]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2232]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2232] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2262
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2262
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2708 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2708] == bool(mem[_2708])
                                    if not mem[_2708]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2233 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2263 = mem[_2233]
                            require mem[_2233] == mem[_2233]
                            if mem[_2233]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2233]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2233] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2263
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2263
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2709 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2709] == bool(mem[_2709])
                                    if not mem[_2709]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _2068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2068] = return_data.size
                        mem[_2068 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2234 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2264 = mem[_2234]
                            require mem[_2234] == mem[_2234]
                            if mem[_2234]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2234]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2234] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2264
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2264
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2710 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2710] == bool(mem[_2710])
                                    if not mem[_2710]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2265 = mem[_2235]
                            require mem[_2235] == mem[_2235]
                            if mem[_2235]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2235]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2235] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2265
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2265
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2711 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2711] == bool(mem[_2711])
                                    if not mem[_2711]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2000
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2106 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2106] == bool(mem[_2106])
                    if not mem[_2106]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2362 = mem[_2312]
                        require mem[_2312] == mem[_2312]
                        if mem[_2312]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2312]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2312] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2362
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2362
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2892 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2892] == bool(mem[_2892])
                                if not mem[_2892]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2363 = mem[_2313]
                        require mem[_2313] == mem[_2313]
                        if mem[_2313]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2313]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2313] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2363
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2363
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2893 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2893] == bool(mem[_2893])
                                if not mem[_2893]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1997 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2001 = mem[_1997]
            require mem[_1997] == mem[_1997]
            if not mem[_1997]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2116 = mem[_2096]
                    require mem[_2096] == mem[_2096]
                    if mem[_2096]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2096]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2096] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2116
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2116
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2388] == bool(mem[_2388])
                            if not mem[_2388]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2097 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2117 = mem[_2097]
                    require mem[_2097] == mem[_2097]
                    if mem[_2097]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2097]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_2097] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2117
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _2117
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2389] == bool(mem[_2389])
                            if not mem[_2389]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1997]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1997] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2236 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2268 = mem[_2236]
                            require mem[_2236] == mem[_2236]
                            if mem[_2236]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2236]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2236] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2268
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2268
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2712 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2712] == bool(mem[_2712])
                                    if not mem[_2712]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2269 = mem[_2237]
                            require mem[_2237] == mem[_2237]
                            if mem[_2237]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2237]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2237] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2269
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2269
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2713 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2713] == bool(mem[_2713])
                                    if not mem[_2713]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _2071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2071] = return_data.size
                        mem[_2071 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2238 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2270 = mem[_2238]
                            require mem[_2238] == mem[_2238]
                            if mem[_2238]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2238]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2238] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2270
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2270
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2714 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2714] == bool(mem[_2714])
                                    if not mem[_2714]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2239 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2271 = mem[_2239]
                            require mem[_2239] == mem[_2239]
                            if mem[_2239]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2239]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2239] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2271
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2271
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2715 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2715] == bool(mem[_2715])
                                    if not mem[_2715]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2001
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2001
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2107] == bool(mem[_2107])
                    if not mem[_2107]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2316 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2368 = mem[_2316]
                        require mem[_2316] == mem[_2316]
                        if mem[_2316]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2316]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2316] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2368
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2368
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2898] == bool(mem[_2898])
                                if not mem[_2898]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2369 = mem[_2317]
                        require mem[_2317] == mem[_2317]
                        if mem[_2317]:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2317]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2317] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2369
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2369
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2899 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2899] == bool(mem[_2899])
                                if not mem[_2899]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
    return s
}



}
