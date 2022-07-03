contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;

function _fallback() payable {
    revert
}

function sub_6d77d5b6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 == address(arg1):
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_b69adad1(?) payable {
    require calldata.size - 4 >= 96
    if arg1 < 10 * 10^18:
        revert with 0, 'riskyAmount >= 10 USD'
    if arg1 and 2 > -1 / arg1:
        revert with 0, 17
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < 2 * arg1:
        revert with 0, 17
    return (arg2 + arg3 - (2 * arg1))
}

function deploy(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < 10 * 10^18:
        revert with 0, 'riskyAmount >= 10 USD'
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[4949 len 12642]
    require ext_code.size(create2.new_address)
    emit 0xd333017e: arg1, address(create2.new_address)
    return address(create2.new_address)
}

function sub_919444ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 == address(arg1):
            revert with 0, 'token already register'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1.length++
    stor1[stor1.length].field_0 = address(arg1)
    emit 0xf697bf8a: address(arg1)
}

function sub_cc676ce3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 >= stor1.length:
            revert with 0, 50
        if idx >= stor1.length:
            revert with 0, 50
        stor1[idx].field_0 = stor1[stor1.length].field_0
        if not stor1.length:
            revert with 0, 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        emit 0xbbe7fb19: address(arg1)
}

function sub_62cb0a05(?) payable {
    require calldata.size - 4 >= 544
    require arg1 == address(arg1)
    require calldata.size - 36 >= 512
    require arg12 == address(arg12)
    require arg13 == address(arg13)
    require arg14 == address(arg14)
    require arg15 == address(arg15)
    require arg16 == address(arg16)
    require arg17 == uint8(arg17)
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    require ext_code.size(address(arg1))
    call address(arg1).0xe3a0704d with:
         gas gas_remaining wei
        args arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, address(arg12), address(arg13), address(arg14), address(arg15), address(arg16), uint8(arg17)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2bce23d1: address(arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, address(arg12), address(arg13), address(arg14), address(arg15), address(arg16), uint8(arg17)
}

function sub_9da22db6(?) payable {
    require calldata.size - 4 >= 576
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require calldata.size - 68 >= 512
    require arg13 == address(arg13)
    require arg14 == address(arg14)
    require arg15 == address(arg15)
    require arg16 == address(arg16)
    require arg17 == address(arg17)
    require arg18 == uint8(arg18)
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    require ext_code.size(address(arg1))
    call address(arg1).0xeda1203b with:
         gas gas_remaining wei
        args address(arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, address(arg13), address(arg14), address(arg15), address(arg16), address(arg17), uint8(arg18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xce9528ef: address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, address(arg13), address(arg14), address(arg15), address(arg16), address(arg17), uint8(arg18)
}

function sub_b1cbce87(?) payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = (32 * stor1.length) + 192
        t = 128
        while idx < stor1.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function sub_a8b58702(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -cd[36] + -cd[idx] - 36
        _24 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(cd[36] + cd[idx] + 36)] == address(cd[(cd[36] + cd[idx] + 36)])
        mem[_24] = cd[(cd[36] + cd[idx] + 36)]
        require cd[(cd[36] + cd[idx] + 68)] <= test266151307()
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _38 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1
        mem[_38] = cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + (32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 68 <= calldata.size
        t = cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 68
        u = _38 + 32
        while t < cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + (32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_24 + 32] = _38
        mem[s] = _24
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    _22 = mem[64]
    mem[mem[64]] = 0x7c8d29100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _25 = mem[96]
    mem[mem[64] + 36] = mem[96]
    s = 0
    t = 128
    u = mem[64] + (32 * mem[96]) + 68
    v = mem[64] + 68
    while s < _25:
        mem[v] = u + -_22 - 68
        _42 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        _44 = mem[_42 + 32]
        mem[u + 32] = 64
        _45 = mem[_44]
        mem[u + 64] = mem[_44]
        idx = 0
        s = _44 + 32
        t = u + 96
        while idx < _45:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = _45 + 1
        s = _44 + (32 * _45) + 64
        u = u + (32 * _45) + 96
        v = v + 32
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _48 = mem[64]
    mem[mem[64]] = address(cd[4])
    mem[mem[64] + 32] = 64
    _49 = mem[96]
    mem[mem[64] + 64] = mem[96]
    s = 0
    t = 128
    u = mem[64] + (32 * mem[96]) + 96
    v = mem[64] + 96
    while s < _49:
        mem[v] = u + -_48 - 96
        _56 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        _58 = mem[_56 + 32]
        mem[u + 32] = 64
        _60 = mem[_58]
        mem[u + 64] = mem[_58]
        idx = 0
        s = _58 + 32
        t = u + 96
        while idx < _60:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = _60 + 1
        s = _58 + (32 * _60) + 64
        u = u + (32 * _60) + 96
        v = v + 32
        continue 
    emit 0xfe51c767: mem[mem[64] len u - mem[64]]
}

function sub_9c9a7285(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require calldata.size + -cd[68] + -cd[idx] - 36 >= 160
        _30 = mem[64]
        if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 160
        require cd[(cd[68] + cd[idx] + 36)] == address(cd[(cd[68] + cd[idx] + 36)])
        mem[_30] = cd[(cd[68] + cd[idx] + 36)]
        require cd[(cd[68] + cd[idx] + 68)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _47 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)]) + 1
        mem[_47] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 68
        u = _47 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 68)] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_30 + 32] = _47
        mem[_30 + 64] = cd[(cd[68] + cd[idx] + 100)]
        mem[_30 + 96] = cd[(cd[68] + cd[idx] + 132)]
        mem[_30 + 128] = cd[(cd[68] + cd[idx] + 164)]
        mem[s] = _30
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, '401: onlyAlphaRegistry'
    _28 = mem[64]
    mem[mem[64]] = 0xbe9645cf00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[36]
    mem[mem[64] + 36] = 64
    _31 = mem[96]
    mem[mem[64] + 68] = mem[96]
    s = 0
    t = 128
    u = mem[64] + (32 * mem[96]) + 100
    v = mem[64] + 100
    while s < _31:
        mem[v] = u + -_28 - 100
        _54 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        _56 = mem[_54 + 32]
        mem[u + 32] = 160
        _57 = mem[_56]
        mem[u + 160] = mem[_56]
        idx = 0
        s = _56 + 32
        t = u + 192
        while idx < _57:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[u + 64] = mem[_54 + 64]
        mem[u + 96] = mem[_54 + 96]
        mem[u + 128] = mem[_54 + 128]
        idx = _57 + 1
        s = _56 + (32 * _57) + 64
        u = u + (32 * _57) + 192
        v = v + 32
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[mem[64]] = address(cd[4])
    mem[mem[64] + 32] = cd[36]
    mem[mem[64] + 64] = 96
    _64 = mem[96]
    mem[mem[64] + 96] = mem[96]
    s = 0
    t = 128
    u = mem[64] + (32 * mem[96]) + 128
    v = mem[64] + 128
    while s < _64:
        mem[v] = u + -_60 - 128
        _74 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        _76 = mem[_74 + 32]
        mem[u + 32] = 160
        _78 = mem[_76]
        mem[u + 160] = mem[_76]
        idx = 0
        s = _76 + 32
        t = u + 192
        while idx < _78:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[u + 64] = mem[_74 + 64]
        mem[u + 96] = mem[_74 + 96]
        mem[u + 128] = mem[_74 + 128]
        idx = _78 + 1
        s = _76 + (32 * _78) + 64
        u = u + (32 * _78) + 192
        v = v + 32
        continue 
    emit 0x2f820f09: mem[mem[64] len u - mem[64]]
}



}
