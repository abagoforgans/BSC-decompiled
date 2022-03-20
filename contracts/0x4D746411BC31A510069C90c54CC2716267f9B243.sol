contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_917340f6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    mem[100] = arg1
    mem[132] = arg4 * arg5
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg4 * arg5
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg5:
        _76 = mem[64]
        mem[mem[64] + 32] = 'enterStaking'
        mem[mem[64] + 44] = '(uint256)'
        _77 = mem[64]
        mem[64] = mem[64] + 53
        mem[_76 + 89] = arg4
        mem[_76 + 53] = 36
        mem[64] = _76 + 121
        _81 = mem[_77]
        t = _77 + 32
        u = _76 + 121
        s = mem[_77]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_76 + floor32(mem[_77]) + 121] = mem[_77 + -(mem[_77] % 32) + floor32(mem[_77]) + 64 len mem[_77] % 32] or Mask(8 * -(mem[_77] % 32) + 32, -(8 * -(mem[_77] % 32) + 32) + 256, mem[_76 + floor32(mem[_77]) + 121])
        mem[_76 + 85] = mem[_76 + 89 len 28] or Mask(32, 224, sha3(mem[_76 + 121 len _81]))
        t = _76 + 85
        u = _76 + 121
        s = 36
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_76 + 153] = mem[_76 + 145 len 4] or Mask(224, 32, mem[_76 + 153])
        call arg1.mem[_76 + 121 len 4] with:
             gas gas_remaining wei
            args mem[_76 + 125]
        if not return_data.size:
            mem[_76 + 153] = 'emergencyWithdraw'
            mem[_76 + 170] = '(uint256)'
            mem[_76 + 121] = 26
            mem[_76 + 215] = 0
            mem[_76 + 179] = 36
            mem[64] = _76 + 247
            t = _76 + 153
            u = _76 + 247
            s = 26
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_76 + 247] = Mask(88, 120, 'emergencyWithdraw') >> 120, '(uint256)', 0 or Mask(48, 208, mem[_76 + 247])
            mem[_76 + 211] = 0 or Mask(32, 224, sha3(mem[_76 + 247 len 26]))
            t = _76 + 211
            u = _76 + 247
            s = 36
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_76 + 279] = mem[_76 + 271 len 4] or Mask(224, 32, mem[_76 + 279])
            call arg1.mem[_76 + 247 len 4] with:
                 gas gas_remaining wei
                args mem[_76 + 251]
            if return_data.size:
                mem[64] = _76 + ceil32(return_data.size) + 248
                mem[_76 + 247] = return_data.size
                mem[_76 + 279 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_76 + 121] = return_data.size
            mem[_76 + 153 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[_76 + ceil32(return_data.size) + 154] = 'emergencyWithdraw'
            mem[_76 + ceil32(return_data.size) + 171] = '(uint256)'
            mem[_76 + ceil32(return_data.size) + 122] = 26
            mem[_76 + ceil32(return_data.size) + 216] = 0
            mem[_76 + ceil32(return_data.size) + 180] = 36
            mem[64] = _76 + ceil32(return_data.size) + 248
            t = _76 + ceil32(return_data.size) + 154
            u = _76 + ceil32(return_data.size) + 248
            s = 26
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_76 + ceil32(return_data.size) + 248] = Mask(88, 120, 'emergencyWithdraw') >> 120, '(uint256)', 0 or Mask(48, 208, mem[_76 + ceil32(return_data.size) + 248])
            mem[_76 + ceil32(return_data.size) + 212] = 0 or Mask(32, 224, sha3(mem[_76 + ceil32(return_data.size) + 248 len 26]))
            t = _76 + ceil32(return_data.size) + 212
            u = _76 + ceil32(return_data.size) + 248
            s = 36
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_76 + ceil32(return_data.size) + 280] = mem[_76 + ceil32(return_data.size) + 272 len 4] or Mask(224, 32, mem[_76 + ceil32(return_data.size) + 280])
            call arg1.mem[_76 + ceil32(return_data.size) + 248 len 4] with:
                 gas gas_remaining wei
                args mem[_76 + ceil32(return_data.size) + 252]
            if return_data.size:
                mem[64] = _76 + (2 * ceil32(return_data.size)) + 249
                mem[_76 + ceil32(return_data.size) + 248] = return_data.size
                mem[_76 + ceil32(return_data.size) + 280 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
