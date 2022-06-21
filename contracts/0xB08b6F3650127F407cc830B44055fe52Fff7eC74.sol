contract main {




// =====================  Runtime code  =====================


#
#  - sub_f255c75f(?)
#  - _fallback()
#
address stor0;
uint256 stor1;
array of address stor2;
array of uint256 stor3;
address stor4;
mapping of uint256 balanceOf;
uint256 stor6;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function withdraw() {
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    require arg1
    stor4 = arg1
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pairFor(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg2, arg3), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
    if not arg3:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
}

function sub_b6ae79a7(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    stor0 = address(cd[4])
    stor1 = cd[36]
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor3.length = 0
            idx = 0
            while (uint255(stor3.length) * 0.5) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor3.length = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor3[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while (uint255(stor3.length) * 0.5) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor3.length = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor3[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor3.length.field_1 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_89deebf3(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    mem[100] = msg.sender
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor1:
        revert with 0, 'You don't have enough tokens to use Proficy bypass feature!'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 100] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[ceil32(return_data.size) + 132] = stor6
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, stor6
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    s = cd[68]
    idx = cd[36]
    while idx:
        if 0 >= ('cd', 4).length:
            revert with 0, 50
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        if s <= idx:
            mem[mem[64] + 68] = s
            require ext_code.size(address(('cd', 4)[0]))
            call address(('cd', 4)[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == bool(mem[_41])
            if not ('cd', 4).length:
                revert with 0, 50
            require ('cd', 4)[0] == address(('cd', 4)[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(('cd', 4)[0]))
            staticcall address(('cd', 4)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_53]
            _56 = mem[64]
            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _55
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 4).length
            t = 0
            u = cd[4] + 36
            v = mem[64] + 196
            while t < ('cd', 4).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_56 + 100] = address(cd[100])
            mem[_56 + 132] = block.timestamp
            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _56 + (32 * ('cd', 4).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx < s:
                revert with 0, 17
            s = s
            idx = idx - s
            continue 
        mem[mem[64] + 68] = idx
        require ext_code.size(address(('cd', 4)[0]))
        call address(('cd', 4)[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_42] == bool(mem[_42])
        if not ('cd', 4).length:
            revert with 0, 50
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _57 = mem[_54]
        _58 = mem[64]
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _57
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 4).length
        s = 0
        t = cd[4] + 36
        u = mem[64] + 196
        while s < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_58 + 100] = address(cd[100])
        mem[_58 + 132] = block.timestamp
        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
        call ????????????????????????????????????????.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _58 + (32 * ('cd', 4).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx < idx:
            revert with 0, 17
        s = idx
        idx = 0
        continue 
}

function sub_9a8e7862(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = tx.origin
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args tx.origin, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[ceil32(return_data.size) + 100] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[ceil32(return_data.size) + 132] = stor6
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, stor6
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(4 * ceil32(return_data.size)) + 132] = 64
    mem[(4 * ceil32(return_data.size)) + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (4 * ceil32(return_data.size)) + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _40 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _41 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _41
    require (32 * _41) + _40 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _41)] = mem[(4 * ceil32(return_data.size)) + _40 + 128 len ceil32(32 * _41)]
    _57 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_57 + 100] = this.address
    mem[_57 + 132] = block.timestamp
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    call ????????????????????????????????????????.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _57 + (32 * ('cd', 36).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_72]
    mem[mem[64] + 32] = 64
    _75 = mem[(6 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 96 len 32 * _75] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _75]
    return mem[mem[64]], 64, mem[mem[64] + 64 len (32 * _75) + 32]
}

function sub_64bdc0b0(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor4 != msg.sender:
        revert with 0, 'Get your own at Proficy.io'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = tx.origin
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args tx.origin, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[ceil32(return_data.size) + 100] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[ceil32(return_data.size) + 132] = stor6
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, stor6
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(4 * ceil32(return_data.size)) + 132] = 64
    mem[(4 * ceil32(return_data.size)) + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (4 * ceil32(return_data.size)) + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _70 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _71 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _71
    require (32 * _71) + _70 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _71)] = mem[(4 * ceil32(return_data.size)) + _70 + 128 len ceil32(32 * _71)]
    _117 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_117 + 100] = this.address
    mem[_117 + 132] = block.timestamp
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    call ????????????????????????????????????????.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _117 + (32 * ('cd', 36).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _162 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _163 = mem[_162]
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[mem[64] + 4] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[mem[64] + 36] = stor6
    require ext_code.size(address(('cd', 36)[1]))
    call address(('cd', 36)[1]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, stor6
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _168 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_168] == bool(mem[_168])
    _170 = mem[64]
    mem[64] = mem[64] + 64
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[_170] = address(('cd', 36)[1])
    if not ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[_170 + 32] = address(('cd', 36)[0])
    stor2.length = 2
    mem[0] = 2
    s = 0
    idx = _170
    while _170 + 64 > idx:
        address(stor2[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor2.length > idx:
        uint256(stor2[idx]) = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _163
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = stor2.length
    mem[0] = 2
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < stor2.length:
        mem[t] = address(stor2[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _163, Array(len=stor2.length, data=mem[mem[64] + 100 len 32 * stor2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _251 = mem[_250]
    require mem[_250] <= test266151307()
    require _250 + mem[_250] + 31 < _250 + return_data.size
    _252 = mem[_250 + mem[_250]]
    if mem[_250 + mem[_250]] > test266151307():
        revert with 0, 65
    if _250 + ceil32(return_data.size) + ceil32(32 * mem[_250 + mem[_250]]) + 1 > test266151307() or ceil32(32 * mem[_250 + mem[_250]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _250 + ceil32(return_data.size) + ceil32(32 * mem[_250 + mem[_250]]) + 1
    mem[_250 + ceil32(return_data.size)] = _252
    require (32 * _252) + _251 + 32 <= return_data.size
    mem[_250 + ceil32(return_data.size) + 32 len ceil32(32 * _252)] = mem[_250 + _251 + 32 len ceil32(32 * _252)]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = stor2.length
    mem[0] = 2
    idx = 0
    s = 0
    t = mem[64] + 196
    while idx < stor2.length:
        mem[t] = address(stor2[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _163, 0, 160, address(this.address), block.timestamp, stor2.length, mem[mem[64] + 196 len 32 * stor2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _289 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _290 = mem[_289]
    mem[mem[64]] = _163
    mem[mem[64] + 32] = 128
    _292 = mem[(6 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 160 len 32 * _292] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _292]
    mem[mem[64] + 64] = _290
    mem[mem[64] + 96] = (32 * _292) + 160
    _298 = mem[_250 + ceil32(return_data.size)]
    mem[mem[64] + (32 * _292) + 160] = mem[_250 + ceil32(return_data.size)]
    mem[mem[64] + (32 * _292) + 192 len 32 * _298] = mem[_250 + ceil32(return_data.size) + 32 len 32 * _298]
    return _163, 128, _290, (32 * _292) + 160, mem[mem[64] + 128 len (32 * _292) + (32 * _298) + 64]
}



}
