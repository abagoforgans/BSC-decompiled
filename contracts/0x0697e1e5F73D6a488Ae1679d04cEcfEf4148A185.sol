contract main {




// =====================  Runtime code  =====================


#
#  - sub_3aafd27f(?)
#
address sub_15265240Address;

function sub_15265240(?) payable {
    return sub_15265240Address
}

function _fallback() payable {
    revert
}

function getUserCount() payable {
    staticcall sub_15265240Address.0xb5cb15f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getUserRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_15265240Address.getUserRewards(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall sub_15265240Address.0xb0467deb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_fbf430c5(?) payable {
    staticcall sub_15265240Address.0xb5cb15f7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                staticcall sub_15265240Address.0xb0467deb with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _92 = mem[_81]
                require mem[_81] == mem[_81 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_81 + 12 len 20]
                mem[mem[64] + 4] = address(_92)
                staticcall sub_15265240Address.getUserRewards(address arg1) with:
                        gas gas_remaining wei
                       args address(_92)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_124]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _80 = mem[64]
            mem[mem[64]] = 64
            _88 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _88:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_80 + 32] = (32 * _88) + 96
            _136 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_80 + (32 * _88) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_80 + (32 * _88) + 128 len 32 * _136] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _136]
            return memory
              from mem[64]
               len _80 + (32 * _88) + (32 * _136) + -mem[64] + 128
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            staticcall sub_15265240Address.0xb0467deb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _93 = mem[_83]
            require mem[_83] == mem[_83 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_83 + 12 len 20]
            mem[mem[64] + 4] = address(_93)
            staticcall sub_15265240Address.getUserRewards(address arg1) with:
                    gas gas_remaining wei
                   args address(_93)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_125]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 64
        _89 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _89:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_82 + 32] = (32 * _89) + 96
        _138 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_82 + (32 * _89) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_82 + (32 * _89) + 128 len 32 * _138] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _138]
        return memory
          from mem[64]
           len _82 + (32 * _89) + (32 * _138) + -mem[64] + 128
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            staticcall sub_15265240Address.0xb0467deb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_85]
            require mem[_85] == mem[_85 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_85 + 12 len 20]
            mem[mem[64] + 4] = address(_94)
            staticcall sub_15265240Address.getUserRewards(address arg1) with:
                    gas gas_remaining wei
                   args address(_94)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_126]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _84 = mem[64]
        mem[mem[64]] = 64
        _90 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _90:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_84 + 32] = (32 * _90) + 96
        _140 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_84 + (32 * _90) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_84 + (32 * _90) + 128 len 32 * _140] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _140]
        return memory
          from mem[64]
           len _84 + (32 * _90) + (32 * _140) + -mem[64] + 128
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        staticcall sub_15265240Address.0xb0467deb with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _95 = mem[_87]
        require mem[_87] == mem[_87 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_87 + 12 len 20]
        mem[mem[64] + 4] = address(_95)
        staticcall sub_15265240Address.getUserRewards(address arg1) with:
                gas gas_remaining wei
               args address(_95)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_127]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _86 = mem[64]
    mem[mem[64]] = 64
    _91 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 96
    while idx < _91:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_86 + 32] = (32 * _91) + 96
    _142 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[_86 + (32 * _91) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[_86 + (32 * _91) + 128 len 32 * _142] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _142]
    return memory
      from mem[64]
       len _86 + (32 * _91) + (32 * _142) + -mem[64] + 128
}



}
