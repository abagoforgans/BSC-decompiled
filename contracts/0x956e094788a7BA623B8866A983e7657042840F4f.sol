contract main {




// =====================  Runtime code  =====================


address yAddress;
mapping of uint256 sub_fb6f0947;
array of address sub_0f88c7b0;
address governanceAddress;

function sub_0f88c7b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0f88c7b0.length
    return sub_0f88c7b0[arg1]
}

function governance() payable {
    return governanceAddress
}

function y() payable {
    return yAddress
}

function sub_effade41(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_fb6f0947[address(arg1)])
}

function sub_fb6f0947(?) payable {
    require calldata.size - 4 >= 32
    return sub_fb6f0947[arg1]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    require ext_code.size(yAddress)
    staticcall yAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(yAddress)
    staticcall yAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if sub_fb6f0947[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sub_fb6f0947[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_fb6f0947[address(arg1)] * ext_call.return_data[0] / 100)
}

function sub_bad4fe93(?) payable {
    mem[64] = 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mem[100] = this.address
    require ext_code.size(yAddress)
    staticcall yAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < sub_0f88c7b0.length:
            mem[0] = sub_0f88c7b0[idx]
            mem[32] = 1
            if sub_fb6f0947[stor2[idx]]:
                mem[0] = sub_0f88c7b0[idx]
                mem[32] = 1
                if not ext_call.return_data[0]:
                    _75 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_75] = 26
                    mem[_75 + 32] = 'SafeMath: division by zero'
                    _77 = mem[64]
                    mem[mem[64] + 36] = sub_0f88c7b0[idx]
                    mem[mem[64] + 68] = 0
                    _78 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_78 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_78 + 36 len 28]
                    if not ext_code.hash(yAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(yAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    _86 = mem[_78]
                    t = _78 + 32
                    u = _77 + 100
                    s = mem[_78]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_77 + floor32(mem[_78]) + 100] = mem[_78 + -(mem[_78] % 32) + floor32(mem[_78]) + 64 len mem[_78] % 32] or Mask(8 * -(mem[_78] % 32) + 32, -(8 * -(mem[_78] % 32) + 32) + 256, mem[_77 + floor32(mem[_78]) + 100])
                    call yAddress.mem[_77 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_77 + 104 len _86 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_77 + 210 len 22]
                    else:
                        mem[64] = _77 + ceil32(return_data.size) + 101
                        mem[_77 + 100] = return_data.size
                        mem[_77 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_77 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_77 + ceil32(return_data.size) + 211 len 22]
                else:
                    if sub_fb6f0947[stor2[idx]] * ext_call.return_data[0] / ext_call.return_data[0] != sub_fb6f0947[stor2[idx]]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _76 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_76] = 26
                    mem[_76 + 32] = 'SafeMath: division by zero'
                    _80 = mem[64]
                    mem[mem[64] + 36] = sub_0f88c7b0[idx]
                    mem[mem[64] + 68] = sub_fb6f0947[stor2[idx]] * ext_call.return_data[0] / 100
                    _81 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_81 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_81 + 36 len 28]
                    if not ext_code.hash(yAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(yAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    _92 = mem[_81]
                    t = _81 + 32
                    u = _80 + 100
                    s = mem[_81]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_80 + floor32(mem[_81]) + 100] = mem[_81 + -(mem[_81] % 32) + floor32(mem[_81]) + 64 len mem[_81] % 32] or Mask(8 * -(mem[_81] % 32) + 32, -(8 * -(mem[_81] % 32) + 32) + 256, mem[_80 + floor32(mem[_81]) + 100])
                    call yAddress.mem[_80 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_80 + 104 len _92 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_80 + 210 len 22]
                    else:
                        mem[64] = _80 + ceil32(return_data.size) + 101
                        mem[_80 + 100] = return_data.size
                        mem[_80 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_80 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_80 + ceil32(return_data.size) + 211 len 22]
            idx = idx + 1
            continue 
}



}
