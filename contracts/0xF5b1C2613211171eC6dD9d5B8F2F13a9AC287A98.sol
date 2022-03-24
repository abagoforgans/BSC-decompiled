contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address stor1;

function sub_cd1c10ff(?) payable {
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    return stor1.length
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor0[address(arg1)] = 1
}

function addExchange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor1.length++
    stor1[stor1.length] = arg1
}

function getBalanceToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer token amount!'
}

function sub_02733681(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        t = 0
        u = 128
        v = mem[64] + 100
        while t < mem[96]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor1[idx])
        staticcall stor1[idx].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[4], 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            mem[mem[64]] = 0
            if return_data.size < 68:
                if return_data.size:
                    _86 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_86] = return_data.size
                    mem[_86 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if return_data.size:
                    _87 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_87] = return_data.size
                    mem[_87 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s
            continue 
        _79 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _81 = mem[_79]
        require mem[_79] <= test266151307()
        require _79 + mem[_79] + 31 < _79 + return_data.size
        _85 = mem[_79 + mem[_79]]
        require mem[_79 + mem[_79]] <= test266151307()
        require _79 + ceil32(return_data.size) + (32 * mem[_79 + mem[_79]]) + 32 <= test266151307() and (32 * mem[_79 + mem[_79]]) + 32 >= 0
        mem[64] = _79 + ceil32(return_data.size) + (32 * mem[_79 + mem[_79]]) + 32
        mem[_79 + ceil32(return_data.size)] = _85
        require _81 + (32 * _85) + 32 <= return_data.size
        t = 0
        u = _79 + _81 + 32
        v = _79 + ceil32(return_data.size) + 32
        while t < _85:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require _85 - 1 < _85
        if mem[(32 * _85 - 1) + _79 + ceil32(return_data.size) + 32] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = mem[(32 * _85 - 1) + _79 + ceil32(return_data.size) + 32]
        continue 
    return s, 0
}

function sub_38265aa9(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    if cd[68] < stor1.length:
        mem[(32 * ('cd', 36).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 36).length) + 132] = cd[4]
        mem[(32 * ('cd', 36).length) + 164] = 64
        mem[(32 * ('cd', 36).length) + 196] = ('cd', 36).length
        idx = 0
        s = 128
        t = (32 * ('cd', 36).length) + 228
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1[cd[68]])
        staticcall stor1[cd[68]].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args mem[(32 * ('cd', 36).length) + 132 len (96 * ('cd', 36).length) + 96]
        if not ext_call.success:
            return 0
        mem[(32 * ('cd', 36).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _108 = mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 36).length) + return_data.size + 128
        _112 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
        require (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
        mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        require _108 + (32 * _112) + 32 <= return_data.size
        idx = 0
        s = (32 * ('cd', 36).length) + _108 + 160
        t = (32 * ('cd', 36).length) + ceil32(return_data.size) + 160
        while idx < _112:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _112 - 1 < _112:
            return memory
              from (32 * _112 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160
               len 32
    revert
}

function sub_dddf8ed1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _35 = mem[64]
        require mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_35] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _35 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _35
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _34 = mem[64]
    mem[mem[64]] = 1
    mem[64] = mem[64] + 64
    mem[_34 + 32] = call.data[calldata.size]
    _66 = mem[96]
    idx = 0
    while idx < _66:
        require idx < mem[96]
        _69 = mem[(32 * idx) + 128]
        s = 0
        t = 0
        while s < stor1.length:
            mem[0] = 1
            _98 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 64
            _101 = mem[_69]
            mem[mem[64] + 68] = mem[_69]
            idx = 0
            u = _69 + 32
            v = mem[64] + 100
            while idx < _101:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor1[s])
            staticcall stor1[s].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _98 + (32 * _101) + -mem[64] + 96]
            if not ext_call.success:
                _126 = mem[64]
                mem[mem[64]] = 0
                if return_data.size < 68:
                    if return_data.size:
                        _132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_132] = return_data.size
                        mem[_132 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                        if return_data.size:
                            _133 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_133] = return_data.size
                            mem[_133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if not bool(36 <= return_data.size):
                            if return_data.size:
                                _134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_134] = return_data.size
                                mem[_134 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if 32 > return_data.size:
                                if return_data.size:
                                    _138 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_138] = return_data.size
                                    mem[_138 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[64] = ceil32(mem[64]) + 1
                                if not _126:
                                    if return_data.size:
                                        _137 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_137] = return_data.size
                                        mem[_137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                s = s + 1
                t = t
                continue 
            _125 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _127 = mem[_125]
            require mem[_125] <= test266151307()
            require _125 + mem[_125] + 31 < _125 + return_data.size
            _131 = mem[_125 + mem[_125]]
            require mem[_125 + mem[_125]] <= test266151307()
            require _125 + ceil32(return_data.size) + (32 * mem[_125 + mem[_125]]) + 32 <= test266151307() and (32 * mem[_125 + mem[_125]]) + 32 >= 0
            mem[64] = _125 + ceil32(return_data.size) + (32 * mem[_125 + mem[_125]]) + 32
            mem[_125 + ceil32(return_data.size)] = _131
            require _127 + (32 * _131) + 32 <= return_data.size
            idx = 0
            u = _125 + _127 + 32
            v = _125 + ceil32(return_data.size) + 32
            while idx < _131:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require _131 - 1 < _131
            if mem[(32 * _131 - 1) + _125 + ceil32(return_data.size) + 32] <= t:
                s = s + 1
                t = t
                continue 
            s = s + 1
            t = mem[(32 * _131 - 1) + _125 + ceil32(return_data.size) + 32]
            continue 
        if t <= 0:
            idx = idx + 1
            continue 
        if idx < mem[96]:
            idx = idx + 1
            continue 
        revert
    _68 = mem[64]
    mem[mem[64]] = 96
    _70 = mem[_34]
    mem[mem[64] + 96] = mem[_34]
    idx = 0
    s = _34 + 32
    t = mem[64] + 128
    while idx < _70:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = 0
    mem[_68 + 64] = 0
    return memory
      from mem[64]
       len _68 + (32 * _70) + -mem[64] + 128
}

function sub_229fc6d7(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _271 = mem[64]
        require mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_271] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _271 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _271
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    _272 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_272] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _272 + 32
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Only owner can call this function.'
    require 0 < mem[96]
    require 0 < mem[mem[128]]
    _545 = mem[mem[128] + 32]
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Only owner can call this function.'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_545))
    staticcall address(_545).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _552 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_552] == mem[_552]
    if mem[_552] < cd[4]:
        revert with 0, 'Insufficient balance!'
    _807 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _807:
        require idx < mem[_272]
        _810 = mem[(32 * idx) + _272 + 32]
        require idx < mem[96]
        require 0 < mem[mem[(32 * idx) + 128]]
        _814 = mem[mem[(32 * idx) + 128] + 32]
        require mem[(32 * idx) + _272 + 32] < stor1.length
        mem[0] = 1
        mem[mem[64] + 4] = stor1[mem[(32 * idx) + _272 + 32]]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_814))
        call address(_814).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _819 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_819] == bool(mem[_819])
        if not mem[_819]:
            revert with 0, 'Could not approve token!'
        require idx < mem[96]
        _823 = mem[(32 * idx) + 128]
        require _810 < stor1.length
        mem[0] = 1
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _827 = mem[_823]
        mem[mem[64] + 68] = mem[_823]
        t = 0
        u = _823 + 32
        v = mem[64] + 100
        while t < _827:
            mem[v] = mem[u + 12 len 20]
            _807 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor1[_810])
        staticcall stor1[_810].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * _827) + 32]
        if not ext_call.success:
            mem[mem[64]] = 0
            if return_data.size < 68:
                if not return_data.size:
                    require _810 < stor1.length
                    mem[0] = 1
                    require idx < mem[96]
                    _1084 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1134 = mem[_1084]
                    mem[mem[64] + 164] = mem[_1084]
                    t = 0
                    u = _1084 + 32
                    v = mem[64] + 196
                    while t < _1134:
                        mem[v] = mem[u + 12 len 20]
                        _807 = mem[96]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 900
                    require ext_code.size(stor1[_810])
                    call stor1[_810].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(this.address), block.timestamp + 900, mem[mem[64] + 164 len (32 * _1134) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1333 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1346 = mem[_1333]
                    require mem[_1333] <= test266151307()
                    require _1333 + mem[_1333] + 31 < _1333 + return_data.size
                    _1359 = mem[_1333 + mem[_1333]]
                    require mem[_1333 + mem[_1333]] <= test266151307()
                    require _1333 + ceil32(return_data.size) + (32 * mem[_1333 + mem[_1333]]) + 32 <= test266151307() and (32 * mem[_1333 + mem[_1333]]) + 32 >= 0
                    mem[64] = _1333 + ceil32(return_data.size) + (32 * mem[_1333 + mem[_1333]]) + 32
                    mem[_1333 + ceil32(return_data.size)] = _1359
                    require _1346 + (32 * _1359) + 32 <= return_data.size
                    s = 0
                    t = _1333 + _1346 + 32
                    u = _1333 + ceil32(return_data.size) + 32
                    while s < _1359:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _807 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require _1359 - 1 < _1359
                    _807 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * _1359 - 1) + _1333 + ceil32(return_data.size) + 32]
                    continue 
                _1067 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1067] = return_data.size
                mem[_1067 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require _810 < stor1.length
                mem[0] = 1
                require idx < mem[96]
                _1086 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1135 = mem[_1086]
                mem[mem[64] + 164] = mem[_1086]
                t = 0
                u = _1086 + 32
                v = mem[64] + 196
                while t < _1135:
                    mem[v] = mem[u + 12 len 20]
                    _807 = mem[96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 900
                require ext_code.size(stor1[_810])
                call stor1[_810].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(this.address), block.timestamp + 900, mem[mem[64] + 164 len (32 * _1135) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1334 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1347 = mem[_1334]
                require mem[_1334] <= test266151307()
                require _1334 + mem[_1334] + 31 < _1334 + return_data.size
                _1360 = mem[_1334 + mem[_1334]]
                require mem[_1334 + mem[_1334]] <= test266151307()
                require _1334 + ceil32(return_data.size) + (32 * mem[_1334 + mem[_1334]]) + 32 <= test266151307() and (32 * mem[_1334 + mem[_1334]]) + 32 >= 0
                mem[64] = _1334 + ceil32(return_data.size) + (32 * mem[_1334 + mem[_1334]]) + 32
                mem[_1334 + ceil32(return_data.size)] = _1360
                require _1347 + (32 * _1360) + 32 <= return_data.size
                s = 0
                t = _1334 + _1347 + 32
                u = _1334 + ceil32(return_data.size) + 32
                while s < _1360:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _807 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require _1360 - 1 < _1360
                _807 = mem[96]
                idx = idx + 1
                s = mem[(32 * _1360 - 1) + _1334 + ceil32(return_data.size) + 32]
                continue 
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if not return_data.size:
                require _810 < stor1.length
                mem[0] = 1
                require idx < mem[96]
                _1094 = mem[(32 * idx) + 128]
                _1095 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1137 = mem[_1094]
                mem[mem[64] + 164] = mem[_1094]
                s = 0
                t = _1094 + 32
                u = mem[64] + 196
                while s < _1137:
                    mem[u] = mem[t + 12 len 20]
                    _807 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1095 + 100] = this.address
                mem[_1095 + 132] = block.timestamp + 900
                require ext_code.size(stor1[_810])
                call stor1[_810].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1095 + (32 * _1137) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1331 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1344 = mem[_1331]
                require mem[_1331] <= test266151307()
                require _1331 + mem[_1331] + 31 < _1331 + return_data.size
                _1357 = mem[_1331 + mem[_1331]]
                require mem[_1331 + mem[_1331]] <= test266151307()
                require _1331 + ceil32(return_data.size) + (32 * mem[_1331 + mem[_1331]]) + 32 <= test266151307() and (32 * mem[_1331 + mem[_1331]]) + 32 >= 0
                mem[64] = _1331 + ceil32(return_data.size) + (32 * mem[_1331 + mem[_1331]]) + 32
                mem[_1331 + ceil32(return_data.size)] = _1357
                require _1344 + (32 * _1357) + 32 <= return_data.size
                s = 0
                t = _1331 + _1344 + 32
                u = _1331 + ceil32(return_data.size) + 32
                while s < _1357:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _807 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require _1357 - 1 < _1357
                _807 = mem[96]
                idx = idx + 1
                s = mem[(32 * _1357 - 1) + _1331 + ceil32(return_data.size) + 32]
                continue 
            _1068 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1068] = return_data.size
            mem[_1068 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require _810 < stor1.length
            mem[0] = 1
            require idx < mem[96]
            _1096 = mem[(32 * idx) + 128]
            _1097 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1138 = mem[_1096]
            mem[mem[64] + 164] = mem[_1096]
            s = 0
            t = _1096 + 32
            u = mem[64] + 196
            while s < _1138:
                mem[u] = mem[t + 12 len 20]
                _807 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1097 + 100] = this.address
            mem[_1097 + 132] = block.timestamp + 900
            require ext_code.size(stor1[_810])
            call stor1[_810].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1097 + (32 * _1138) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1332 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1345 = mem[_1332]
            require mem[_1332] <= test266151307()
            require _1332 + mem[_1332] + 31 < _1332 + return_data.size
            _1358 = mem[_1332 + mem[_1332]]
            require mem[_1332 + mem[_1332]] <= test266151307()
            require _1332 + ceil32(return_data.size) + (32 * mem[_1332 + mem[_1332]]) + 32 <= test266151307() and (32 * mem[_1332 + mem[_1332]]) + 32 >= 0
            mem[64] = _1332 + ceil32(return_data.size) + (32 * mem[_1332 + mem[_1332]]) + 32
            mem[_1332 + ceil32(return_data.size)] = _1358
            require _1345 + (32 * _1358) + 32 <= return_data.size
            s = 0
            t = _1332 + _1345 + 32
            u = _1332 + ceil32(return_data.size) + 32
            while s < _1358:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _807 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _1358 - 1 < _1358
            _807 = mem[96]
            idx = idx + 1
            s = mem[(32 * _1358 - 1) + _1332 + ceil32(return_data.size) + 32]
            continue 
        _1060 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1062 = mem[_1060]
        require mem[_1060] <= test266151307()
        require _1060 + mem[_1060] + 31 < _1060 + return_data.size
        _1066 = mem[_1060 + mem[_1060]]
        require mem[_1060 + mem[_1060]] <= test266151307()
        require _1060 + ceil32(return_data.size) + (32 * mem[_1060 + mem[_1060]]) + 32 <= test266151307() and (32 * mem[_1060 + mem[_1060]]) + 32 >= 0
        mem[64] = _1060 + ceil32(return_data.size) + (32 * mem[_1060 + mem[_1060]]) + 32
        mem[_1060 + ceil32(return_data.size)] = _1066
        require _1062 + (32 * _1066) + 32 <= return_data.size
        t = 0
        u = _1060 + _1062 + 32
        v = _1060 + ceil32(return_data.size) + 32
        while t < _1066:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            _807 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require _1066 - 1 < _1066
        _1304 = mem[(32 * _1066 - 1) + _1060 + ceil32(return_data.size) + 32]
        require _810 < stor1.length
        mem[0] = 1
        require idx < mem[96]
        _1307 = mem[(32 * idx) + 128]
        _1308 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = _1304
        mem[mem[64] + 68] = 160
        _1361 = mem[_1307]
        mem[mem[64] + 164] = mem[_1307]
        s = 0
        t = _1307 + 32
        u = mem[64] + 196
        while s < _1361:
            mem[u] = mem[t + 12 len 20]
            _807 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_1308 + 100] = this.address
        mem[_1308 + 132] = block.timestamp + 900
        require ext_code.size(stor1[_810])
        call stor1[_810].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1308 + (32 * _1361) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1491 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1492 = mem[_1491]
        require mem[_1491] <= test266151307()
        require _1491 + mem[_1491] + 31 < _1491 + return_data.size
        _1493 = mem[_1491 + mem[_1491]]
        require mem[_1491 + mem[_1491]] <= test266151307()
        require _1491 + ceil32(return_data.size) + (32 * mem[_1491 + mem[_1491]]) + 32 <= test266151307() and (32 * mem[_1491 + mem[_1491]]) + 32 >= 0
        mem[64] = _1491 + ceil32(return_data.size) + (32 * mem[_1491 + mem[_1491]]) + 32
        mem[_1491 + ceil32(return_data.size)] = _1493
        require _1492 + (32 * _1493) + 32 <= return_data.size
        s = 0
        t = _1491 + _1492 + 32
        u = _1491 + ceil32(return_data.size) + 32
        while s < _1493:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _807 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require _1493 - 1 < _1493
        _807 = mem[96]
        idx = idx + 1
        s = mem[(32 * _1493 - 1) + _1491 + ceil32(return_data.size) + 32]
        continue 
    if s <= cd[4]:
        revert with 0, 'Arbitrage is not profitable!'
}



}
