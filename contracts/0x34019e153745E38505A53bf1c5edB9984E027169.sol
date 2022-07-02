contract main {




// =====================  Runtime code  =====================


#
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_70411796(?)
#  - sub_ff62d41a(?)
#
const getBNBBalance = eth.balance(this.address)


address owner;
uint256 stor1;
address stor2;

function getOwner() {
    return owner
}

function _fallback() payable {
    emit Received(this.address, eth.balance(this.address));
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Only Owner Allowed'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_68c3a47e(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a8a11e2b(?) payable {
    if eth.balance(this.address) < msg.value:
        revert with 0, 'Not enough BNB in contract'
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_67a32e13(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d7f66730(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_48af2ccb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a6f2458b(?) payable {
    if eth.balance(this.address) < msg.value:
        revert with 0, 'Not enough BNB in contract'
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only Owner Allowed'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only Owner Allowed'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4e7ce320(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _80 = mem[(32 * idx) + 128]
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_80))
            staticcall address(_80).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_91]
            require mem[_91] == mem[_91 + 12 len 20]
            if not mem[_91 + 12 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _107 = mem[64]
            mem[64] = mem[64] + 128
            mem[_107] = address(_80)
            mem[_107 + 32] = address(cd[36])
            mem[_107 + 64] = address(cd[68])
            mem[_107 + 96] = address(_98)
            if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129] = _107
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 32
        _81 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _81:
            _112 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_112 + 44 len 20]
            mem[t + 64] = mem[_112 + 76 len 20]
            mem[t + 96] = mem[_112 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _79 + (128 * _81) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + 129] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _111 = mem[96]
    idx = 0
    s = 0
    while idx < _111:
        if idx >= mem[96]:
            revert with 0, 50
        _120 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            _111 = mem[96]
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        require ext_code.size(address(_120))
        staticcall address(_120).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _131 = mem[_129]
        require mem[_129] == mem[_129 + 12 len 20]
        if not mem[_129 + 12 len 20]:
            if idx == -1:
                revert with 0, 17
            _111 = mem[96]
            idx = idx + 1
            s = s
            continue 
        _132 = mem[64]
        mem[64] = mem[64] + 128
        mem[_132] = address(_120)
        mem[_132 + 32] = address(cd[36])
        mem[_132 + 64] = address(cd[68])
        mem[_132 + 96] = address(_131)
        if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129] = _132
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _111 = mem[96]
        idx = idx + 1
        s = s + 1
        continue 
    _119 = mem[64]
    mem[mem[64]] = 32
    _121 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _121:
        _134 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_134 + 44 len 20]
        mem[t + 64] = mem[_134 + 76 len 20]
        mem[t + 96] = mem[_134 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _119 + (128 * _121) + -mem[64] + 64
}

function sub_00416095(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (192 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((192 * idx) + cd[4] + 100)] == address(cd[((192 * idx) + cd[4] + 100)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((192 * idx) + cd[4] + 164)] == address(cd[((192 * idx) + cd[4] + 164)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((192 * idx) + cd[4] + 196)] == address(cd[((192 * idx) + cd[4] + 196)])
            _90 = mem[64]
            mem[64] = mem[64] + 192
            mem[_90] = 0
            mem[_90 + 32] = 0
            mem[_90 + 64] = 0
            mem[_90 + 96] = 0
            mem[_90 + 128] = 0
            mem[_90 + 160] = 0
            if address(cd[((192 * idx) + cd[4] + 164)]) == address(cd[((192 * idx) + cd[4] + 196)]):
                revert with 0, 'Library Sort: IDENTICAL_ADDRESSES'
            if address(cd[((192 * idx) + cd[4] + 164)]) < address(cd[((192 * idx) + cd[4] + 196)]):
                if not address(cd[((192 * idx) + cd[4] + 164)]):
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(address(cd[((192 * idx) + cd[4] + 100)]))
                staticcall address(cd[((192 * idx) + cd[4] + 100)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _114 = mem[_104]
                require mem[_104] == mem[_104 + 18 len 14]
                _118 = mem[_104 + 32]
                require mem[_104 + 32] == mem[_104 + 50 len 14]
                require mem[_104 + 64] == mem[_104 + 92 len 4]
                mem[_90 + 64] = address(cd[((192 * idx) + cd[4] + 100)])
                mem[_90 + 96] = cd[((192 * idx) + cd[4] + 132)]
                mem[_90 + 128] = address(cd[((192 * idx) + cd[4] + 164)])
                mem[_90 + 160] = address(cd[((192 * idx) + cd[4] + 196)])
                if address(cd[((192 * idx) + cd[4] + 164)]) == address(cd[((192 * idx) + cd[4] + 164)]):
                    mem[_90] = Mask(112, 0, _114)
                    mem[_90 + 32] = Mask(112, 0, _118)
                else:
                    mem[_90] = Mask(112, 0, _118)
                    mem[_90 + 32] = Mask(112, 0, _114)
            else:
                if not address(cd[((192 * idx) + cd[4] + 196)]):
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(address(cd[((192 * idx) + cd[4] + 100)]))
                staticcall address(cd[((192 * idx) + cd[4] + 100)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _115 = mem[_105]
                require mem[_105] == mem[_105 + 18 len 14]
                _119 = mem[_105 + 32]
                require mem[_105 + 32] == mem[_105 + 50 len 14]
                require mem[_105 + 64] == mem[_105 + 92 len 4]
                mem[_90 + 64] = address(cd[((192 * idx) + cd[4] + 100)])
                mem[_90 + 96] = cd[((192 * idx) + cd[4] + 132)]
                mem[_90 + 128] = address(cd[((192 * idx) + cd[4] + 164)])
                mem[_90 + 160] = address(cd[((192 * idx) + cd[4] + 196)])
                if address(cd[((192 * idx) + cd[4] + 164)]) == address(cd[((192 * idx) + cd[4] + 196)]):
                    mem[_90] = Mask(112, 0, _115)
                    mem[_90 + 32] = Mask(112, 0, _119)
                else:
                    mem[_90] = Mask(112, 0, _119)
                    mem[_90 + 32] = Mask(112, 0, _115)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _90
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _71 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _71:
            _136 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_136 + 50 len 14]
            mem[t + 64] = mem[_136 + 76 len 20]
            mem[t + 96] = mem[_136 + 96]
            mem[t + 128] = mem[_136 + 140 len 20]
            mem[t + 160] = mem[_136 + 172 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _70 + (192 * _71) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 320
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((192 * idx) + cd[4] + 100)] == address(cd[((192 * idx) + cd[4] + 100)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((192 * idx) + cd[4] + 164)] == address(cd[((192 * idx) + cd[4] + 164)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((192 * idx) + cd[4] + 196)] == address(cd[((192 * idx) + cd[4] + 196)])
        _154 = mem[64]
        mem[64] = mem[64] + 192
        mem[_154] = 0
        mem[_154 + 32] = 0
        mem[_154 + 64] = 0
        mem[_154 + 96] = 0
        mem[_154 + 128] = 0
        mem[_154 + 160] = 0
        if address(cd[((192 * idx) + cd[4] + 164)]) == address(cd[((192 * idx) + cd[4] + 196)]):
            revert with 0, 'Library Sort: IDENTICAL_ADDRESSES'
        if address(cd[((192 * idx) + cd[4] + 164)]) < address(cd[((192 * idx) + cd[4] + 196)]):
            if not address(cd[((192 * idx) + cd[4] + 164)]):
                revert with 0, 'Library Sort: ZERO_ADDRESS'
            require ext_code.size(address(cd[((192 * idx) + cd[4] + 100)]))
            staticcall address(cd[((192 * idx) + cd[4] + 100)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _167 = mem[_165]
            require mem[_165] == mem[_165 + 18 len 14]
            _169 = mem[_165 + 32]
            require mem[_165 + 32] == mem[_165 + 50 len 14]
            require mem[_165 + 64] == mem[_165 + 92 len 4]
            mem[_154 + 64] = address(cd[((192 * idx) + cd[4] + 100)])
            mem[_154 + 96] = cd[((192 * idx) + cd[4] + 132)]
            mem[_154 + 128] = address(cd[((192 * idx) + cd[4] + 164)])
            mem[_154 + 160] = address(cd[((192 * idx) + cd[4] + 196)])
            if address(cd[((192 * idx) + cd[4] + 164)]) == address(cd[((192 * idx) + cd[4] + 164)]):
                mem[_154] = Mask(112, 0, _167)
                mem[_154 + 32] = Mask(112, 0, _169)
            else:
                mem[_154] = Mask(112, 0, _169)
                mem[_154 + 32] = Mask(112, 0, _167)
        else:
            if not address(cd[((192 * idx) + cd[4] + 196)]):
                revert with 0, 'Library Sort: ZERO_ADDRESS'
            require ext_code.size(address(cd[((192 * idx) + cd[4] + 100)]))
            staticcall address(cd[((192 * idx) + cd[4] + 100)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _168 = mem[_166]
            require mem[_166] == mem[_166 + 18 len 14]
            _170 = mem[_166 + 32]
            require mem[_166 + 32] == mem[_166 + 50 len 14]
            require mem[_166 + 64] == mem[_166 + 92 len 4]
            mem[_154 + 64] = address(cd[((192 * idx) + cd[4] + 100)])
            mem[_154 + 96] = cd[((192 * idx) + cd[4] + 132)]
            mem[_154 + 128] = address(cd[((192 * idx) + cd[4] + 164)])
            mem[_154 + 160] = address(cd[((192 * idx) + cd[4] + 196)])
            if address(cd[((192 * idx) + cd[4] + 164)]) == address(cd[((192 * idx) + cd[4] + 196)]):
                mem[_154] = Mask(112, 0, _168)
                mem[_154 + 32] = Mask(112, 0, _170)
            else:
                mem[_154] = Mask(112, 0, _170)
                mem[_154 + 32] = Mask(112, 0, _168)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _154
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _144 = mem[64]
    mem[mem[64]] = 32
    _145 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _145:
        _177 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_177 + 50 len 14]
        mem[t + 64] = mem[_177 + 76 len 20]
        mem[t + 96] = mem[_177 + 96]
        mem[t + 128] = mem[_177 + 140 len 20]
        mem[t + 160] = mem[_177 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _144 + (192 * _145) + -mem[64] + 64
}

function getTokenInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[288]
    require mem[288] <= test266151307()
    require mem[288] + 319 < return_data.size + 288
    _6 = mem[mem[288] + 288]
    if mem[mem[288] + 288] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[288] + 288])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[288] + 288])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[288] + 288])) + 289
    mem[ceil32(return_data.size) + 288] = mem[mem[288] + 288]
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_6)] = mem[_5 + 320 len ceil32(_6)]
    if ceil32(_6) <= _6:
        mem[96] = ceil32(return_data.size) + 288
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_196]
        require mem[_196] <= test266151307()
        require _196 + mem[_196] + 31 < _196 + return_data.size
        _200 = mem[_196 + mem[_196]]
        if mem[_196 + mem[_196]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_196 + mem[_196]])) + 1 < 0 or _196 + ceil32(return_data.size) + ceil32(ceil32(mem[_196 + mem[_196]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _196 + ceil32(return_data.size) + ceil32(ceil32(mem[_196 + mem[_196]])) + 1
        mem[_196 + ceil32(return_data.size)] = _200
        require _198 + _200 + 32 <= return_data.size
        mem[_196 + ceil32(return_data.size) + 32 len ceil32(_200)] = mem[_196 + _198 + 32 len ceil32(_200)]
        if ceil32(_200) <= _200:
            mem[128] = _196 + ceil32(return_data.size)
            mem[160] = arg1
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_384] == mem[_384 + 31 len 1]
            mem[192] = mem[_384 + 31 len 1]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[224] = mem[_400]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[256] = mem[_416]
            _424 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 192
            _432 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_432)] = mem[ceil32(return_data.size) + 320 len ceil32(_432)]
            if ceil32(_432) <= _432:
                mem[mem[64] + 64] = ceil32(_432) + 224
                mem[ceil32(_432) + mem[64] + 256] = _200
                mem[ceil32(_432) + mem[64] + 288 len ceil32(_200)] = mem[_196 + ceil32(return_data.size) + 32 len ceil32(_200)]
                if ceil32(_200) > _200:
                    mem[_200 + ceil32(_432) + mem[64] + 288] = 0
                mem[mem[64] + 96] = uint64(arg1) << 96
                mem[mem[64] + 128] = mem[223 len 1]
                mem[mem[64] + 160] = mem[224]
                return 32, 192, 
                       ceil32(_432) + 224,
                       arg1 << 192,
                       mem[223 len 1],
                       mem[224],
                       mem[256],
                       mem[mem[64] + 224 len ceil32(_432) + 32],
                       _200,
                       mem[mem[64] + ceil32(_432) + 288 len ceil32(_200)]
            mem[_432 + mem[64] + 256] = 0
            mem[mem[64] + 64] = ceil32(_432) + 224
            mem[ceil32(_432) + _424 + 256] = _200
            mem[ceil32(_432) + _424 + 288 len ceil32(_200)] = mem[_196 + ceil32(return_data.size) + 32 len ceil32(_200)]
            if ceil32(_200) > _200:
                mem[_200 + ceil32(_432) + _424 + 288] = 0
            mem[_424 + 96] = uint64(arg1) << 96
            mem[_424 + 128] = mem[223 len 1]
            mem[_424 + 160] = mem[224]
            mem[_424 + 192] = mem[256]
            return memory
              from mem[64]
               len ceil32(_200) + ceil32(_432) + _424 + -mem[64] + 288
        mem[_200 + _196 + ceil32(return_data.size) + 32] = 0
        mem[128] = _196 + ceil32(return_data.size)
        mem[160] = arg1
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_385] == mem[_385 + 31 len 1]
        mem[192] = mem[_385 + 31 len 1]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _401 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_401]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _417 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_417]
        _425 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _433 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_433)] = mem[ceil32(return_data.size) + 320 len ceil32(_433)]
        if ceil32(_433) <= _433:
            mem[mem[64] + 64] = ceil32(_433) + 224
            mem[ceil32(_433) + mem[64] + 256] = _200
            mem[ceil32(_433) + mem[64] + 288 len ceil32(_200)] = mem[_196 + ceil32(return_data.size) + 32 len ceil32(_200)]
            if ceil32(_200) > _200:
                mem[_200 + ceil32(_433) + mem[64] + 288] = 0
            mem[mem[64] + 96] = uint64(arg1) << 96
            mem[mem[64] + 128] = mem[223 len 1]
            mem[mem[64] + 160] = mem[224]
            return 32, 192, 
                   ceil32(_433) + 224,
                   arg1 << 192,
                   mem[223 len 1],
                   mem[224],
                   mem[256],
                   mem[mem[64] + 224 len ceil32(_433) + 32],
                   _200,
                   mem[mem[64] + ceil32(_433) + 288 len ceil32(_200)]
        mem[_433 + mem[64] + 256] = 0
        mem[mem[64] + 64] = ceil32(_433) + 224
        mem[ceil32(_433) + _425 + 256] = _200
        mem[ceil32(_433) + _425 + 288 len ceil32(_200)] = mem[_196 + ceil32(return_data.size) + 32 len ceil32(_200)]
        if ceil32(_200) > _200:
            mem[_200 + ceil32(_433) + _425 + 288] = 0
        mem[_425 + 96] = uint64(arg1) << 96
        mem[_425 + 128] = mem[223 len 1]
        mem[_425 + 160] = mem[224]
        mem[_425 + 192] = mem[256]
        return memory
          from mem[64]
           len ceil32(_200) + ceil32(_433) + _425 + -mem[64] + 288
    mem[_6 + ceil32(return_data.size) + 320] = 0
    mem[96] = ceil32(return_data.size) + 288
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _197 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _199 = mem[_197]
    require mem[_197] <= test266151307()
    require _197 + mem[_197] + 31 < _197 + return_data.size
    _201 = mem[_197 + mem[_197]]
    if mem[_197 + mem[_197]] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_197 + mem[_197]])) + 1 < 0 or _197 + ceil32(return_data.size) + ceil32(ceil32(mem[_197 + mem[_197]])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _197 + ceil32(return_data.size) + ceil32(ceil32(mem[_197 + mem[_197]])) + 1
    mem[_197 + ceil32(return_data.size)] = _201
    require _199 + _201 + 32 <= return_data.size
    mem[_197 + ceil32(return_data.size) + 32 len ceil32(_201)] = mem[_197 + _199 + 32 len ceil32(_201)]
    if ceil32(_201) <= _201:
        mem[128] = _197 + ceil32(return_data.size)
        mem[160] = arg1
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_386] == mem[_386 + 31 len 1]
        mem[192] = mem[_386 + 31 len 1]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _402 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_402]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _418 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_418]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _434 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_434)] = mem[ceil32(return_data.size) + 320 len ceil32(_434)]
        if ceil32(_434) <= _434:
            mem[mem[64] + 64] = ceil32(_434) + 224
            mem[ceil32(_434) + mem[64] + 256] = _201
            mem[ceil32(_434) + mem[64] + 288 len ceil32(_201)] = mem[_197 + ceil32(return_data.size) + 32 len ceil32(_201)]
            if ceil32(_201) > _201:
                mem[_201 + ceil32(_434) + mem[64] + 288] = 0
            mem[mem[64] + 96] = uint64(arg1) << 96
            mem[mem[64] + 128] = mem[223 len 1]
            mem[mem[64] + 160] = mem[224]
            return 32, 192, 
                   ceil32(_434) + 224,
                   arg1 << 192,
                   mem[223 len 1],
                   mem[224],
                   mem[256],
                   mem[mem[64] + 224 len ceil32(_434) + 32],
                   _201,
                   mem[mem[64] + ceil32(_434) + 288 len ceil32(_201)]
        mem[_434 + mem[64] + 256] = 0
        mem[mem[64] + 64] = ceil32(_434) + 224
        mem[ceil32(_434) + mem[64] + 256] = _201
        mem[ceil32(_434) + mem[64] + 288 len ceil32(_201)] = mem[_197 + ceil32(return_data.size) + 32 len ceil32(_201)]
        if ceil32(_201) > _201:
            mem[_201 + ceil32(_434) + mem[64] + 288] = 0
        mem[mem[64] + 96] = uint64(arg1) << 96
        mem[mem[64] + 128] = mem[223 len 1]
        mem[mem[64] + 160] = mem[224]
        return 32, 192, 
               ceil32(_434) + 224,
               arg1 << 192,
               mem[223 len 1],
               mem[224],
               mem[256],
               mem[mem[64] + 224 len _434 + 32],
               0,
               mem[mem[64] + _434 + 288 len ceil32(_201) + ceil32(_434) - _434]
    mem[_201 + _197 + ceil32(return_data.size) + 32] = 0
    mem[128] = _197 + ceil32(return_data.size)
    mem[160] = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _387 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_387] == mem[_387 + 31 len 1]
    mem[192] = mem[_387 + 31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _403 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[224] = mem[_403]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _419 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[256] = mem[_419]
    _427 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 192
    _435 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 256 len ceil32(_435)] = mem[ceil32(return_data.size) + 320 len ceil32(_435)]
    if ceil32(_435) <= _435:
        mem[mem[64] + 64] = ceil32(_435) + 224
        mem[ceil32(_435) + mem[64] + 256] = _201
        mem[ceil32(_435) + mem[64] + 288 len ceil32(_201)] = mem[_197 + ceil32(return_data.size) + 32 len ceil32(_201)]
        if ceil32(_201) > _201:
            mem[_201 + ceil32(_435) + mem[64] + 288] = 0
        mem[mem[64] + 96] = uint64(arg1) << 96
        mem[mem[64] + 128] = mem[223 len 1]
        mem[mem[64] + 160] = mem[224]
        return 32, 192, 
               ceil32(_435) + 224,
               arg1 << 192,
               mem[223 len 1],
               mem[224],
               mem[256],
               mem[mem[64] + 224 len ceil32(_435) + 32],
               _201,
               mem[mem[64] + ceil32(_435) + 288 len ceil32(_201)]
    mem[_435 + mem[64] + 256] = 0
    mem[mem[64] + 64] = ceil32(_435) + 224
    mem[ceil32(_435) + _427 + 256] = _201
    mem[ceil32(_435) + _427 + 288 len ceil32(_201)] = mem[_197 + ceil32(return_data.size) + 32 len ceil32(_201)]
    if ceil32(_201) > _201:
        mem[_201 + ceil32(_435) + _427 + 288] = 0
    mem[_427 + 96] = uint64(arg1) << 96
    mem[_427 + 128] = mem[223 len 1]
    mem[_427 + 160] = mem[224]
    mem[_427 + 192] = mem[256]
    return memory
      from mem[64]
       len ceil32(_201) + ceil32(_435) + _427 + -mem[64] + 288
}

function sub_b39c5e65(?) {
    require calldata.size - 4 >= 128
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg2.length < 2:
        revert with 0, 'Library: INVALID_PATH'
    if arg2.length > test266151307():
        revert with 0, 65
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = arg2.length
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224
    if not arg2.length:
        if 0 < arg2.length:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = arg1
            if var128001 < 1:
                revert with 0, 17
            if var132002 >= var132001:
                mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 32
                mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 256] = arg2.length
                mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 288 len 32 * arg2.length] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length]
                return memory
                  from (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224
                   len (161 * arg2.length) + 64
            if var134001 < arg3.length:
                if var136006 < arg2.length:
                    if 1 > !var140002:
                        revert with 0, 17
                    idx = var142003 + 1
                    s = var142006
                    t = var142007
                    u = var142011
                    while idx < arg2.length:
                        _5125 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'Library Sort: ZERO_ADDRESS'
                            require ext_code.size(address(t))
                            staticcall address(t).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5147] == mem[_5147 + 18 len 14]
                            require mem[_5147 + 32] == mem[_5147 + 50 len 14]
                            require mem[_5147 + 64] == mem[_5147 + 92 len 4]
                            if u >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            if u >= mem[(32 * arg3.length) + (32 * arg2.length) + 160]:
                                revert with 0, 50
                            if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if mem[_5147 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_5147 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 17
                                if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                    if not mem[_5147 + 50 len 14]:
                                        if mem[_5147 + 18 len 14] and 10000 > -1 / mem[_5147 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_5147 + 18 len 14] / 10000 != mem[_5147 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_5147 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_5147 + 18 len 14] < 10000 * mem[_5147 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_5147 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5147 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[(32 * arg2.length) + 128]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                            u = u + 1
                                            continue 
                                        _5491 = mem[64]
                                        mem[mem[64]] = 32
                                        _5507 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                        mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                        while idx < _5507:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _5491 + (32 * _5507) + -mem[64] + 64
                                    if False and mem[_5147 + 50 len 14] > 0:
                                        revert with 0, 17
                                    if not mem[_5147 + 50 len 14]:
                                        revert with 0, 18
                                    if 0 / mem[_5147 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_5147 + 18 len 14] and 10000 > -1 / mem[_5147 + 18 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5147 + 18 len 14] / 10000 != mem[_5147 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5147 + 18 len 14] > -1:
                                        revert with 0, 17
                                    if 10000 * mem[_5147 + 18 len 14] < 10000 * mem[_5147 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_5147 + 18 len 14]:
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5147 + 18 len 14]
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5603 = mem[64]
                                    mem[mem[64]] = 32
                                    _5635 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5635:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5603 + (32 * _5635) + -mem[64] + 64
                                if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                    revert with 0, 17
                                if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                    revert with 0, 18
                                if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_5147 + 50 len 14]:
                                    if mem[_5147 + 18 len 14] and 10000 > -1 / mem[_5147 + 18 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5147 + 18 len 14] / 10000 != mem[_5147 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5147 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                        revert with 0, 17
                                    if (10000 * mem[_5147 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5147 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_5147 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5147 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5605 = mem[64]
                                    mem[mem[64]] = 32
                                    _5636 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5636:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5605 + (32 * _5636) + -mem[64] + 64
                                if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5147 + 50 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 17
                                if not mem[_5147 + 50 len 14]:
                                    revert with 0, 18
                                if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 50 len 14]) / mem[_5147 + 50 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_5147 + 18 len 14] and 10000 > -1 / mem[_5147 + 18 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5147 + 18 len 14] / 10000 != mem[_5147 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5147 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                    revert with 0, 17
                                if (10000 * mem[_5147 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5147 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_5147 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 50 len 14]) / (10000 * mem[_5147 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5715 = mem[64]
                                mem[mem[64]] = 32
                                _5731 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5731:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5715 + (32 * _5731) + -mem[64] + 64
                            if mem[_5147 + 50 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_5147 + 18 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 17
                            if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                                revert with 0, 'ds-math-sub-underflow'
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                if not mem[_5147 + 18 len 14]:
                                    if mem[_5147 + 50 len 14] and 10000 > -1 / mem[_5147 + 50 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5147 + 50 len 14] / 10000 != mem[_5147 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5147 + 50 len 14] > -1:
                                        revert with 0, 17
                                    if 10000 * mem[_5147 + 50 len 14] < 10000 * mem[_5147 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_5147 + 50 len 14]:
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5147 + 50 len 14]
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5493 = mem[64]
                                    mem[mem[64]] = 32
                                    _5510 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5510:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5493 + (32 * _5510) + -mem[64] + 64
                                if False and mem[_5147 + 18 len 14] > 0:
                                    revert with 0, 17
                                if not mem[_5147 + 18 len 14]:
                                    revert with 0, 18
                                if 0 / mem[_5147 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_5147 + 50 len 14] and 10000 > -1 / mem[_5147 + 50 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5147 + 50 len 14] / 10000 != mem[_5147 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5147 + 50 len 14] > -1:
                                    revert with 0, 17
                                if 10000 * mem[_5147 + 50 len 14] < 10000 * mem[_5147 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_5147 + 50 len 14]:
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5147 + 50 len 14]
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5607 = mem[64]
                                mem[mem[64]] = 32
                                _5638 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5638:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5607 + (32 * _5638) + -mem[64] + 64
                            if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 17
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_5147 + 18 len 14]:
                                if mem[_5147 + 50 len 14] and 10000 > -1 / mem[_5147 + 50 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5147 + 50 len 14] / 10000 != mem[_5147 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5147 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                    revert with 0, 17
                                if (10000 * mem[_5147 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5147 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_5147 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5147 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5609 = mem[64]
                                mem[mem[64]] = 32
                                _5639 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5639:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5609 + (32 * _5639) + -mem[64] + 64
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5147 + 18 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 17
                            if not mem[_5147 + 18 len 14]:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 18 len 14]) / mem[_5147 + 18 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_5147 + 50 len 14] and 10000 > -1 / mem[_5147 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5147 + 50 len 14] / 10000 != mem[_5147 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5147 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                revert with 0, 17
                            if (10000 * mem[_5147 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5147 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_5147 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5147 + 18 len 14]) / (10000 * mem[_5147 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5717 = mem[64]
                            mem[mem[64]] = 32
                            _5732 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5732:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5717 + (32 * _5732) + -mem[64] + 64
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require ext_code.size(address(t))
                        staticcall address(t).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5148 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5148] == mem[_5148 + 18 len 14]
                        require mem[_5148 + 32] == mem[_5148 + 50 len 14]
                        require mem[_5148 + 64] == mem[_5148 + 92 len 4]
                        if u >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                            revert with 0, 50
                        if u >= mem[(32 * arg3.length) + (32 * arg2.length) + 160]:
                            revert with 0, 50
                        if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] <= 0:
                            revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_5125):
                            if mem[_5148 + 18 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_5148 + 50 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 17
                            if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                                revert with 0, 'ds-math-sub-underflow'
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                if not mem[_5148 + 50 len 14]:
                                    if mem[_5148 + 18 len 14] and 10000 > -1 / mem[_5148 + 18 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5148 + 18 len 14] / 10000 != mem[_5148 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5148 + 18 len 14] > -1:
                                        revert with 0, 17
                                    if 10000 * mem[_5148 + 18 len 14] < 10000 * mem[_5148 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_5148 + 18 len 14]:
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5148 + 18 len 14]
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5495 = mem[64]
                                    mem[mem[64]] = 32
                                    _5513 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5513:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5495 + (32 * _5513) + -mem[64] + 64
                                if False and mem[_5148 + 50 len 14] > 0:
                                    revert with 0, 17
                                if not mem[_5148 + 50 len 14]:
                                    revert with 0, 18
                                if 0 / mem[_5148 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_5148 + 18 len 14] and 10000 > -1 / mem[_5148 + 18 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5148 + 18 len 14] / 10000 != mem[_5148 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5148 + 18 len 14] > -1:
                                    revert with 0, 17
                                if 10000 * mem[_5148 + 18 len 14] < 10000 * mem[_5148 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_5148 + 18 len 14]:
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5148 + 18 len 14]
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5611 = mem[64]
                                mem[mem[64]] = 32
                                _5641 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5641:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5611 + (32 * _5641) + -mem[64] + 64
                            if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 17
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_5148 + 50 len 14]:
                                if mem[_5148 + 18 len 14] and 10000 > -1 / mem[_5148 + 18 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5148 + 18 len 14] / 10000 != mem[_5148 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5148 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                    revert with 0, 17
                                if (10000 * mem[_5148 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5148 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_5148 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5148 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5613 = mem[64]
                                mem[mem[64]] = 32
                                _5642 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5642:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5613 + (32 * _5642) + -mem[64] + 64
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5148 + 50 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 17
                            if not mem[_5148 + 50 len 14]:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 50 len 14]) / mem[_5148 + 50 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_5148 + 18 len 14] and 10000 > -1 / mem[_5148 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5148 + 18 len 14] / 10000 != mem[_5148 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5148 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                revert with 0, 17
                            if (10000 * mem[_5148 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5148 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_5148 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 50 len 14]) / (10000 * mem[_5148 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5719 = mem[64]
                            mem[mem[64]] = 32
                            _5733 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5733:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5719 + (32 * _5733) + -mem[64] + 64
                        if mem[_5148 + 50 len 14] <= 0:
                            revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_5148 + 18 len 14] <= 0:
                            revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                            revert with 0, 17
                        if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                            if not mem[_5148 + 18 len 14]:
                                if mem[_5148 + 50 len 14] and 10000 > -1 / mem[_5148 + 50 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5148 + 50 len 14] / 10000 != mem[_5148 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5148 + 50 len 14] > -1:
                                    revert with 0, 17
                                if 10000 * mem[_5148 + 50 len 14] < 10000 * mem[_5148 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_5148 + 50 len 14]:
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5148 + 50 len 14]
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5497 = mem[64]
                                mem[mem[64]] = 32
                                _5516 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5516:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5497 + (32 * _5516) + -mem[64] + 64
                            if False and mem[_5148 + 18 len 14] > 0:
                                revert with 0, 17
                            if not mem[_5148 + 18 len 14]:
                                revert with 0, 18
                            if 0 / mem[_5148 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_5148 + 50 len 14] and 10000 > -1 / mem[_5148 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5148 + 50 len 14] / 10000 != mem[_5148 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5148 + 50 len 14] > -1:
                                revert with 0, 17
                            if 10000 * mem[_5148 + 50 len 14] < 10000 * mem[_5148 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_5148 + 50 len 14]:
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5148 + 50 len 14]
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5615 = mem[64]
                            mem[mem[64]] = 32
                            _5644 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5644:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5615 + (32 * _5644) + -mem[64] + 64
                        if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                            revert with 0, 17
                        if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                            revert with 0, 18
                        if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_5148 + 18 len 14]:
                            if mem[_5148 + 50 len 14] and 10000 > -1 / mem[_5148 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5148 + 50 len 14] / 10000 != mem[_5148 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5148 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                revert with 0, 17
                            if (10000 * mem[_5148 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5148 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_5148 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5148 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5617 = mem[64]
                            mem[mem[64]] = 32
                            _5645 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5645:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5617 + (32 * _5645) + -mem[64] + 64
                        if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5148 + 18 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                            revert with 0, 17
                        if not mem[_5148 + 18 len 14]:
                            revert with 0, 18
                        if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 18 len 14]) / mem[_5148 + 18 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_5148 + 50 len 14] and 10000 > -1 / mem[_5148 + 50 len 14]:
                            revert with 0, 17
                        if 10000 * mem[_5148 + 50 len 14] / 10000 != mem[_5148 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_5148 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                            revert with 0, 17
                        if (10000 * mem[_5148 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5148 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[_5148 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                            revert with 0, 18
                        if 1 > !u:
                            revert with 0, 17
                        if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                            revert with 0, 50
                        mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5148 + 18 len 14]) / (10000 * mem[_5148 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                        if u == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if u + 1 < mem[96] - 1:
                            if u + 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if u + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 1) + 128]
                            t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                            u = u + 1
                            continue 
                        _5721 = mem[64]
                        mem[mem[64]] = 32
                        _5734 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                        mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                        idx = 0
                        s = mem[64] + 64
                        t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                        while idx < _5734:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _5721 + (32 * _5734) + -mem[64] + 64
    else:
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        if 0 < arg2.length:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = arg1
            if var129001 < 1:
                revert with 0, 17
            if var133002 >= var133001:
                mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 32
                mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 256] = arg2.length
                mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 288 len 32 * arg2.length] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length]
                return memory
                  from (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224
                   len (161 * arg2.length) + 64
            if var135001 < arg3.length:
                if var137006 < arg2.length:
                    if 1 > !var141002:
                        revert with 0, 17
                    idx = var143003 + 1
                    s = var143006
                    t = var143007
                    u = var143011
                    while idx < arg2.length:
                        _5126 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'Library Sort: ZERO_ADDRESS'
                            require ext_code.size(address(t))
                            staticcall address(t).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5149] == mem[_5149 + 18 len 14]
                            require mem[_5149 + 32] == mem[_5149 + 50 len 14]
                            require mem[_5149 + 64] == mem[_5149 + 92 len 4]
                            if u >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            if u >= mem[(32 * arg3.length) + (32 * arg2.length) + 160]:
                                revert with 0, 50
                            if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if mem[_5149 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_5149 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 17
                                if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                    if not mem[_5149 + 50 len 14]:
                                        if mem[_5149 + 18 len 14] and 10000 > -1 / mem[_5149 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_5149 + 18 len 14] / 10000 != mem[_5149 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_5149 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_5149 + 18 len 14] < 10000 * mem[_5149 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_5149 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5149 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[(32 * arg2.length) + 128]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                            u = u + 1
                                            continue 
                                        _5499 = mem[64]
                                        mem[mem[64]] = 32
                                        _5519 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                        mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                        while idx < _5519:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _5499 + (32 * _5519) + -mem[64] + 64
                                    if False and mem[_5149 + 50 len 14] > 0:
                                        revert with 0, 17
                                    if not mem[_5149 + 50 len 14]:
                                        revert with 0, 18
                                    if 0 / mem[_5149 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_5149 + 18 len 14] and 10000 > -1 / mem[_5149 + 18 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5149 + 18 len 14] / 10000 != mem[_5149 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5149 + 18 len 14] > -1:
                                        revert with 0, 17
                                    if 10000 * mem[_5149 + 18 len 14] < 10000 * mem[_5149 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_5149 + 18 len 14]:
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5149 + 18 len 14]
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5619 = mem[64]
                                    mem[mem[64]] = 32
                                    _5647 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5647:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5619 + (32 * _5647) + -mem[64] + 64
                                if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                    revert with 0, 17
                                if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                    revert with 0, 18
                                if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_5149 + 50 len 14]:
                                    if mem[_5149 + 18 len 14] and 10000 > -1 / mem[_5149 + 18 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5149 + 18 len 14] / 10000 != mem[_5149 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5149 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                        revert with 0, 17
                                    if (10000 * mem[_5149 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5149 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_5149 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5149 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5621 = mem[64]
                                    mem[mem[64]] = 32
                                    _5648 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5648:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5621 + (32 * _5648) + -mem[64] + 64
                                if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5149 + 50 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 17
                                if not mem[_5149 + 50 len 14]:
                                    revert with 0, 18
                                if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 50 len 14]) / mem[_5149 + 50 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_5149 + 18 len 14] and 10000 > -1 / mem[_5149 + 18 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5149 + 18 len 14] / 10000 != mem[_5149 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5149 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                    revert with 0, 17
                                if (10000 * mem[_5149 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5149 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_5149 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 50 len 14]) / (10000 * mem[_5149 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5723 = mem[64]
                                mem[mem[64]] = 32
                                _5735 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5735:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5723 + (32 * _5735) + -mem[64] + 64
                            if mem[_5149 + 50 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_5149 + 18 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 17
                            if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                                revert with 0, 'ds-math-sub-underflow'
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                if not mem[_5149 + 18 len 14]:
                                    if mem[_5149 + 50 len 14] and 10000 > -1 / mem[_5149 + 50 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5149 + 50 len 14] / 10000 != mem[_5149 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5149 + 50 len 14] > -1:
                                        revert with 0, 17
                                    if 10000 * mem[_5149 + 50 len 14] < 10000 * mem[_5149 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_5149 + 50 len 14]:
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5149 + 50 len 14]
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5501 = mem[64]
                                    mem[mem[64]] = 32
                                    _5522 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5522:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5501 + (32 * _5522) + -mem[64] + 64
                                if False and mem[_5149 + 18 len 14] > 0:
                                    revert with 0, 17
                                if not mem[_5149 + 18 len 14]:
                                    revert with 0, 18
                                if 0 / mem[_5149 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_5149 + 50 len 14] and 10000 > -1 / mem[_5149 + 50 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5149 + 50 len 14] / 10000 != mem[_5149 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5149 + 50 len 14] > -1:
                                    revert with 0, 17
                                if 10000 * mem[_5149 + 50 len 14] < 10000 * mem[_5149 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_5149 + 50 len 14]:
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5149 + 50 len 14]
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5623 = mem[64]
                                mem[mem[64]] = 32
                                _5650 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5650:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5623 + (32 * _5650) + -mem[64] + 64
                            if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 17
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_5149 + 18 len 14]:
                                if mem[_5149 + 50 len 14] and 10000 > -1 / mem[_5149 + 50 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5149 + 50 len 14] / 10000 != mem[_5149 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5149 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                    revert with 0, 17
                                if (10000 * mem[_5149 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5149 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_5149 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5149 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5625 = mem[64]
                                mem[mem[64]] = 32
                                _5651 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5651:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5625 + (32 * _5651) + -mem[64] + 64
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5149 + 18 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 17
                            if not mem[_5149 + 18 len 14]:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 18 len 14]) / mem[_5149 + 18 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_5149 + 50 len 14] and 10000 > -1 / mem[_5149 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5149 + 50 len 14] / 10000 != mem[_5149 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5149 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                revert with 0, 17
                            if (10000 * mem[_5149 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5149 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_5149 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5149 + 18 len 14]) / (10000 * mem[_5149 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5725 = mem[64]
                            mem[mem[64]] = 32
                            _5736 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5736:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5725 + (32 * _5736) + -mem[64] + 64
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require ext_code.size(address(t))
                        staticcall address(t).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5150 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5150] == mem[_5150 + 18 len 14]
                        require mem[_5150 + 32] == mem[_5150 + 50 len 14]
                        require mem[_5150 + 64] == mem[_5150 + 92 len 4]
                        if u >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                            revert with 0, 50
                        if u >= mem[(32 * arg3.length) + (32 * arg2.length) + 160]:
                            revert with 0, 50
                        if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] <= 0:
                            revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_5126):
                            if mem[_5150 + 18 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_5150 + 50 len 14] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 17
                            if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                                revert with 0, 'ds-math-sub-underflow'
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                if not mem[_5150 + 50 len 14]:
                                    if mem[_5150 + 18 len 14] and 10000 > -1 / mem[_5150 + 18 len 14]:
                                        revert with 0, 17
                                    if 10000 * mem[_5150 + 18 len 14] / 10000 != mem[_5150 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_5150 + 18 len 14] > -1:
                                        revert with 0, 17
                                    if 10000 * mem[_5150 + 18 len 14] < 10000 * mem[_5150 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_5150 + 18 len 14]:
                                        revert with 0, 18
                                    if 1 > !u:
                                        revert with 0, 17
                                    if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5150 + 18 len 14]
                                    if u == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if u + 1 < mem[96] - 1:
                                        if u + 1 >= mem[(32 * arg2.length) + 128]:
                                            revert with 0, 50
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + 128]
                                        t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                        u = u + 1
                                        continue 
                                    _5503 = mem[64]
                                    mem[mem[64]] = 32
                                    _5525 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                    idx = 0
                                    s = mem[64] + 64
                                    t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                    while idx < _5525:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _5503 + (32 * _5525) + -mem[64] + 64
                                if False and mem[_5150 + 50 len 14] > 0:
                                    revert with 0, 17
                                if not mem[_5150 + 50 len 14]:
                                    revert with 0, 18
                                if 0 / mem[_5150 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_5150 + 18 len 14] and 10000 > -1 / mem[_5150 + 18 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5150 + 18 len 14] / 10000 != mem[_5150 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5150 + 18 len 14] > -1:
                                    revert with 0, 17
                                if 10000 * mem[_5150 + 18 len 14] < 10000 * mem[_5150 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_5150 + 18 len 14]:
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5150 + 18 len 14]
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5627 = mem[64]
                                mem[mem[64]] = 32
                                _5653 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5653:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5627 + (32 * _5653) + -mem[64] + 64
                            if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 17
                            if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_5150 + 50 len 14]:
                                if mem[_5150 + 18 len 14] and 10000 > -1 / mem[_5150 + 18 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5150 + 18 len 14] / 10000 != mem[_5150 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5150 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                    revert with 0, 17
                                if (10000 * mem[_5150 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5150 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_5150 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5150 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5629 = mem[64]
                                mem[mem[64]] = 32
                                _5654 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5654:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5629 + (32 * _5654) + -mem[64] + 64
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5150 + 50 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 17
                            if not mem[_5150 + 50 len 14]:
                                revert with 0, 18
                            if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 50 len 14]) / mem[_5150 + 50 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_5150 + 18 len 14] and 10000 > -1 / mem[_5150 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5150 + 18 len 14] / 10000 != mem[_5150 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5150 + 18 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                revert with 0, 17
                            if (10000 * mem[_5150 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5150 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_5150 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 50 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 50 len 14]) / (10000 * mem[_5150 + 18 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5727 = mem[64]
                            mem[mem[64]] = 32
                            _5737 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5737:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5727 + (32 * _5737) + -mem[64] + 64
                        if mem[_5150 + 50 len 14] <= 0:
                            revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_5150 + 18 len 14] <= 0:
                            revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                            revert with 0, 17
                        if -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > 10000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                            if not mem[_5150 + 18 len 14]:
                                if mem[_5150 + 50 len 14] and 10000 > -1 / mem[_5150 + 50 len 14]:
                                    revert with 0, 17
                                if 10000 * mem[_5150 + 50 len 14] / 10000 != mem[_5150 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_5150 + 50 len 14] > -1:
                                    revert with 0, 17
                                if 10000 * mem[_5150 + 50 len 14] < 10000 * mem[_5150 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_5150 + 50 len 14]:
                                    revert with 0, 18
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 50
                                mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5150 + 50 len 14]
                                if u == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if u + 1 < mem[96] - 1:
                                    if u + 1 >= mem[(32 * arg2.length) + 128]:
                                        revert with 0, 50
                                    if u + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = mem[(32 * u + 1) + 128]
                                    t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                    u = u + 1
                                    continue 
                                _5505 = mem[64]
                                mem[mem[64]] = 32
                                _5528 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                idx = 0
                                s = mem[64] + 64
                                t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                                while idx < _5528:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _5505 + (32 * _5528) + -mem[64] + 64
                            if False and mem[_5150 + 18 len 14] > 0:
                                revert with 0, 17
                            if not mem[_5150 + 18 len 14]:
                                revert with 0, 18
                            if 0 / mem[_5150 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_5150 + 50 len 14] and 10000 > -1 / mem[_5150 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5150 + 50 len 14] / 10000 != mem[_5150 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5150 + 50 len 14] > -1:
                                revert with 0, 17
                            if 10000 * mem[_5150 + 50 len 14] < 10000 * mem[_5150 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_5150 + 50 len 14]:
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / 10000 * mem[_5150 + 50 len 14]
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5631 = mem[64]
                            mem[mem[64]] = 32
                            _5656 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5656:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5631 + (32 * _5656) + -mem[64] + 64
                        if mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] and -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 > -1 / mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                            revert with 0, 17
                        if not -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000:
                            revert with 0, 18
                        if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) / -mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] + 10000 != mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_5150 + 18 len 14]:
                            if mem[_5150 + 50 len 14] and 10000 > -1 / mem[_5150 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_5150 + 50 len 14] / 10000 != mem[_5150 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_5150 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                                revert with 0, 17
                            if (10000 * mem[_5150 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5150 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_5150 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                                revert with 0, 18
                            if 1 > !u:
                                revert with 0, 17
                            if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                                revert with 0, 50
                            mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = 0 / (10000 * mem[_5150 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[(32 * arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                                u = u + 1
                                continue 
                            _5633 = mem[64]
                            mem[mem[64]] = 32
                            _5657 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                            idx = 0
                            s = mem[64] + 64
                            t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                            while idx < _5657:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _5633 + (32 * _5657) + -mem[64] + 64
                        if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) and mem[_5150 + 18 len 14] > -1 / (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                            revert with 0, 17
                        if not mem[_5150 + 18 len 14]:
                            revert with 0, 18
                        if (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 18 len 14]) / mem[_5150 + 18 len 14] != (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_5150 + 50 len 14] and 10000 > -1 / mem[_5150 + 50 len 14]:
                            revert with 0, 17
                        if 10000 * mem[_5150 + 50 len 14] / 10000 != mem[_5150 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_5150 + 50 len 14] > !((10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])):
                            revert with 0, 17
                        if (10000 * mem[_5150 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) < 10000 * mem[_5150 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[_5150 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]):
                            revert with 0, 18
                        if 1 > !u:
                            revert with 0, 17
                        if u + 1 >= mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]:
                            revert with 0, 50
                        mem[(32 * u + 1) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 18 len 14]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] * mem[_5150 + 18 len 14]) / (10000 * mem[_5150 + 50 len 14]) + (10000 * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]) - (mem[(32 * u) + (32 * arg3.length) + (32 * arg2.length) + 192] * mem[(32 * u) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224])
                        if u == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if u + 1 < mem[96] - 1:
                            if u + 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if u + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 1) + 128]
                            t = mem[(32 * u + 1) + (32 * arg2.length) + 160]
                            u = u + 1
                            continue 
                        _5729 = mem[64]
                        mem[mem[64]] = 32
                        _5738 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                        mem[mem[64] + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                        idx = 0
                        s = mem[64] + 64
                        t = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
                        while idx < _5738:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _5729 + (32 * _5738) + -mem[64] + 64
    revert with 0, 50
}

function sub_ee14aafe(?) {
    require calldata.size - 4 >= 192
    require arg3 == address(arg3)
    if arg1 <= 0:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pancake: INSUFFICIENT_OUTPUT_AMOUNT'
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 >= ext_call.return_data[18 len 14]:
        revert with 0, 'Pancake: INSUFFICIENT_LIQUIDITY'
    if arg2 >= ext_call.return_data[50 len 14]:
        revert with 0, 'Pancake: INSUFFICIENT_LIQUIDITY'
    require ext_code.size(address(arg3))
    staticcall address(arg3).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 17
    if arg5:
        if ext_call.return_data[0] - arg1 > -1:
            revert with 0, 17
        if ext_call.return_data[0] < arg2:
            revert with 0, 17
        if arg5 != 1:
            if ext_call.return_data[0] - arg2 > -1:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) < arg1:
                revert with 0, 17
            if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if arg4:
                    if False and arg4 > 0:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if 0 / arg4:
                        revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                    revert with 0, 17
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) < 0:
                    revert with 0, 17
                if not arg4:
                    if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                else:
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                        revert with 0, 17
                    if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
            else:
                if Mask(112, 0, ext_call.return_data[0]) < arg1:
                    revert with 0, 17
                if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[32]):
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < 0:
                            revert with 0, 17
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                else:
                    if Mask(112, 0, ext_call.return_data[32]) < arg2:
                        revert with 0, 17
                    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < 0:
                            revert with 0, 17
                        if not arg4:
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if not arg4:
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
        else:
            if ext_call.return_data[0] - arg2 > !arg6:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) < arg1:
                revert with 0, 17
            if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 <= Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 < Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if arg4:
                    if False and arg4 > 0:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if 0 / arg4:
                        revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                    revert with 0, 17
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) < 0:
                    revert with 0, 17
                if not arg4:
                    if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                else:
                    if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                        revert with 0, 17
                    if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
            else:
                if Mask(112, 0, ext_call.return_data[0]) < arg1:
                    revert with 0, 17
                if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 <= Mask(112, 0, ext_call.return_data[32]):
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < 0:
                            revert with 0, 17
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                else:
                    if Mask(112, 0, ext_call.return_data[32]) < arg2:
                        revert with 0, 17
                    if ext_call.return_data[0] + arg6 < Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < 0:
                            revert with 0, 17
                        if not arg4:
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 and 10000 > -1 / ext_call.return_data[0] - arg1:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) / 10000 != ext_call.return_data[0] - arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if not arg4:
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
    else:
        if ext_call.return_data[0] - arg1 > !arg6:
            revert with 0, 17
        if ext_call.return_data[0] < arg2:
            revert with 0, 17
        if arg5 != 1:
            if ext_call.return_data[0] - arg2 > -1:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) < arg1:
                revert with 0, 17
            if ext_call.return_data[0] + arg6 <= Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if arg4:
                    if False and arg4 > 0:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if 0 / arg4:
                        revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                    revert with 0, 17
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < 0:
                    revert with 0, 17
                if not arg4:
                    if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                else:
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                        revert with 0, 17
                    if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
            else:
                if Mask(112, 0, ext_call.return_data[0]) < arg1:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 < Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[32]):
                    if Mask(144, 112, ext_call.return_data[0]) + arg6 <= 0:
                        revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) + arg6 and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                else:
                    if Mask(112, 0, ext_call.return_data[32]) < arg2:
                        revert with 0, 17
                    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(144, 112, ext_call.return_data[0]) + arg6 <= 0:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if not arg4:
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) + arg6 and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if not arg4:
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 and 10000 > -1 / ext_call.return_data[0] - arg2:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) / 10000 != ext_call.return_data[0] - arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) < (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) - (ext_call.return_data[0] * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
        else:
            if ext_call.return_data[0] - arg2 > !arg6:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) < arg1:
                revert with 0, 17
            if ext_call.return_data[0] + arg6 <= Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 <= Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 < Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                if arg4:
                    if False and arg4 > 0:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if 0 / arg4:
                        revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                    revert with 0, 17
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < 0:
                    revert with 0, 17
                if not arg4:
                    if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                else:
                    if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                        revert with 0, 17
                    if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 0:
                                return 0
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                            if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
                        else:
                            if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 18
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                return 0
            else:
                if Mask(112, 0, ext_call.return_data[0]) < arg1:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 < Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) < arg2:
                    revert with 0, 17
                if ext_call.return_data[0] + arg6 <= Mask(112, 0, ext_call.return_data[32]):
                    if Mask(144, 112, ext_call.return_data[0]) + arg6 <= 0:
                        revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) + arg6 and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if arg4:
                            if False and arg4 > 0:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if 0 / arg4:
                                revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                    return 0
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                            else:
                                if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    revert with 0, 18
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    return 0
                else:
                    if Mask(112, 0, ext_call.return_data[32]) < arg2:
                        revert with 0, 17
                    if ext_call.return_data[0] + arg6 < Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(144, 112, ext_call.return_data[0]) + arg6 <= 0:
                        if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT'
                    if not arg4:
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < 0:
                            revert with 0, 17
                        if not arg4:
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) + arg6 and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) / arg4 != Mask(144, 112, ext_call.return_data[0]) + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0] - arg1 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 17
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg1 + arg6:
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
                            revert with 0, 17
                        if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if not arg4:
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < 0:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                        else:
                            if ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) / arg4 != ext_call.return_data[0] + arg6 - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[0] - arg2 + arg6 and 10000 > -1 / ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 17
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) / 10000 != ext_call.return_data[0] - arg2 + arg6:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) < (ext_call.return_data[0] * arg4) + (arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                revert with 0, 17
                            if (-1 * ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) + (arg6 * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) + (arg6 * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 0:
                                        return 0
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                    if 0 < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
                                else:
                                    if (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4) and (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) > -1 / (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 17
                                    if not (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4):
                                        revert with 0, 18
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) + (arg6 * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) / (10000 * ext_call.return_data[0]) - (10000 * arg2) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4) != (10000 * ext_call.return_data[0]) - (10000 * arg1) + (10000 * arg6) - (ext_call.return_data[0] * arg4) - (arg6 * arg4) + (Mask(112, 0, ext_call.return_data[0]) * arg4):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 10^6 * arg2 * ext_call.return_data[0]) + (100 * 10^6 * arg6 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * arg4 * ext_call.return_data[0]) - (10000 * arg6 * arg4 * ext_call.return_data[0]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0]) - (100 * 10^6 * ext_call.return_data[0] * arg1) + (100 * 10^6 * arg2 * arg1) - (100 * 10^6 * arg6 * arg1) + (10000 * ext_call.return_data[0] * arg4 * arg1) + (10000 * arg6 * arg4 * arg1) - (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg1) + (100 * 10^6 * ext_call.return_data[0] * arg6) - (100 * 10^6 * arg2 * arg6) + (100 * 10^6 * arg6 * arg6) - (10000 * ext_call.return_data[0] * arg4 * arg6) - (10000 * arg6 * arg4 * arg6) + (10000 * Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6) - (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * arg2 * ext_call.return_data[0] * arg4) - (10000 * arg6 * ext_call.return_data[0] * arg4) + (ext_call.return_data[0] * arg4 * ext_call.return_data[0] * arg4) + (arg6 * arg4 * ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * ext_call.return_data[0] * arg4) - (10000 * ext_call.return_data[0] * arg6 * arg4) + (10000 * arg2 * arg6 * arg4) - (10000 * arg6 * arg6 * arg4) + (ext_call.return_data[0] * arg4 * arg6 * arg4) + (arg6 * arg4 * arg6 * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * arg6 * arg4) + (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * arg4) - (10000 * arg2 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (10000 * arg6 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) - (arg6 * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) + (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0]) * arg4) < 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                                        return 0
    return 1
}

function sub_a92dd379(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Only Owner Allowed'
    require ('cd', 100).length >= 128
    require ('cd', 100)[1] <= test266151307()
    require cd[100] + ('cd', 100)[1] + 67 < cd[100] + ('cd', 100).length + 36
    if cd[(cd[100] + ('cd', 100)[1] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97 < 96 or ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[96] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    require ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    idx = 0
    s = cd[100] + ('cd', 100)[1] + 68
    t = 128
    while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[2] <= test266151307()
    require cd[100] + ('cd', 100)[2] + 67 < cd[100] + ('cd', 100).length + 36
    if cd[(cd[100] + ('cd', 100)[2] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98 < 97 or ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    require ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
    idx = 0
    s = cd[100] + ('cd', 100)[2] + 68
    t = ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129
    while idx < cd[(cd[100] + ('cd', 100)[2] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[3] <= test266151307()
    require cd[100] + ('cd', 100).length + 36 > cd[100] + ('cd', 100)[3] + 67
    if cd[(cd[100] + ('cd', 100)[3] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99 < 98 or ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98] = cd[(cd[100] + ('cd', 100)[3] + 36)]
    require ('cd', 100)[3] + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 68 <= ('cd', 100).length + 36
    s = cd[100] + ('cd', 100)[3] + 68
    t = ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[3] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 0 >= cd[(cd[100] + ('cd', 100)[1] + 36)]:
        revert with 0, 50
    if address(cd[36]) != mem[140 len 20]:
        revert with 0, 'DT'
    if cd[68] != ('cd', 100)[0]:
        revert with 0, 'DA'
    if cd[(cd[100] + ('cd', 100)[1] + 36)] < 2:
        revert with 0, 'Library: INVALID_PATH'
    if cd[(cd[100] + ('cd', 100)[1] + 36)] > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[64] = ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 131
    if not cd[(cd[100] + ('cd', 100)[1] + 36)]:
        if 0 >= cd[(cd[100] + ('cd', 100)[1] + 36)]:
            revert with 0, 50
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = ('cd', 100)[0]
        if var168001 < 1:
            revert with 0, 17
        if var172002 < var172001:
            if var174001 < cd[(cd[100] + ('cd', 100)[2] + 36)]:
                if var176006 < cd[(cd[100] + ('cd', 100)[1] + 36)]:
                    if 1 > !var180002:
                        revert with 0, 17
                    idx = var182003 + 1
                    s = var182006
                    t = var182007
                    u = var182011
                    while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
                        _8961 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'Library Sort: ZERO_ADDRESS'
                            require ext_code.size(address(t))
                            staticcall address(t).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8983 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8983] == mem[_8983 + 18 len 14]
                            require mem[_8983 + 32] == mem[_8983 + 50 len 14]
                            require mem[_8983 + 64] == mem[_8983 + 92 len 4]
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                revert with 0, 50
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98]:
                                revert with 0, 50
                            if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if mem[_8983 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8983 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8983 + 50 len 14]:
                                        if mem[_8983 + 18 len 14] and 10000 > -1 / mem[_8983 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 18 len 14] / 10000 != mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 18 len 14] < 10000 * mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8983 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8983 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9727 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9727] == bool(mem[_9727])
                                    else:
                                        if False and mem[_8983 + 50 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8983 + 50 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8983 + 18 len 14] and 10000 > -1 / mem[_8983 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 18 len 14] / 10000 != mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 18 len 14] < 10000 * mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8983 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8983 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9856 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9856] == bool(mem[_9856])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8983 + 50 len 14]:
                                        if mem[_8983 + 18 len 14] and 10000 > -1 / mem[_8983 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 18 len 14] / 10000 != mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8983 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8983 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8983 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9857 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9857] == bool(mem[_9857])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8983 + 50 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8983 + 50 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 50 len 14]) / mem[_8983 + 50 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8983 + 18 len 14] and 10000 > -1 / mem[_8983 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 18 len 14] / 10000 != mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8983 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8983 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 50 len 14]) / (10000 * mem[_8983 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9961 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9961] == bool(mem[_9961])
                            else:
                                if mem[_8983 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8983 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8983 + 18 len 14]:
                                        if mem[_8983 + 50 len 14] and 10000 > -1 / mem[_8983 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 50 len 14] / 10000 != mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 50 len 14] < 10000 * mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8983 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8983 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9728 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9728] == bool(mem[_9728])
                                    else:
                                        if False and mem[_8983 + 18 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8983 + 18 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8983 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8983 + 50 len 14] and 10000 > -1 / mem[_8983 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 50 len 14] / 10000 != mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 50 len 14] < 10000 * mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8983 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8983 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9859 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9859] == bool(mem[_9859])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8983 + 18 len 14]:
                                        if mem[_8983 + 50 len 14] and 10000 > -1 / mem[_8983 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 50 len 14] / 10000 != mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8983 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8983 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8983 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9860 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9860] == bool(mem[_9860])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8983 + 18 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8983 + 18 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 18 len 14]) / mem[_8983 + 18 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8983 + 50 len 14] and 10000 > -1 / mem[_8983 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8983 + 50 len 14] / 10000 != mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8983 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8983 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8983 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8983 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8983 + 18 len 14]) / (10000 * mem[_8983 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9964 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9964] == bool(mem[_9964])
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'Library Sort: ZERO_ADDRESS'
                            require ext_code.size(address(t))
                            staticcall address(t).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8984 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8984] == mem[_8984 + 18 len 14]
                            require mem[_8984 + 32] == mem[_8984 + 50 len 14]
                            require mem[_8984 + 64] == mem[_8984 + 92 len 4]
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                revert with 0, 50
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98]:
                                revert with 0, 50
                            if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(_8961):
                                if mem[_8984 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8984 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8984 + 50 len 14]:
                                        if mem[_8984 + 18 len 14] and 10000 > -1 / mem[_8984 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 18 len 14] / 10000 != mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 18 len 14] < 10000 * mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8984 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8984 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9729 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9729] == bool(mem[_9729])
                                    else:
                                        if False and mem[_8984 + 50 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8984 + 50 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8984 + 18 len 14] and 10000 > -1 / mem[_8984 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 18 len 14] / 10000 != mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 18 len 14] < 10000 * mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8984 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8984 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9862 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9862] == bool(mem[_9862])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8984 + 50 len 14]:
                                        if mem[_8984 + 18 len 14] and 10000 > -1 / mem[_8984 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 18 len 14] / 10000 != mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8984 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8984 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8984 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9863 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9863] == bool(mem[_9863])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8984 + 50 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8984 + 50 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 50 len 14]) / mem[_8984 + 50 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8984 + 18 len 14] and 10000 > -1 / mem[_8984 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 18 len 14] / 10000 != mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8984 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8984 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 50 len 14]) / (10000 * mem[_8984 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9967 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9967] == bool(mem[_9967])
                            else:
                                if mem[_8984 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8984 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8984 + 18 len 14]:
                                        if mem[_8984 + 50 len 14] and 10000 > -1 / mem[_8984 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 50 len 14] / 10000 != mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 50 len 14] < 10000 * mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8984 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8984 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9730 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9730] == bool(mem[_9730])
                                    else:
                                        if False and mem[_8984 + 18 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8984 + 18 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8984 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8984 + 50 len 14] and 10000 > -1 / mem[_8984 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 50 len 14] / 10000 != mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 50 len 14] < 10000 * mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8984 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8984 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9865 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9865] == bool(mem[_9865])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8984 + 18 len 14]:
                                        if mem[_8984 + 50 len 14] and 10000 > -1 / mem[_8984 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 50 len 14] / 10000 != mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8984 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8984 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8984 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9866 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9866] == bool(mem[_9866])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8984 + 18 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8984 + 18 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 18 len 14]) / mem[_8984 + 18 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8984 + 50 len 14] and 10000 > -1 / mem[_8984 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8984 + 50 len 14] / 10000 != mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8984 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8984 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8984 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8984 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8984 + 18 len 14]) / (10000 * mem[_8984 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9970 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9970] == bool(mem[_9970])
                        return 1
            revert with 0, 50
    else:
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[calldata.size len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
        if 0 >= cd[(cd[100] + ('cd', 100)[1] + 36)]:
            revert with 0, 50
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = ('cd', 100)[0]
        if var169001 < 1:
            revert with 0, 17
        if var173002 < var173001:
            if var175001 < cd[(cd[100] + ('cd', 100)[2] + 36)]:
                if var177006 < cd[(cd[100] + ('cd', 100)[1] + 36)]:
                    if 1 > !var181002:
                        revert with 0, 17
                    idx = var183003 + 1
                    s = var183006
                    t = var183007
                    u = var183011
                    while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
                        _8962 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'Library Sort: ZERO_ADDRESS'
                            require ext_code.size(address(t))
                            staticcall address(t).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8985] == mem[_8985 + 18 len 14]
                            require mem[_8985 + 32] == mem[_8985 + 50 len 14]
                            require mem[_8985 + 64] == mem[_8985 + 92 len 4]
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                revert with 0, 50
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98]:
                                revert with 0, 50
                            if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if mem[_8985 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8985 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8985 + 50 len 14]:
                                        if mem[_8985 + 18 len 14] and 10000 > -1 / mem[_8985 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 18 len 14] / 10000 != mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 18 len 14] < 10000 * mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8985 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8985 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9731 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9731] == bool(mem[_9731])
                                    else:
                                        if False and mem[_8985 + 50 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8985 + 50 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8985 + 18 len 14] and 10000 > -1 / mem[_8985 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 18 len 14] / 10000 != mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 18 len 14] < 10000 * mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8985 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8985 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9868 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9868] == bool(mem[_9868])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8985 + 50 len 14]:
                                        if mem[_8985 + 18 len 14] and 10000 > -1 / mem[_8985 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 18 len 14] / 10000 != mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8985 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8985 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8985 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9869 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9869] == bool(mem[_9869])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8985 + 50 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8985 + 50 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 50 len 14]) / mem[_8985 + 50 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8985 + 18 len 14] and 10000 > -1 / mem[_8985 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 18 len 14] / 10000 != mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8985 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8985 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 50 len 14]) / (10000 * mem[_8985 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9973 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9973] == bool(mem[_9973])
                            else:
                                if mem[_8985 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8985 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8985 + 18 len 14]:
                                        if mem[_8985 + 50 len 14] and 10000 > -1 / mem[_8985 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 50 len 14] / 10000 != mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 50 len 14] < 10000 * mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8985 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8985 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9732 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9732] == bool(mem[_9732])
                                    else:
                                        if False and mem[_8985 + 18 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8985 + 18 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8985 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8985 + 50 len 14] and 10000 > -1 / mem[_8985 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 50 len 14] / 10000 != mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 50 len 14] < 10000 * mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8985 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8985 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9871 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9871] == bool(mem[_9871])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8985 + 18 len 14]:
                                        if mem[_8985 + 50 len 14] and 10000 > -1 / mem[_8985 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 50 len 14] / 10000 != mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8985 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8985 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8985 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9872 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9872] == bool(mem[_9872])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8985 + 18 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8985 + 18 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 18 len 14]) / mem[_8985 + 18 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8985 + 50 len 14] and 10000 > -1 / mem[_8985 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8985 + 50 len 14] / 10000 != mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8985 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8985 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8985 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8985 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8985 + 18 len 14]) / (10000 * mem[_8985 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9976 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9976] == bool(mem[_9976])
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'Library Sort: ZERO_ADDRESS'
                            require ext_code.size(address(t))
                            staticcall address(t).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8986 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8986] == mem[_8986 + 18 len 14]
                            require mem[_8986 + 32] == mem[_8986 + 50 len 14]
                            require mem[_8986 + 64] == mem[_8986 + 92 len 4]
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                revert with 0, 50
                            if u >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 98]:
                                revert with 0, 50
                            if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] <= 0:
                                revert with 0, 'Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(_8962):
                                if mem[_8986 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8986 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8986 + 50 len 14]:
                                        if mem[_8986 + 18 len 14] and 10000 > -1 / mem[_8986 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 18 len 14] / 10000 != mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 18 len 14] < 10000 * mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8986 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8986 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9733 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9733] == bool(mem[_9733])
                                    else:
                                        if False and mem[_8986 + 50 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8986 + 50 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8986 + 18 len 14] and 10000 > -1 / mem[_8986 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 18 len 14] / 10000 != mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 18 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 18 len 14] < 10000 * mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8986 + 18 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8986 + 18 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9874 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9874] == bool(mem[_9874])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8986 + 50 len 14]:
                                        if mem[_8986 + 18 len 14] and 10000 > -1 / mem[_8986 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 18 len 14] / 10000 != mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8986 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8986 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8986 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9875 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9875] == bool(mem[_9875])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8986 + 50 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8986 + 50 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 50 len 14]) / mem[_8986 + 50 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8986 + 18 len 14] and 10000 > -1 / mem[_8986 + 18 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 18 len 14] / 10000 != mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 18 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8986 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8986 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 50 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 50 len 14]) / (10000 * mem[_8986 + 18 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9979 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9979] == bool(mem[_9979])
                            else:
                                if mem[_8986 + 50 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_8986 + 18 len 14] <= 0:
                                    revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130]:
                                    revert with 0, 17
                                if -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > 10000:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                    if not mem[_8986 + 18 len 14]:
                                        if mem[_8986 + 50 len 14] and 10000 > -1 / mem[_8986 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 50 len 14] / 10000 != mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 50 len 14] < 10000 * mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8986 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8986 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9734 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9734] == bool(mem[_9734])
                                    else:
                                        if False and mem[_8986 + 18 len 14] > 0:
                                            revert with 0, 17
                                        if not mem[_8986 + 18 len 14]:
                                            revert with 0, 18
                                        if 0 / mem[_8986 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8986 + 50 len 14] and 10000 > -1 / mem[_8986 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 50 len 14] / 10000 != mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 50 len 14] > -1:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 50 len 14] < 10000 * mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8986 + 50 len 14]:
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / 10000 * mem[_8986 + 50 len 14]
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9877 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9877] == bool(mem[_9877])
                                else:
                                    if mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] and -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 > -1 / mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 17
                                    if not -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000:
                                        revert with 0, 18
                                    if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) / -mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] + 10000 != mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8986 + 18 len 14]:
                                        if mem[_8986 + 50 len 14] and 10000 > -1 / mem[_8986 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 50 len 14] / 10000 != mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8986 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8986 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = 0 / (10000 * mem[_8986 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9878 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9878] == bool(mem[_9878])
                                    else:
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) and mem[_8986 + 18 len 14] > -1 / (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 17
                                        if not mem[_8986 + 18 len 14]:
                                            revert with 0, 18
                                        if (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 18 len 14]) / mem[_8986 + 18 len 14] != (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8986 + 50 len 14] and 10000 > -1 / mem[_8986 + 50 len 14]:
                                            revert with 0, 17
                                        if 10000 * mem[_8986 + 50 len 14] / 10000 != mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8986 + 50 len 14] > !((10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])):
                                            revert with 0, 17
                                        if (10000 * mem[_8986 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) < 10000 * mem[_8986 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8986 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]):
                                            revert with 0, 18
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] = (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 18 len 14]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] * mem[_8986 + 18 len 14]) / (10000 * mem[_8986 + 50 len 14]) + (10000 * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131]) - (mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 130] * mem[(32 * u) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131])
                                        if u == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if u + 1 < mem[96] - 1:
                                            if u + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 97]:
                                                revert with 0, 50
                                            if u + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            idx = u + 2
                                            s = mem[(32 * u + 1) + 128]
                                            t = mem[(32 * u + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 129]
                                            u = u + 1
                                            continue 
                                        if mem[96] != mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 'MSL'
                                        if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
                                            revert with 0, 17
                                        if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99]:
                                            revert with 0, 50
                                        if mem[(32 * mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 99] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
                                            return 0
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(cd[36])
                                        mem[mem[64] + 68] = ('cd', 100)[0]
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 100).length
                                        mem[mem[64] + 164 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                        mem[('cd', 100).length + mem[64] + 164] = 0
                                        require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
                                        call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9982] == bool(mem[_9982])
                        return 1
            revert with 0, 50
    if cd[(cd[100] + ('cd', 100)[1] + 36)] != cd[(cd[100] + ('cd', 100)[1] + 36)]:
        revert with 0, 'MSL'
    if ('cd', 100)[0] and 5 > -1 / ('cd', 100)[0]:
        revert with 0, 17
    if 5 * ('cd', 100)[0] / 5 != ('cd', 100)[0]:
        revert with 0, 'ds-math-mul-overflow'
    if ('cd', 100)[0] > !(5 * ('cd', 100)[0] / 10000):
        revert with 0, 17
    if cd[(cd[100] + ('cd', 100)[1] + 36)] < 1:
        revert with 0, 17
    if cd[(cd[100] + ('cd', 100)[1] + 36)] - 1 >= cd[(cd[100] + ('cd', 100)[1] + 36)]:
        revert with 0, 50
    if mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)] - 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 131] < ('cd', 100)[0] + (5 * ('cd', 100)[0] / 10000):
        return 0
    require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
    call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(cd[4]), address(cd[36]), ('cd', 100)[0], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
