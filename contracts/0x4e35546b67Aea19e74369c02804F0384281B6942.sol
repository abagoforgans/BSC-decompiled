contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_3ce6bbc1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_71b17733(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor0[address(msg.sender)]:
        revert with 0, 'CNMSB'
    selfdestruct(address(arg1))
}

function _fallback() payable {
    revert
}

function sub_184f96ce(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if not stor0[address(msg.sender)]:
        revert with 0, 'CNMSB'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_794f8a69(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, 'CNMSB'
    if not uint8(cd[4]):
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 0
            stor0[address(cd[((32 * idx) + cd[36] + 36)])] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if uint8(cd[4]) == 1:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 0
                stor0[address(cd[((32 * idx) + cd[36] + 36)])] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}

function sub_f569f9eb(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'CNMSB'
    mem[64] = (32 * ('cd', 100).length) + 128
    mem[96] = ('cd', 100).length
    mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + 128] = 0
    if ('cd', 132).length > 4:
        revert with 0, 'EEN'
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 132).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _78 = mem[(32 * idx) + 128]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _80 = mem[(32 * idx + 1) + 128]
        if idx >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
        staticcall address(cd[((32 * idx) + cd[132] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_85] == mem[_85 + 18 len 14]
            require mem[_85 + 32] == mem[_85 + 50 len 14]
            require mem[_85 + 64] == mem[_85 + 92 len 4]
            if not idx:
                if idx == -1:
                    revert with 'NH{q', 17
                if address(_78) == address(_78):
                    idx = idx + 1
                    s = mem[_85 + 50 len 14]
                    t = mem[_85 + 18 len 14]
                    continue 
                idx = idx + 1
                s = mem[_85 + 18 len 14]
                t = mem[_85 + 50 len 14]
                continue 
            if idx != 1:
                if idx == 2:
                    if address(_78) == address(_78):
                        if mem[_85 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_85 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_85 + 18 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_85 + 18 len 14]:
                            revert with 'NH{q', 18
                        if mem[_85 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_85 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_85 + 50 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_85 + 18 len 14]:
                            revert with 'NH{q', 18
                    else:
                        if mem[_85 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_85 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_85 + 50 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_85 + 50 len 14]:
                            revert with 'NH{q', 18
                        if mem[_85 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_85 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_85 + 18 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_85 + 50 len 14]:
                            revert with 'NH{q', 18
                else:
                    if idx == 3:
                        if address(_78) == address(_78):
                            if mem[_85 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_85 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_85 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_85 + 18 len 14]:
                                revert with 'NH{q', 18
                            if mem[_85 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_85 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_85 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_85 + 18 len 14]:
                                revert with 'NH{q', 18
                        else:
                            if mem[_85 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_85 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_85 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_85 + 50 len 14]:
                                revert with 'NH{q', 18
                            if mem[_85 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_85 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_85 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_85 + 50 len 14]:
                                revert with 'NH{q', 18
            else:
                if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if address(_78) == address(_78):
                    if mem[_85 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_85 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * t and mem[_85 + 18 len 14] > -1 / 1000 * t:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_85 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if mem[_85 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_85 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * s and mem[_85 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_85 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                else:
                    if mem[_85 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_85 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * t and mem[_85 + 50 len 14] > -1 / 1000 * t:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_85 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if mem[_85 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_85 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * s and mem[_85 + 18 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_85 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
        else:
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_86] == mem[_86 + 18 len 14]
            require mem[_86 + 32] == mem[_86 + 50 len 14]
            require mem[_86 + 64] == mem[_86 + 92 len 4]
            if not idx:
                if idx == -1:
                    revert with 'NH{q', 17
                if address(_78) == address(_80):
                    idx = idx + 1
                    s = mem[_86 + 50 len 14]
                    t = mem[_86 + 18 len 14]
                    continue 
                idx = idx + 1
                s = mem[_86 + 18 len 14]
                t = mem[_86 + 50 len 14]
                continue 
            if idx != 1:
                if idx == 2:
                    if address(_78) == address(_80):
                        if mem[_86 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_86 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_86 + 18 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_86 + 18 len 14]:
                            revert with 'NH{q', 18
                        if mem[_86 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_86 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_86 + 50 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_86 + 18 len 14]:
                            revert with 'NH{q', 18
                    else:
                        if mem[_86 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_86 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_86 + 50 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_86 + 50 len 14]:
                            revert with 'NH{q', 18
                        if mem[_86 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if 1000 * mem[_86 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if False and mem[_86 + 18 len 14] > 0:
                            revert with 'NH{q', 17
                        if not 1000 * mem[_86 + 50 len 14]:
                            revert with 'NH{q', 18
                else:
                    if idx == 3:
                        if address(_78) == address(_80):
                            if mem[_86 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_86 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_86 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_86 + 18 len 14]:
                                revert with 'NH{q', 18
                            if mem[_86 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_86 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_86 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_86 + 18 len 14]:
                                revert with 'NH{q', 18
                        else:
                            if mem[_86 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_86 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_86 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_86 + 50 len 14]:
                                revert with 'NH{q', 18
                            if mem[_86 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if 1000 * mem[_86 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if False and mem[_86 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not 1000 * mem[_86 + 50 len 14]:
                                revert with 'NH{q', 18
            else:
                if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if address(_78) == address(_80):
                    if mem[_86 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_86 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * t and mem[_86 + 18 len 14] > -1 / 1000 * t:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_86 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if mem[_86 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_86 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * s and mem[_86 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_86 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                else:
                    if mem[_86 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_86 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * t and mem[_86 + 50 len 14] > -1 / 1000 * t:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_86 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if mem[_86 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_86 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * s and mem[_86 + 18 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_86 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s
        t = t
        continue 
    if cd[4] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    if 0 > (-997 * cd[4]) - 1:
        revert with 'NH{q', 17
    if cd[4] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    if 997 * cd[4] and 0 > -1 / 997 * cd[4]:
        revert with 'NH{q', 17
    if not 997 * cd[4]:
        revert with 'NH{q', 18
    if 0 / 997 * cd[4] >= cd[4]:
        if (0 / 997 * cd[4]) - cd[4] < cd[36]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_99]
        require mem[_99] == mem[_99]
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[0] == address(('cd', 132)[0])
        mem[mem[64] + 4] = address(('cd', 132)[0])
        mem[mem[64] + 36] = cd[4]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 132)[0]), cd[4]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_107] == bool(mem[_107])
        _111 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
        mem[_111] = ('cd', 100).length
        mem[_111 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_111 + (32 * ('cd', 100).length) + 32] = 0
        if var392003 < 1:
            revert with 'NH{q', 17
        if var397002 >= var397001:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[68]))
            staticcall address(cd[68]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_6303] == mem[_6303]
            if mem[_6303] <= _100:
                revert with 0, 'Hello World!'
        if var399001 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _7889 = mem[(32 * var399001) + _111 + 32]
        if var399001 > -2:
            revert with 'NH{q', 17
        if var399001 + 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _7893 = mem[(32 * var399001 + 1) + _111 + 32]
        if var399001 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * var399001) + cd[132] + 36)] == address(cd[((32 * var399001) + cd[132] + 36)])
        require ext_code.size(address(cd[((32 * var399001) + cd[132] + 36)]))
        staticcall address(cd[((32 * var399001) + cd[132] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * var399001) + _111 + 44 len 20] < mem[(32 * var399001 + 1) + _111 + 44 len 20]:
            _7903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _7907 = mem[_7903]
            require mem[_7903] == mem[_7903 + 18 len 14]
            _7911 = mem[_7903 + 32]
            require mem[_7903 + 32] == mem[_7903 + 50 len 14]
            require mem[_7903 + 64] == mem[_7903 + 92 len 4]
            mem[mem[64] + 4] = address(cd[((32 * var399001) + cd[132] + 36)])
            require ext_code.size(address(_7889))
            staticcall address(_7889).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * var399001) + cd[132] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(_7889) == address(_7889):
                _7935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7935] == mem[_7935]
                if mem[_7935] < Mask(112, 0, _7907):
                    revert with 'NH{q', 17
                if mem[_7935] - Mask(112, 0, _7907) > mem[_7935]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7935] - Mask(112, 0, _7907) and 9975 > -1 / mem[_7935] - Mask(112, 0, _7907):
                    revert with 'NH{q', 17
                if (9975 * mem[_7935]) - (9975 * Mask(112, 0, _7907)) / 9975 != mem[_7935] - Mask(112, 0, _7907):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7911):
                    if Mask(112, 0, _7907) and 10000 > -1 / Mask(112, 0, _7907):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7907) / 10000 != Mask(112, 0, _7907):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7907) > (-9975 * mem[_7935]) + (9975 * Mask(112, 0, _7907)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7907)) + (9975 * mem[_7935]) < 10000 * Mask(112, 0, _7907):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7907)) + (9975 * mem[_7935]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7935]) - (9975 * Mask(112, 0, _7907)) and Mask(112, 0, _7911) > -1 / (9975 * mem[_7935]) - (9975 * Mask(112, 0, _7907)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7911):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7935] * Mask(112, 0, _7911)) - (9975 * Mask(112, 0, _7907) * Mask(112, 0, _7911)) / Mask(112, 0, _7911) != (9975 * mem[_7935]) - (9975 * Mask(112, 0, _7907)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7907) and 10000 > -1 / Mask(112, 0, _7907):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7907) / 10000 != Mask(112, 0, _7907):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7907) > (-9975 * mem[_7935]) + (9975 * Mask(112, 0, _7907)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7907)) + (9975 * mem[_7935]) < 10000 * Mask(112, 0, _7907):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7907)) + (9975 * mem[_7935]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
            else:
                _7936 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7936] == mem[_7936]
                if mem[_7936] < Mask(112, 0, _7911):
                    revert with 'NH{q', 17
                if mem[_7936] - Mask(112, 0, _7911) > mem[_7936]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7936] - Mask(112, 0, _7911) and 9975 > -1 / mem[_7936] - Mask(112, 0, _7911):
                    revert with 'NH{q', 17
                if (9975 * mem[_7936]) - (9975 * Mask(112, 0, _7911)) / 9975 != mem[_7936] - Mask(112, 0, _7911):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7907):
                    if Mask(112, 0, _7911) and 10000 > -1 / Mask(112, 0, _7911):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7911) / 10000 != Mask(112, 0, _7911):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7911) > (-9975 * mem[_7936]) + (9975 * Mask(112, 0, _7911)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7911)) + (9975 * mem[_7936]) < 10000 * Mask(112, 0, _7911):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7911)) + (9975 * mem[_7936]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7936]) - (9975 * Mask(112, 0, _7911)) and Mask(112, 0, _7907) > -1 / (9975 * mem[_7936]) - (9975 * Mask(112, 0, _7911)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7907):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7936] * Mask(112, 0, _7907)) - (9975 * Mask(112, 0, _7911) * Mask(112, 0, _7907)) / Mask(112, 0, _7907) != (9975 * mem[_7936]) - (9975 * Mask(112, 0, _7911)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7911) and 10000 > -1 / Mask(112, 0, _7911):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7911) / 10000 != Mask(112, 0, _7911):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7911) > (-9975 * mem[_7936]) + (9975 * Mask(112, 0, _7911)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7911)) + (9975 * mem[_7936]) < 10000 * Mask(112, 0, _7911):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7911)) + (9975 * mem[_7936]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
        else:
            _7904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _7908 = mem[_7904]
            require mem[_7904] == mem[_7904 + 18 len 14]
            _7912 = mem[_7904 + 32]
            require mem[_7904 + 32] == mem[_7904 + 50 len 14]
            require mem[_7904 + 64] == mem[_7904 + 92 len 4]
            mem[mem[64] + 4] = address(cd[((32 * var399001) + cd[132] + 36)])
            require ext_code.size(address(_7889))
            staticcall address(_7889).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * var399001) + cd[132] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(_7889) == address(_7893):
                _7937 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7937] == mem[_7937]
                if mem[_7937] < Mask(112, 0, _7908):
                    revert with 'NH{q', 17
                if mem[_7937] - Mask(112, 0, _7908) > mem[_7937]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7937] - Mask(112, 0, _7908) and 9975 > -1 / mem[_7937] - Mask(112, 0, _7908):
                    revert with 'NH{q', 17
                if (9975 * mem[_7937]) - (9975 * Mask(112, 0, _7908)) / 9975 != mem[_7937] - Mask(112, 0, _7908):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7912):
                    if Mask(112, 0, _7908) and 10000 > -1 / Mask(112, 0, _7908):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7908) / 10000 != Mask(112, 0, _7908):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7908) > (-9975 * mem[_7937]) + (9975 * Mask(112, 0, _7908)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7908)) + (9975 * mem[_7937]) < 10000 * Mask(112, 0, _7908):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7908)) + (9975 * mem[_7937]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7937]) - (9975 * Mask(112, 0, _7908)) and Mask(112, 0, _7912) > -1 / (9975 * mem[_7937]) - (9975 * Mask(112, 0, _7908)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7912):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7937] * Mask(112, 0, _7912)) - (9975 * Mask(112, 0, _7908) * Mask(112, 0, _7912)) / Mask(112, 0, _7912) != (9975 * mem[_7937]) - (9975 * Mask(112, 0, _7908)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7908) and 10000 > -1 / Mask(112, 0, _7908):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7908) / 10000 != Mask(112, 0, _7908):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7908) > (-9975 * mem[_7937]) + (9975 * Mask(112, 0, _7908)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7908)) + (9975 * mem[_7937]) < 10000 * Mask(112, 0, _7908):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7908)) + (9975 * mem[_7937]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
            else:
                _7938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7938] == mem[_7938]
                if mem[_7938] < Mask(112, 0, _7912):
                    revert with 'NH{q', 17
                if mem[_7938] - Mask(112, 0, _7912) > mem[_7938]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7938] - Mask(112, 0, _7912) and 9975 > -1 / mem[_7938] - Mask(112, 0, _7912):
                    revert with 'NH{q', 17
                if (9975 * mem[_7938]) - (9975 * Mask(112, 0, _7912)) / 9975 != mem[_7938] - Mask(112, 0, _7912):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7908):
                    if Mask(112, 0, _7912) and 10000 > -1 / Mask(112, 0, _7912):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7912) / 10000 != Mask(112, 0, _7912):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7912) > (-9975 * mem[_7938]) + (9975 * Mask(112, 0, _7912)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7912)) + (9975 * mem[_7938]) < 10000 * Mask(112, 0, _7912):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7912)) + (9975 * mem[_7938]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7938]) - (9975 * Mask(112, 0, _7912)) and Mask(112, 0, _7908) > -1 / (9975 * mem[_7938]) - (9975 * Mask(112, 0, _7912)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7908):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7938] * Mask(112, 0, _7908)) - (9975 * Mask(112, 0, _7912) * Mask(112, 0, _7908)) / Mask(112, 0, _7908) != (9975 * mem[_7938]) - (9975 * Mask(112, 0, _7912)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7912) and 10000 > -1 / Mask(112, 0, _7912):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7912) / 10000 != Mask(112, 0, _7912):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7912) > (-9975 * mem[_7938]) + (9975 * Mask(112, 0, _7912)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7912)) + (9975 * mem[_7938]) < 10000 * Mask(112, 0, _7912):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7912)) + (9975 * mem[_7938]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var399001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var399001 > -2:
                            revert with 'NH{q', 17
                        if var399001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var399001 + 1) + cd[132] + 36)] == address(cd[((32 * var399001 + 1) + cd[132] + 36)])
                        # nil
    else:
        if 0 < cd[36]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _97 = mem[_96]
        require mem[_96] == mem[_96]
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[0] == address(('cd', 132)[0])
        mem[mem[64] + 4] = address(('cd', 132)[0])
        mem[mem[64] + 36] = cd[4]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 132)[0]), cd[4]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_104] == bool(mem[_104])
        _109 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
        mem[_109] = ('cd', 100).length
        mem[_109 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_109 + (32 * ('cd', 100).length) + 32] = 0
        if var385003 < 1:
            revert with 'NH{q', 17
        if var390002 >= var390001:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[68]))
            staticcall address(cd[68]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_6304] == mem[_6304]
            if mem[_6304] <= _97:
                revert with 0, 'Hello World!'
        if var392001 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _7890 = mem[(32 * var392001) + _109 + 32]
        if var392001 > -2:
            revert with 'NH{q', 17
        if var392001 + 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _7894 = mem[(32 * var392001 + 1) + _109 + 32]
        if var392001 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * var392001) + cd[132] + 36)] == address(cd[((32 * var392001) + cd[132] + 36)])
        require ext_code.size(address(cd[((32 * var392001) + cd[132] + 36)]))
        staticcall address(cd[((32 * var392001) + cd[132] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * var392001) + _109 + 44 len 20] < mem[(32 * var392001 + 1) + _109 + 44 len 20]:
            _7905 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _7909 = mem[_7905]
            require mem[_7905] == mem[_7905 + 18 len 14]
            _7913 = mem[_7905 + 32]
            require mem[_7905 + 32] == mem[_7905 + 50 len 14]
            require mem[_7905 + 64] == mem[_7905 + 92 len 4]
            mem[mem[64] + 4] = address(cd[((32 * var392001) + cd[132] + 36)])
            require ext_code.size(address(_7890))
            staticcall address(_7890).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * var392001) + cd[132] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(_7890) == address(_7890):
                _7939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7939] == mem[_7939]
                if mem[_7939] < Mask(112, 0, _7909):
                    revert with 'NH{q', 17
                if mem[_7939] - Mask(112, 0, _7909) > mem[_7939]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7939] - Mask(112, 0, _7909) and 9975 > -1 / mem[_7939] - Mask(112, 0, _7909):
                    revert with 'NH{q', 17
                if (9975 * mem[_7939]) - (9975 * Mask(112, 0, _7909)) / 9975 != mem[_7939] - Mask(112, 0, _7909):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7913):
                    if Mask(112, 0, _7909) and 10000 > -1 / Mask(112, 0, _7909):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7909) / 10000 != Mask(112, 0, _7909):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7909) > (-9975 * mem[_7939]) + (9975 * Mask(112, 0, _7909)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7909)) + (9975 * mem[_7939]) < 10000 * Mask(112, 0, _7909):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7909)) + (9975 * mem[_7939]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7939]) - (9975 * Mask(112, 0, _7909)) and Mask(112, 0, _7913) > -1 / (9975 * mem[_7939]) - (9975 * Mask(112, 0, _7909)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7913):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7939] * Mask(112, 0, _7913)) - (9975 * Mask(112, 0, _7909) * Mask(112, 0, _7913)) / Mask(112, 0, _7913) != (9975 * mem[_7939]) - (9975 * Mask(112, 0, _7909)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7909) and 10000 > -1 / Mask(112, 0, _7909):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7909) / 10000 != Mask(112, 0, _7909):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7909) > (-9975 * mem[_7939]) + (9975 * Mask(112, 0, _7909)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7909)) + (9975 * mem[_7939]) < 10000 * Mask(112, 0, _7909):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7909)) + (9975 * mem[_7939]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
            else:
                _7940 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7940] == mem[_7940]
                if mem[_7940] < Mask(112, 0, _7913):
                    revert with 'NH{q', 17
                if mem[_7940] - Mask(112, 0, _7913) > mem[_7940]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7940] - Mask(112, 0, _7913) and 9975 > -1 / mem[_7940] - Mask(112, 0, _7913):
                    revert with 'NH{q', 17
                if (9975 * mem[_7940]) - (9975 * Mask(112, 0, _7913)) / 9975 != mem[_7940] - Mask(112, 0, _7913):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7909):
                    if Mask(112, 0, _7913) and 10000 > -1 / Mask(112, 0, _7913):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7913) / 10000 != Mask(112, 0, _7913):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7913) > (-9975 * mem[_7940]) + (9975 * Mask(112, 0, _7913)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7913)) + (9975 * mem[_7940]) < 10000 * Mask(112, 0, _7913):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7913)) + (9975 * mem[_7940]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7940]) - (9975 * Mask(112, 0, _7913)) and Mask(112, 0, _7909) > -1 / (9975 * mem[_7940]) - (9975 * Mask(112, 0, _7913)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7909):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7940] * Mask(112, 0, _7909)) - (9975 * Mask(112, 0, _7913) * Mask(112, 0, _7909)) / Mask(112, 0, _7909) != (9975 * mem[_7940]) - (9975 * Mask(112, 0, _7913)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7913) and 10000 > -1 / Mask(112, 0, _7913):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7913) / 10000 != Mask(112, 0, _7913):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7913) > (-9975 * mem[_7940]) + (9975 * Mask(112, 0, _7913)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7913)) + (9975 * mem[_7940]) < 10000 * Mask(112, 0, _7913):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7913)) + (9975 * mem[_7940]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
        else:
            _7906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _7910 = mem[_7906]
            require mem[_7906] == mem[_7906 + 18 len 14]
            _7914 = mem[_7906 + 32]
            require mem[_7906 + 32] == mem[_7906 + 50 len 14]
            require mem[_7906 + 64] == mem[_7906 + 92 len 4]
            mem[mem[64] + 4] = address(cd[((32 * var392001) + cd[132] + 36)])
            require ext_code.size(address(_7890))
            staticcall address(_7890).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * var392001) + cd[132] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(_7890) == address(_7894):
                _7941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7941] == mem[_7941]
                if mem[_7941] < Mask(112, 0, _7910):
                    revert with 'NH{q', 17
                if mem[_7941] - Mask(112, 0, _7910) > mem[_7941]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7941] - Mask(112, 0, _7910) and 9975 > -1 / mem[_7941] - Mask(112, 0, _7910):
                    revert with 'NH{q', 17
                if (9975 * mem[_7941]) - (9975 * Mask(112, 0, _7910)) / 9975 != mem[_7941] - Mask(112, 0, _7910):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7914):
                    if Mask(112, 0, _7910) and 10000 > -1 / Mask(112, 0, _7910):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7910) / 10000 != Mask(112, 0, _7910):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7910) > (-9975 * mem[_7941]) + (9975 * Mask(112, 0, _7910)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7910)) + (9975 * mem[_7941]) < 10000 * Mask(112, 0, _7910):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7910)) + (9975 * mem[_7941]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7941]) - (9975 * Mask(112, 0, _7910)) and Mask(112, 0, _7914) > -1 / (9975 * mem[_7941]) - (9975 * Mask(112, 0, _7910)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7914):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7941] * Mask(112, 0, _7914)) - (9975 * Mask(112, 0, _7910) * Mask(112, 0, _7914)) / Mask(112, 0, _7914) != (9975 * mem[_7941]) - (9975 * Mask(112, 0, _7910)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7910) and 10000 > -1 / Mask(112, 0, _7910):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7910) / 10000 != Mask(112, 0, _7910):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7910) > (-9975 * mem[_7941]) + (9975 * Mask(112, 0, _7910)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7910)) + (9975 * mem[_7941]) < 10000 * Mask(112, 0, _7910):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7910)) + (9975 * mem[_7941]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
            else:
                _7942 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7942] == mem[_7942]
                if mem[_7942] < Mask(112, 0, _7914):
                    revert with 'NH{q', 17
                if mem[_7942] - Mask(112, 0, _7914) > mem[_7942]:
                    revert with 0, 'ds-math-sub-underflow'
                if mem[_7942] - Mask(112, 0, _7914) and 9975 > -1 / mem[_7942] - Mask(112, 0, _7914):
                    revert with 'NH{q', 17
                if (9975 * mem[_7942]) - (9975 * Mask(112, 0, _7914)) / 9975 != mem[_7942] - Mask(112, 0, _7914):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _7910):
                    if Mask(112, 0, _7914) and 10000 > -1 / Mask(112, 0, _7914):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7914) / 10000 != Mask(112, 0, _7914):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7914) > (-9975 * mem[_7942]) + (9975 * Mask(112, 0, _7914)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7914)) + (9975 * mem[_7942]) < 10000 * Mask(112, 0, _7914):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7914)) + (9975 * mem[_7942]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
                else:
                    if (9975 * mem[_7942]) - (9975 * Mask(112, 0, _7914)) and Mask(112, 0, _7910) > -1 / (9975 * mem[_7942]) - (9975 * Mask(112, 0, _7914)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _7910):
                        revert with 'NH{q', 18
                    if (9975 * mem[_7942] * Mask(112, 0, _7910)) - (9975 * Mask(112, 0, _7914) * Mask(112, 0, _7910)) / Mask(112, 0, _7910) != (9975 * mem[_7942]) - (9975 * Mask(112, 0, _7914)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _7914) and 10000 > -1 / Mask(112, 0, _7914):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _7914) / 10000 != Mask(112, 0, _7914):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, _7914) > (-9975 * mem[_7942]) + (9975 * Mask(112, 0, _7914)) - 1:
                        revert with 'NH{q', 17
                    if (25 * Mask(112, 0, _7914)) + (9975 * mem[_7942]) < 10000 * Mask(112, 0, _7914):
                        revert with 0, 'ds-math-add-overflow'
                    if not (25 * Mask(112, 0, _7914)) + (9975 * mem[_7942]):
                        revert with 'NH{q', 18
                    if ('cd', 100).length < 2:
                        revert with 'NH{q', 17
                    if var392001 >= ('cd', 100).length - 2:
                        # nil
                    else:
                        if var392001 > -2:
                            revert with 'NH{q', 17
                        if var392001 + 1 >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var392001 + 1) + cd[132] + 36)] == address(cd[((32 * var392001 + 1) + cd[132] + 36)])
                        # nil
}



}
