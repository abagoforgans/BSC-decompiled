contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    revert
}

function sub_6a603618(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160 <= test266151307() and (32 * ('cd', 132).length) + 160 >= 128
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192 <= test266151307() and (32 * ('cd', 164).length) + 192 >= 160
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == cd[196]
    idx = 0
    s = cd[4]
    while idx < ('cd', 164).length:
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
        _557 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192]
        require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20])
        staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _561 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _563 = mem[_561]
        require mem[_561] == mem[_561 + 12 len 20]
        require ext_code.size(address(_557))
        staticcall address(_557).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _572 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _573 = mem[_572]
        require mem[_572] == mem[_572 + 18 len 14]
        _576 = mem[_572 + 32]
        require mem[_572 + 32] == mem[_572 + 50 len 14]
        require mem[_572 + 64] == mem[_572 + 92 len 4]
        require idx < mem[96]
        require idx < mem[(32 * ('cd', 68).length) + 128]
        require idx < mem[96]
        require idx + 1 < mem[96]
        if address(_563) != mem[(32 * idx) + 140 len 20]:
            if not stor2[address(mem[(32 * idx) + 128])]:
                require (1000 * mem[_572 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573) / (1000 * Mask(112, 0, _576)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573) / (1000 * Mask(112, 0, _576)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573) / (1000 * Mask(112, 0, _576)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            require (1000 * mem[_572 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573)) / (1000 * Mask(112, 0, _576)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573)) / (1000 * Mask(112, 0, _576)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _573)) / (1000 * Mask(112, 0, _576)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        if not stor2[address(mem[(32 * idx) + 128])]:
            require (1000 * mem[_572 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576) / (1000 * Mask(112, 0, _573)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576) / (1000 * Mask(112, 0, _573)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576) / (1000 * Mask(112, 0, _573)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        require (1000 * mem[_572 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
        mem[0] = mem[(32 * idx + 1) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
            idx = idx + 1
            s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576)) / (1000 * Mask(112, 0, _573)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            continue 
        mem[0] = mem[(32 * idx + 1) + 140 len 20]
        mem[32] = 2
        idx = idx + 1
        s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576)) / (1000 * Mask(112, 0, _573)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _576)) / (1000 * Mask(112, 0, _573)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
        continue 
    if not s:
        _560 = mem[64]
        mem[64] = mem[64] + 64
        mem[_560] = 1
        mem[_560 + 32] = '0'
        if s <= cd[4] + cd[196]:
            revert with 0, '0', 0
        _564 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[96]
        mem[mem[64] + 100] = address(cd[36])
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = cd[4]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x23b872dd with:
             gas gas_remaining wei
            args address(cd[36]), address(this.address), cd[4]
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        _697 = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = cd[4]
        t = this.address
        while idx < _697:
            require idx < mem[96]
            require 0 < mem[_564]
            mem[_564 + 32] = mem[(32 * idx) + 140 len 20]
            require idx + 1 < mem[96]
            require 1 < mem[_564]
            mem[_564 + 64] = mem[(32 * idx + 1) + 140 len 20]
            require idx < mem[96]
            if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                _710 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _715 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_715)
                require ext_code.size(address(_710))
                staticcall address(_710).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_715)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _740 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_740] == mem[_740]
                if mem[_740] >= s:
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _753 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _784 = mem[_564]
                    mem[mem[64] + 164] = mem[_564]
                    u = 0
                    v = _564 + 32
                    w = mem[64] + 196
                    while u < _784:
                        mem[w] = mem[v + 12 len 20]
                        _697 = mem[(32 * ('cd', 68).length) + 128]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[mem[64] + 100] = address(t)
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_753))
                    call address(_753).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _784) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1019 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1019))
                    call address(_1019).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1037 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1037] == mem[_1037]
                    _697 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1037]
                    t = t
                    continue 
                require idx < mem[96]
                _755 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_755))
                call address(_755).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _807 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_807] == bool(mem[_807])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _815 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _816 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _841 = mem[_564]
                mem[mem[64] + 164] = mem[_564]
                s = 0
                u = _564 + 32
                v = mem[64] + 196
                while s < _841:
                    mem[v] = mem[u + 12 len 20]
                    _697 = mem[(32 * ('cd', 68).length) + 128]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_816 + 100] = address(t)
                mem[_816 + 132] = cd[100]
                require ext_code.size(address(_815))
                call address(_815).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _816 + (32 * _841) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1021 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1021))
                call address(_1021).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1038 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1038] == mem[_1038]
                _697 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1038]
                t = t
                continue 
            _717 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _722 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_722)
            require ext_code.size(address(_717))
            staticcall address(_717).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_722)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _742 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_742] == mem[_742]
            if mem[_742] >= s:
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _761 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _762 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _789 = mem[_564]
                mem[mem[64] + 164] = mem[_564]
                s = 0
                t = _564 + 32
                u = mem[64] + 196
                while s < _789:
                    mem[u] = mem[t + 12 len 20]
                    _697 = mem[(32 * ('cd', 68).length) + 128]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_762 + 100] = address(cd[36])
                mem[_762 + 132] = cd[100]
                require ext_code.size(address(_761))
                call address(_761).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _762 + (32 * _789) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1023 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1023))
                call address(_1023).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1039 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1039] == mem[_1039]
                _697 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1039]
                t = cd[36]
                continue 
            require idx < mem[96]
            _763 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_763))
            call address(_763).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _808 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_808] == bool(mem[_808])
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _820 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            _821 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _851 = mem[_564]
            mem[mem[64] + 164] = mem[_564]
            s = 0
            t = _564 + 32
            u = mem[64] + 196
            while s < _851:
                mem[u] = mem[t + 12 len 20]
                _697 = mem[(32 * ('cd', 68).length) + 128]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_821 + 100] = address(cd[36])
            mem[_821 + 132] = cd[100]
            require ext_code.size(address(_820))
            call address(_820).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _821 + (32 * _851) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[96]
            _1025 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1025))
            call address(_1025).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1040 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1040] == mem[_1040]
            _697 = mem[(32 * ('cd', 68).length) + 128]
            idx = idx + 1
            s = mem[_1040]
            t = cd[36]
            continue 
    else:
        t = 0
        idx = s
        while idx:
            t = t + 1
            idx = idx / 10
            continue 
        require t <= test266151307()
        _700 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t - 1
            idx = s
            while idx:
                require u < mem[_700]
                mem[u + _700 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if s <= cd[4] + cd[196]:
                _997 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1002 = mem[_700]
                mem[mem[64] + 36] = mem[_700]
                mem[mem[64] + 68 len ceil32(_1002)] = mem[_700 + 32 len ceil32(_1002)]
                if ceil32(_1002) <= _1002:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_1002) + 32]
                mem[mem[64] + _1002 + 68] = 0
                revert with memory
                  from mem[64]
                   len _997 + ceil32(_1002) + -mem[64] + 68
            _999 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[96]
            mem[mem[64] + 100] = address(cd[36])
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = cd[4]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[36]), address(this.address), cd[4]
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            _1225 = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = cd[4]
            t = this.address
            while idx < _1225:
                require idx < mem[96]
                require 0 < mem[_999]
                mem[_999 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_999]
                mem[_999 + 64] = mem[(32 * idx + 1) + 140 len 20]
                require idx < mem[96]
                if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                    _1245 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1253 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1253)
                    require ext_code.size(address(_1245))
                    staticcall address(_1245).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_1253)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1271] == mem[_1271]
                    if mem[_1271] >= s:
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _1283 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1311 = mem[_999]
                        mem[mem[64] + 164] = mem[_999]
                        u = 0
                        v = _999 + 32
                        w = mem[64] + 196
                        while u < _1311:
                            mem[w] = mem[v + 12 len 20]
                            _1225 = mem[(32 * ('cd', 68).length) + 128]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[mem[64] + 100] = address(t)
                        mem[mem[64] + 132] = cd[100]
                        require ext_code.size(address(_1283))
                        call address(_1283).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1311) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx + 1 < mem[96]
                        _1431 = mem[(32 * idx + 1) + 128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1431))
                        call address(_1431).0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1455] == mem[_1455]
                        _1225 = mem[(32 * ('cd', 68).length) + 128]
                        idx = idx + 1
                        s = mem[_1455]
                        t = t
                        continue 
                    require idx < mem[96]
                    _1285 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_1285))
                    call address(_1285).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1319] == bool(mem[_1319])
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1333 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1359 = mem[_999]
                    mem[mem[64] + 164] = mem[_999]
                    u = 0
                    v = _999 + 32
                    w = mem[64] + 196
                    while u < _1359:
                        mem[w] = mem[v + 12 len 20]
                        _1225 = mem[(32 * ('cd', 68).length) + 128]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[mem[64] + 100] = address(t)
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1333))
                    call address(_1333).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1359) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1433 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1433))
                    call address(_1433).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1456] == mem[_1456]
                    _1225 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1456]
                    t = t
                    continue 
                _1255 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1263 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1263)
                require ext_code.size(address(_1255))
                staticcall address(_1255).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1263)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1273] == mem[_1273]
                if mem[_1273] >= s:
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1297 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    _1298 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1313 = mem[_999]
                    mem[mem[64] + 164] = mem[_999]
                    s = 0
                    t = _999 + 32
                    u = mem[64] + 196
                    while s < _1313:
                        mem[u] = mem[t + 12 len 20]
                        _1225 = mem[(32 * ('cd', 68).length) + 128]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1298 + 100] = address(cd[36])
                    mem[_1298 + 132] = cd[100]
                    require ext_code.size(address(_1297))
                    call address(_1297).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1298 + (32 * _1313) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1435 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1435))
                    call address(_1435).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1457 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1457] == mem[_1457]
                    _1225 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1457]
                    t = cd[36]
                    continue 
                require idx < mem[96]
                _1299 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1299))
                call address(_1299).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1321] == bool(mem[_1321])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1339 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _1340 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1362 = mem[_999]
                mem[mem[64] + 164] = mem[_999]
                s = 0
                t = _999 + 32
                u = mem[64] + 196
                while s < _1362:
                    mem[u] = mem[t + 12 len 20]
                    _1225 = mem[(32 * ('cd', 68).length) + 128]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1340 + 100] = address(cd[36])
                mem[_1340 + 132] = cd[100]
                require ext_code.size(address(_1339))
                call address(_1339).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1340 + (32 * _1362) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1437 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1437))
                call address(_1437).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1458] == mem[_1458]
                _1225 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1458]
                t = cd[36]
                continue 
        else:
            mem[_700 + 32 len t] = call.data[calldata.size len t]
            u = t - 1
            idx = s
            while idx:
                require u < mem[_700]
                mem[u + _700 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if s <= cd[4] + cd[196]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1004 = mem[_700]
                mem[mem[64] + 36] = mem[_700]
                mem[mem[64] + 68 len ceil32(_1004)] = mem[_700 + 32 len ceil32(_1004)]
                if ceil32(_1004) > _1004:
                    mem[mem[64] + _1004 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1004) + 32]
            _1000 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[96]
            mem[mem[64] + 100] = address(cd[36])
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = cd[4]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[36]), address(this.address), cd[4]
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            _1226 = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = cd[4]
            t = this.address
            while idx < _1226:
                require idx < mem[96]
                require 0 < mem[_1000]
                mem[_1000 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_1000]
                mem[_1000 + 64] = mem[(32 * idx + 1) + 140 len 20]
                require idx < mem[96]
                if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                    _1249 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1258 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1258)
                    require ext_code.size(address(_1249))
                    staticcall address(_1249).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_1258)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1272] == mem[_1272]
                    if mem[_1272] >= s:
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _1289 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        _1290 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1312 = mem[_1000]
                        mem[mem[64] + 164] = mem[_1000]
                        s = 0
                        u = _1000 + 32
                        v = mem[64] + 196
                        while s < _1312:
                            mem[v] = mem[u + 12 len 20]
                            _1226 = mem[(32 * ('cd', 68).length) + 128]
                            s = s + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_1290 + 100] = address(t)
                        mem[_1290 + 132] = cd[100]
                        require ext_code.size(address(_1289))
                        call address(_1289).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1290 + (32 * _1312) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx + 1 < mem[96]
                        _1439 = mem[(32 * idx + 1) + 128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1439))
                        call address(_1439).0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1459] == mem[_1459]
                        _1226 = mem[(32 * ('cd', 68).length) + 128]
                        idx = idx + 1
                        s = mem[_1459]
                        t = t
                        continue 
                    require idx < mem[96]
                    _1291 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_1291))
                    call address(_1291).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1320] == bool(mem[_1320])
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1336 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1360 = mem[_1000]
                    mem[mem[64] + 164] = mem[_1000]
                    u = 0
                    v = _1000 + 32
                    w = mem[64] + 196
                    while u < _1360:
                        mem[w] = mem[v + 12 len 20]
                        _1226 = mem[(32 * ('cd', 68).length) + 128]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[mem[64] + 100] = address(t)
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1336))
                    call address(_1336).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1360) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1441 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1441))
                    call address(_1441).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1460] == mem[_1460]
                    _1226 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1460]
                    t = t
                    continue 
                _1260 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1265 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1265)
                require ext_code.size(address(_1260))
                staticcall address(_1260).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1265)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1274] == mem[_1274]
                if mem[_1274] >= s:
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1303 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1314 = mem[_1000]
                    mem[mem[64] + 164] = mem[_1000]
                    t = 0
                    u = _1000 + 32
                    v = mem[64] + 196
                    while t < _1314:
                        mem[v] = mem[u + 12 len 20]
                        _1226 = mem[(32 * ('cd', 68).length) + 128]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1303))
                    call address(_1303).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _1314) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1443 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1443))
                    call address(_1443).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1461] == mem[_1461]
                    _1226 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1461]
                    t = cd[36]
                    continue 
                require idx < mem[96]
                _1305 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1305))
                call address(_1305).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1322] == bool(mem[_1322])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1341 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1364 = mem[_1000]
                mem[mem[64] + 164] = mem[_1000]
                t = 0
                u = _1000 + 32
                v = mem[64] + 196
                while t < _1364:
                    mem[v] = mem[u + 12 len 20]
                    _1226 = mem[(32 * ('cd', 68).length) + 128]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_1341))
                call address(_1341).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _1364) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1445 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1445))
                call address(_1445).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1462] == mem[_1462]
                _1226 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1462]
                t = cd[36]
                continue 
}



}
