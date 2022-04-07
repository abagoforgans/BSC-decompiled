contract main {




// =====================  Runtime code  =====================


const callChainId = chainid

const callGasLeft = gas_remaining

const callOrigin = tx.origin

const callCoinbase = address(block.coinbase)

const callDifficulty = block.difficulty

const callGasPrice = block.gasprice

const callBlockNumber = block.gas_limit

const callGasLimit = block.gas_limit

const callTimestamp = block.timestamp


function _fallback() payable {
    revert
}

function callBlockhash(uint256 arg1) {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function callBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function callCodeHash(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ext_code.hash(arg1)
}

function callCodeSize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ext_code.size(arg1)
}

function callCode(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 97] = 32
    mem[ceil32(ext_code.size(arg1)) + 129] = ext_code.size(arg1)
    mem[ceil32(ext_code.size(arg1)) + 161 len ceil32(ext_code.size(arg1))] = mem[128 len ceil32(ext_code.size(arg1))]
    if ceil32(ext_code.size(arg1)) > ext_code.size(arg1):
        mem[ceil32(ext_code.size(arg1)) + ext_code.size(arg1) + 161] = 0
    return memory
      from ceil32(ext_code.size(arg1)) + 97
       len ceil32(ext_code.size(arg1)) + 64
}

function multiCall(bool arg1, bool arg2, uint256 arg3, address arg4, uint256 arg5, bytes[] arg6) payable {
    require calldata.size - 4 >= 32
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
        require calldata.size + -arg1 + -cd[s] - 36 >= 192
        _446 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require cd[(arg1 + cd[s] + 36)] == bool(cd[(arg1 + cd[s] + 36)])
        mem[_446] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] == bool(cd[(arg1 + cd[s] + 68)])
        mem[_446 + 32] = cd[(arg1 + cd[s] + 68)]
        mem[_446 + 64] = cd[(arg1 + cd[s] + 100)]
        require cd[(arg1 + cd[s] + 132)] == address(cd[(arg1 + cd[s] + 132)])
        mem[_446 + 96] = cd[(arg1 + cd[s] + 132)]
        mem[_446 + 128] = cd[(arg1 + cd[s] + 164)]
        require cd[(arg1 + cd[s] + 196)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)] <= test266151307()
        _542 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]) + 32
        mem[_542] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)] + 68 <= calldata.size
        mem[_542 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]]
        mem[_542 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)] + 32] = 0
        mem[_446 + 160] = _542
        mem[t] = _446
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _447 = mem[96]
    require mem[96] <= test266151307()
    _448 = mem[64]
    mem[mem[64]] = mem[96]
    if not _447:
        _449 = mem[96]
        require mem[96] <= test266151307()
        mem[mem[64] + (32 * _447) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _447) + (32 * mem[96]) + 64
        if not mem[96]:
            _890 = mem[96]
            idx = 0
            while idx < _890:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _908 = mem[mem[(32 * idx) + 128] + 96]
                _909 = mem[mem[(32 * idx) + 128] + 128]
                if 0 == mem[mem[(32 * idx) + 128] + 64]:
                    _932 = mem[mem[(32 * idx) + 128] + 160]
                    _933 = mem[64]
                    _949 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _949:
                        mem[s + _933] = mem[s + _932 + 32]
                        _890 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_949) <= _949:
                        call address(_908).mem[mem[64] len 4] with:
                           value _909 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _949 + _933 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1368] = return_data.size
                            mem[_1368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1368
                    else:
                        mem[_933 + _949] = 0
                        call address(_908).mem[mem[64] len 4] with:
                           value _909 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _949 + _933 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1386] = return_data.size
                            mem[_1386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1386
                else:
                    _920 = mem[mem[(32 * idx) + 128] + 64]
                    _934 = mem[mem[(32 * idx) + 128] + 160]
                    _935 = mem[64]
                    _950 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _950:
                        mem[s + _935] = mem[s + _934 + 32]
                        _890 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_950) <= _950:
                        call address(_908).mem[mem[64] len 4] with:
                           value _909 wei
                             gas _920 wei
                            args mem[mem[64] + 4 len _950 + _935 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1370] = return_data.size
                            mem[_1370 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1370
                    else:
                        mem[_935 + _950] = 0
                        call address(_908).mem[mem[64] len 4] with:
                           value _909 wei
                             gas _920 wei
                            args mem[mem[64] + 4 len _950 + _935 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1389] = return_data.size
                            mem[_1389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1389
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _890 = mem[96]
                idx = idx + 1
                continue 
            _894 = mem[64]
            mem[mem[64]] = 64
            _900 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _900:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_894 + 32] = (32 * _900) + 96
            _1328 = mem[_448 + (32 * _447) + 32]
            mem[_894 + (32 * _900) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _894 + (32 * _900) + (32 * _1328) + 128
            u = _894 + (32 * _900) + 128
            while idx < _1328:
                mem[u] = t + -_894 + -(32 * _900) - 128
                _1720 = mem[s]
                _1731 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1731:
                    mem[v + t + 32] = mem[v + _1720 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1731) > _1731:
                    mem[t + _1731 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1731) + t + 32
                u = u + 32
                continue 
        else:
            mem[_448 + (32 * _447) + 64] = 96
            s = _448 + (32 * _447) + 64
            idx = _449
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1326 = mem[96]
            idx = 0
            while idx < _1326:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _1356 = mem[mem[(32 * idx) + 128] + 96]
                _1357 = mem[mem[(32 * idx) + 128] + 128]
                if 0 == mem[mem[(32 * idx) + 128] + 64]:
                    _1390 = mem[mem[(32 * idx) + 128] + 160]
                    _1391 = mem[64]
                    _1416 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1416:
                        mem[s + _1391] = mem[s + _1390 + 32]
                        _1326 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1416) <= _1416:
                        call address(_1356).mem[mem[64] len 4] with:
                           value _1357 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1416 + _1391 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1745 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1745] = return_data.size
                            mem[_1745 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1745
                    else:
                        mem[_1391 + _1416] = 0
                        call address(_1356).mem[mem[64] len 4] with:
                           value _1357 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1416 + _1391 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1756] = return_data.size
                            mem[_1756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1756
                else:
                    _1374 = mem[mem[(32 * idx) + 128] + 64]
                    _1392 = mem[mem[(32 * idx) + 128] + 160]
                    _1393 = mem[64]
                    _1417 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1417:
                        mem[s + _1393] = mem[s + _1392 + 32]
                        _1326 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1417) <= _1417:
                        call address(_1356).mem[mem[64] len 4] with:
                           value _1357 wei
                             gas _1374 wei
                            args mem[mem[64] + 4 len _1417 + _1393 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1747 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1747] = return_data.size
                            mem[_1747 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1747
                    else:
                        mem[_1393 + _1417] = 0
                        call address(_1356).mem[mem[64] len 4] with:
                           value _1357 wei
                             gas _1374 wei
                            args mem[mem[64] + 4 len _1417 + _1393 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1759] = return_data.size
                            mem[_1759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1759
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _1326 = mem[96]
                idx = idx + 1
                continue 
            _1338 = mem[64]
            mem[mem[64]] = 64
            _1345 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _1345:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1338 + 32] = (32 * _1345) + 96
            _1721 = mem[_448 + (32 * _447) + 32]
            mem[_1338 + (32 * _1345) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _1338 + (32 * _1345) + (32 * _1721) + 128
            u = _1338 + (32 * _1345) + 128
            while idx < _1721:
                mem[u] = t + -_1338 + -(32 * _1345) - 128
                _1905 = mem[s]
                _1909 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1909:
                    mem[v + t + 32] = mem[v + _1905 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1909) > _1909:
                    mem[t + _1909 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1909) + t + 32
                u = u + 32
                continue 
    else:
        mem[mem[64] + 32 len 32 * _447] = call.data[calldata.size len 32 * _447]
        _451 = mem[96]
        require mem[96] <= test266151307()
        mem[mem[64] + (32 * _447) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _447) + (32 * mem[96]) + 64
        if not mem[96]:
            _891 = mem[96]
            idx = 0
            while idx < _891:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _913 = mem[mem[(32 * idx) + 128] + 96]
                _914 = mem[mem[(32 * idx) + 128] + 128]
                if 0 == mem[mem[(32 * idx) + 128] + 64]:
                    _940 = mem[mem[(32 * idx) + 128] + 160]
                    _941 = mem[64]
                    _956 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while arg1.length < _956:
                        mem[arg1.length + _941] = mem[arg1.length + _940 + 32]
                        _891 = mem[96]
                        s = arg1.length + 32
                        continue 
                    if arg1.length <= _956:
                        call address(_913).mem[mem[64] len 4] with:
                           value _914 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _956 + _941 + -mem[64] - 4]
                        if not return_data.size:
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1376 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1376] = return_data.size
                            mem[_1376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = _1376
                    else:
                        mem[_941 + _956] = 0
                        call address(_913).mem[mem[64] len 4] with:
                           value _914 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _956 + _941 + -mem[64] - 4]
                        if not return_data.size:
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1397 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1397] = return_data.size
                            mem[_1397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = _1397
                else:
                    _927 = mem[mem[(32 * idx) + 128] + 64]
                    _942 = mem[mem[(32 * idx) + 128] + 160]
                    _943 = mem[64]
                    _957 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while arg1.length < _957:
                        mem[arg1.length + _943] = mem[arg1.length + _942 + 32]
                        _891 = mem[96]
                        s = arg1.length + 32
                        continue 
                    if arg1.length <= _957:
                        call address(_913).mem[mem[64] len 4] with:
                           value _914 wei
                             gas _927 wei
                            args mem[mem[64] + 4 len _957 + _943 + -mem[64] - 4]
                        if not return_data.size:
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1378 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1378] = return_data.size
                            mem[_1378 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = _1378
                    else:
                        mem[_943 + _957] = 0
                        call address(_913).mem[mem[64] len 4] with:
                           value _914 wei
                             gas _927 wei
                            args mem[mem[64] + 4 len _957 + _943 + -mem[64] - 4]
                        if not return_data.size:
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1400 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1400] = return_data.size
                            mem[_1400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require s < mem[_448]
                            require s < mem[_448 + (32 * _447) + 32]
                            mem[(32 * s) + _448 + (32 * _447) + 64] = _1400
                mem[(32 * s) + _448 + 32] = bool(ext_call.success)
                require s < mem[_448]
                if not ext_call.success:
                    require s < mem[96]
                    if mem[mem[(32 * s) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _891 = mem[96]
                s = s + 1
                continue 
            _897 = mem[64]
            mem[mem[64]] = 64
            _904 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _904:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_897 + 32] = (32 * _904) + 96
            _1333 = mem[_448 + (32 * _447) + 32]
            mem[_897 + (32 * _904) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _897 + (32 * _904) + (32 * _1333) + 128
            u = _897 + (32 * _904) + 128
            while idx < _1333:
                mem[u] = t + -_897 + -(32 * _904) - 128
                _1725 = mem[s]
                _1733 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1733:
                    mem[v + t + 32] = mem[v + _1725 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1733) > _1733:
                    mem[t + _1733 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1733) + t + 32
                u = u + 32
                continue 
        else:
            mem[_448 + (32 * _447) + 64] = 96
            s = _448 + (32 * _447) + 64
            idx = _451
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1327 = mem[96]
            idx = 0
            while idx < _1327:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _1364 = mem[mem[(32 * idx) + 128] + 96]
                _1365 = mem[mem[(32 * idx) + 128] + 128]
                if 0 == mem[mem[(32 * idx) + 128] + 64]:
                    _1401 = mem[mem[(32 * idx) + 128] + 160]
                    _1402 = mem[64]
                    _1428 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1428:
                        mem[s + _1402] = mem[s + _1401 + 32]
                        _1327 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1428) <= _1428:
                        call address(_1364).mem[mem[64] len 4] with:
                           value _1365 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1428 + _1402 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1750] = return_data.size
                            mem[_1750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1750
                    else:
                        mem[_1402 + _1428] = 0
                        call address(_1364).mem[mem[64] len 4] with:
                           value _1365 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1428 + _1402 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1762] = return_data.size
                            mem[_1762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1762
                else:
                    _1382 = mem[mem[(32 * idx) + 128] + 64]
                    _1403 = mem[mem[(32 * idx) + 128] + 160]
                    _1404 = mem[64]
                    _1429 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1429:
                        mem[s + _1404] = mem[s + _1403 + 32]
                        _1327 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1429) <= _1429:
                        call address(_1364).mem[mem[64] len 4] with:
                           value _1365 wei
                             gas _1382 wei
                            args mem[mem[64] + 4 len _1429 + _1404 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1752 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1752] = return_data.size
                            mem[_1752 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1752
                    else:
                        mem[_1404 + _1429] = 0
                        call address(_1364).mem[mem[64] len 4] with:
                           value _1365 wei
                             gas _1382 wei
                            args mem[mem[64] + 4 len _1429 + _1404 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1765 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1765] = return_data.size
                            mem[_1765 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1765
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _1327 = mem[96]
                idx = idx + 1
                continue 
            _1341 = mem[64]
            mem[mem[64]] = 64
            _1349 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _1349:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1341 + 32] = (32 * _1349) + 96
            _1726 = mem[_448 + (32 * _447) + 32]
            mem[_1341 + (32 * _1349) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _1341 + (32 * _1349) + (32 * _1726) + 128
            u = _1341 + (32 * _1349) + 128
            while idx < _1726:
                mem[u] = t + -_1341 + -(32 * _1349) - 128
                _1907 = mem[s]
                _1911 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1911:
                    mem[v + t + 32] = mem[v + _1907 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1911) > _1911:
                    mem[t + _1911 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1911) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
