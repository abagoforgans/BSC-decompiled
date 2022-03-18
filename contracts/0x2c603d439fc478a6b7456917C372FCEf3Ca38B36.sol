contract main {




// =====================  Runtime code  =====================


#
#  - sub_00bdf612(?)
#
address owner;
address sub_39cdbacdAddress;
address sub_fa4f418cAddress;
address stor3;

function sub_39cdbacd(?) payable {
    return sub_39cdbacdAddress
}

function owner() payable {
    return owner
}

function sub_fa4f418c(?) payable {
    return sub_fa4f418cAddress
}

function _fallback() payable {
    revert
}

function setWbnbAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor3 = arg1
}

function sub_3d778cc7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    sub_fa4f418cAddress = address(arg1)
}

function sub_61815759(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    sub_39cdbacdAddress = address(arg1)
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function sub_ee72861f(?) payable {
    require ext_code.size(sub_fa4f418cAddress)
    staticcall sub_fa4f418cAddress.poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] <= test266151307()
                mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
                if not ext_call.return_data[0]:
                    idx = 0
                    s = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_fa4f418cAddress)
                        staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _596 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _628 = mem[_596]
                        require mem[_596] == mem[_596 + 12 len 20]
                        require ext_code.size(mem[_596 + 12 len 20])
                        staticcall mem[_596 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _756 = mem[_724]
                        require mem[_724] == mem[_724 + 18 len 14]
                        _789 = mem[_724 + 32]
                        require mem[_724 + 32] == mem[_724 + 50 len 14]
                        require mem[_724 + 64] == mem[_724 + 92 len 4]
                        require ext_code.size(address(_628))
                        staticcall address(_628).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _900 = mem[_884]
                        require mem[_884] == mem[_884 + 12 len 20]
                        require ext_code.size(address(_628))
                        staticcall address(_628).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _948 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _964 = mem[_948]
                        require mem[_948] == mem[_948 + 12 len 20]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_900)
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_964)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _756)
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _789)
                        idx = idx + 1
                        s = _628
                        continue 
                    _548 = mem[64]
                    mem[mem[64]] = 128
                    _580 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 160
                    while idx < _580:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _580) + 160
                    _1060 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[mem[64] + (32 * _580) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                    t = mem[64] + (32 * _580) + 192
                    while idx < _1060:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_548 + 64] = (32 * _580) + (32 * _1060) + 192
                    _1188 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[_548 + (32 * _580) + (32 * _1060) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[_548 + (32 * _580) + (32 * _1060) + 224 len 32 * _1188] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1188]
                    mem[_548 + 96] = (32 * _580) + (32 * _1060) + (32 * _1188) + 224
                    _1284 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                    mem[_548 + (32 * _580) + (32 * _1060) + (32 * _1188) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                    mem[_548 + (32 * _580) + (32 * _1060) + (32 * _1188) + 256 len 32 * _1284] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1284]
                    return memory
                      from mem[64]
                       len _548 + (32 * _580) + (32 * _1060) + (32 * _1188) + (32 * _1284) + -mem[64] + 256
                mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(sub_fa4f418cAddress)
                    staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _597 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _629 = mem[_597]
                    require mem[_597] == mem[_597 + 12 len 20]
                    require ext_code.size(mem[_597 + 12 len 20])
                    staticcall mem[_597 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _725 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _757 = mem[_725]
                    require mem[_725] == mem[_725 + 18 len 14]
                    _791 = mem[_725 + 32]
                    require mem[_725 + 32] == mem[_725 + 50 len 14]
                    require mem[_725 + 64] == mem[_725 + 92 len 4]
                    require ext_code.size(address(_629))
                    staticcall address(_629).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _901 = mem[_885]
                    require mem[_885] == mem[_885 + 12 len 20]
                    require ext_code.size(address(_629))
                    staticcall address(_629).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _949 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _965 = mem[_949]
                    require mem[_949] == mem[_949 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_901)
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_965)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _757)
                    require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _791)
                    idx = idx + 1
                    s = _629
                    continue 
                _549 = mem[64]
                mem[mem[64]] = 128
                _581 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 160
                while idx < _581:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_549 + 32] = (32 * _581) + 160
                _1061 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[_549 + (32 * _581) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = _549 + (32 * _581) + 192
                while idx < _1061:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_549 + 64] = (32 * _581) + (32 * _1061) + 192
                _1189 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_549 + (32 * _581) + (32 * _1061) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_549 + (32 * _581) + (32 * _1061) + 224 len 32 * _1189] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1189]
                mem[_549 + 96] = (32 * _581) + (32 * _1061) + (32 * _1189) + 224
                _1285 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[_549 + (32 * _581) + (32 * _1061) + (32 * _1189) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[_549 + (32 * _581) + (32 * _1061) + (32 * _1189) + 256 len 32 * _1285] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1285]
                return memory
                  from mem[64]
                   len _549 + (32 * _581) + (32 * _1061) + (32 * _1189) + (32 * _1285) + -mem[64] + 256
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            require ext_call.return_data[0] <= test266151307()
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(sub_fa4f418cAddress)
                    staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _598 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _630 = mem[_598]
                    require mem[_598] == mem[_598 + 12 len 20]
                    require ext_code.size(mem[_598 + 12 len 20])
                    staticcall mem[_598 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _726 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _758 = mem[_726]
                    require mem[_726] == mem[_726 + 18 len 14]
                    _793 = mem[_726 + 32]
                    require mem[_726 + 32] == mem[_726 + 50 len 14]
                    require mem[_726 + 64] == mem[_726 + 92 len 4]
                    require ext_code.size(address(_630))
                    staticcall address(_630).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _902 = mem[_886]
                    require mem[_886] == mem[_886 + 12 len 20]
                    require ext_code.size(address(_630))
                    staticcall address(_630).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _950 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _966 = mem[_950]
                    require mem[_950] == mem[_950 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_902)
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_966)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _758)
                    require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _793)
                    idx = idx + 1
                    s = _630
                    continue 
                mem[mem[64]] = 128
                _582 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 160
                while idx < _582:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _582) + 160
                _1062 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[mem[64] + (32 * _582) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = mem[64] + (32 * _582) + 192
                while idx < _1062:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _582) + (32 * _1062) + 192
                _1190 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[mem[64] + (32 * _582) + (32 * _1062) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[mem[64] + (32 * _582) + (32 * _1062) + 224 len 32 * _1190] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1190]
                mem[mem[64] + 96] = (32 * _582) + (32 * _1062) + (32 * _1190) + 224
                _1286 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[mem[64] + (32 * _582) + (32 * _1062) + (32 * _1190) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[mem[64] + (32 * _582) + (32 * _1062) + (32 * _1190) + 256 len 32 * _1286] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1286]
                return 128, 
                       (32 * _582) + 160,
                       (32 * _582) + (32 * _1062) + 192,
                       (32 * _582) + (32 * _1062) + (32 * _1190) + 224,
                       mem[mem[64] + 128 len (32 * _582) + (32 * _1062) + (32 * _1190) + (32 * _1286) + 128]
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(sub_fa4f418cAddress)
                staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _631 = mem[_599]
                require mem[_599] == mem[_599 + 12 len 20]
                require ext_code.size(mem[_599 + 12 len 20])
                staticcall mem[_599 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _727 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _759 = mem[_727]
                require mem[_727] == mem[_727 + 18 len 14]
                _795 = mem[_727 + 32]
                require mem[_727 + 32] == mem[_727 + 50 len 14]
                require mem[_727 + 64] == mem[_727 + 92 len 4]
                require ext_code.size(address(_631))
                staticcall address(_631).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _903 = mem[_887]
                require mem[_887] == mem[_887 + 12 len 20]
                require ext_code.size(address(_631))
                staticcall address(_631).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _951 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _967 = mem[_951]
                require mem[_951] == mem[_951 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_903)
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_967)
                require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _759)
                require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _795)
                idx = idx + 1
                s = _631
                continue 
            _551 = mem[64]
            mem[mem[64]] = 128
            _583 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while idx < _583:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _583) + 160
            _1063 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[mem[64] + (32 * _583) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = mem[64] + (32 * _583) + 192
            while idx < _1063:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_551 + 64] = (32 * _583) + (32 * _1063) + 192
            _1191 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_551 + (32 * _583) + (32 * _1063) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_551 + (32 * _583) + (32 * _1063) + 224 len 32 * _1191] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1191]
            mem[_551 + 96] = (32 * _583) + (32 * _1063) + (32 * _1191) + 224
            _1287 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_551 + (32 * _583) + (32 * _1063) + (32 * _1191) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_551 + (32 * _583) + (32 * _1063) + (32 * _1191) + 256 len 32 * _1287] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1287]
            return memory
              from mem[64]
               len _551 + (32 * _583) + (32 * _1063) + (32 * _1191) + (32 * _1287) + -mem[64] + 256
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(sub_fa4f418cAddress)
                    staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _632 = mem[_600]
                    require mem[_600] == mem[_600 + 12 len 20]
                    require ext_code.size(mem[_600 + 12 len 20])
                    staticcall mem[_600 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _728 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _760 = mem[_728]
                    require mem[_728] == mem[_728 + 18 len 14]
                    _797 = mem[_728 + 32]
                    require mem[_728 + 32] == mem[_728 + 50 len 14]
                    require mem[_728 + 64] == mem[_728 + 92 len 4]
                    require ext_code.size(address(_632))
                    staticcall address(_632).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _904 = mem[_888]
                    require mem[_888] == mem[_888 + 12 len 20]
                    require ext_code.size(address(_632))
                    staticcall address(_632).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _952 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _968 = mem[_952]
                    require mem[_952] == mem[_952 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_904)
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_968)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _760)
                    require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _797)
                    idx = idx + 1
                    s = _632
                    continue 
                _552 = mem[64]
                mem[mem[64]] = 128
                _584 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 160
                while idx < _584:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _584) + 160
                _1064 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[mem[64] + (32 * _584) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = mem[64] + (32 * _584) + 192
                while idx < _1064:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_552 + 64] = (32 * _584) + (32 * _1064) + 192
                _1192 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_552 + (32 * _584) + (32 * _1064) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_552 + (32 * _584) + (32 * _1064) + 224 len 32 * _1192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1192]
                mem[_552 + 96] = (32 * _584) + (32 * _1064) + (32 * _1192) + 224
                _1288 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[_552 + (32 * _584) + (32 * _1064) + (32 * _1192) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[_552 + (32 * _584) + (32 * _1064) + (32 * _1192) + 256 len 32 * _1288] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1288]
                return memory
                  from mem[64]
                   len _552 + (32 * _584) + (32 * _1064) + (32 * _1192) + (32 * _1288) + -mem[64] + 256
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(sub_fa4f418cAddress)
                staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _633 = mem[_601]
                require mem[_601] == mem[_601 + 12 len 20]
                require ext_code.size(mem[_601 + 12 len 20])
                staticcall mem[_601 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _761 = mem[_729]
                require mem[_729] == mem[_729 + 18 len 14]
                _799 = mem[_729 + 32]
                require mem[_729 + 32] == mem[_729 + 50 len 14]
                require mem[_729 + 64] == mem[_729 + 92 len 4]
                require ext_code.size(address(_633))
                staticcall address(_633).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _889 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _905 = mem[_889]
                require mem[_889] == mem[_889 + 12 len 20]
                require ext_code.size(address(_633))
                staticcall address(_633).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _953 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _969 = mem[_953]
                require mem[_953] == mem[_953 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_905)
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_969)
                require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _761)
                require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _799)
                idx = idx + 1
                s = _633
                continue 
            _553 = mem[64]
            mem[mem[64]] = 128
            _585 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while idx < _585:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_553 + 32] = (32 * _585) + 160
            _1065 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_553 + (32 * _585) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _553 + (32 * _585) + 192
            while idx < _1065:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_553 + 64] = (32 * _585) + (32 * _1065) + 192
            _1193 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_553 + (32 * _585) + (32 * _1065) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_553 + (32 * _585) + (32 * _1065) + 224 len 32 * _1193] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1193]
            mem[_553 + 96] = (32 * _585) + (32 * _1065) + (32 * _1193) + 224
            _1289 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_553 + (32 * _585) + (32 * _1065) + (32 * _1193) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_553 + (32 * _585) + (32 * _1065) + (32 * _1193) + 256 len 32 * _1289] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1289]
            return memory
              from mem[64]
               len _553 + (32 * _585) + (32 * _1065) + (32 * _1193) + (32 * _1289) + -mem[64] + 256
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(sub_fa4f418cAddress)
                staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _634 = mem[_602]
                require mem[_602] == mem[_602 + 12 len 20]
                require ext_code.size(mem[_602 + 12 len 20])
                staticcall mem[_602 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _762 = mem[_730]
                require mem[_730] == mem[_730 + 18 len 14]
                _801 = mem[_730 + 32]
                require mem[_730 + 32] == mem[_730 + 50 len 14]
                require mem[_730 + 64] == mem[_730 + 92 len 4]
                require ext_code.size(address(_634))
                staticcall address(_634).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _906 = mem[_890]
                require mem[_890] == mem[_890 + 12 len 20]
                require ext_code.size(address(_634))
                staticcall address(_634).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _954 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _970 = mem[_954]
                require mem[_954] == mem[_954 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_906)
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_970)
                require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _762)
                require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _801)
                idx = idx + 1
                s = _634
                continue 
            _554 = mem[64]
            mem[mem[64]] = 128
            _586 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while idx < _586:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_554 + 32] = (32 * _586) + 160
            _1066 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_554 + (32 * _586) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _554 + (32 * _586) + 192
            while idx < _1066:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_554 + 64] = (32 * _586) + (32 * _1066) + 192
            _1194 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_554 + (32 * _586) + (32 * _1066) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_554 + (32 * _586) + (32 * _1066) + 224 len 32 * _1194] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1194]
            mem[_554 + 96] = (32 * _586) + (32 * _1066) + (32 * _1194) + 224
            _1290 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_554 + (32 * _586) + (32 * _1066) + (32 * _1194) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_554 + (32 * _586) + (32 * _1066) + (32 * _1194) + 256 len 32 * _1290] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1290]
            return memory
              from mem[64]
               len _554 + (32 * _586) + (32 * _1066) + (32 * _1194) + (32 * _1290) + -mem[64] + 256
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_fa4f418cAddress)
            staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _603 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _635 = mem[_603]
            require mem[_603] == mem[_603 + 12 len 20]
            require ext_code.size(mem[_603 + 12 len 20])
            staticcall mem[_603 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _731 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _763 = mem[_731]
            require mem[_731] == mem[_731 + 18 len 14]
            _803 = mem[_731 + 32]
            require mem[_731 + 32] == mem[_731 + 50 len 14]
            require mem[_731 + 64] == mem[_731 + 92 len 4]
            require ext_code.size(address(_635))
            staticcall address(_635).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _891 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _907 = mem[_891]
            require mem[_891] == mem[_891 + 12 len 20]
            require ext_code.size(address(_635))
            staticcall address(_635).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _955 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _971 = mem[_955]
            require mem[_955] == mem[_955 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_907)
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_971)
            require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _763)
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _803)
            idx = idx + 1
            s = _635
            continue 
        _555 = mem[64]
        mem[mem[64]] = 128
        _587 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 160
        while idx < _587:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_555 + 32] = (32 * _587) + 160
        _1067 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_555 + (32 * _587) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = _555 + (32 * _587) + 192
        while idx < _1067:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_555 + 64] = (32 * _587) + (32 * _1067) + 192
        _1195 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_555 + (32 * _587) + (32 * _1067) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_555 + (32 * _587) + (32 * _1067) + 224 len 32 * _1195] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1195]
        mem[_555 + 96] = (32 * _587) + (32 * _1067) + (32 * _1195) + 224
        _1291 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[_555 + (32 * _587) + (32 * _1067) + (32 * _1195) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[_555 + (32 * _587) + (32 * _1067) + (32 * _1195) + 256 len 32 * _1291] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1291]
        return memory
          from mem[64]
           len _555 + (32 * _587) + (32 * _1067) + (32 * _1195) + (32 * _1291) + -mem[64] + 256
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(sub_fa4f418cAddress)
                    staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _636 = mem[_604]
                    require mem[_604] == mem[_604 + 12 len 20]
                    require ext_code.size(mem[_604 + 12 len 20])
                    staticcall mem[_604 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _764 = mem[_732]
                    require mem[_732] == mem[_732 + 18 len 14]
                    _805 = mem[_732 + 32]
                    require mem[_732 + 32] == mem[_732 + 50 len 14]
                    require mem[_732 + 64] == mem[_732 + 92 len 4]
                    require ext_code.size(address(_636))
                    staticcall address(_636).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _908 = mem[_892]
                    require mem[_892] == mem[_892 + 12 len 20]
                    require ext_code.size(address(_636))
                    staticcall address(_636).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _956 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _972 = mem[_956]
                    require mem[_956] == mem[_956 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_908)
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_972)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _764)
                    require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _805)
                    idx = idx + 1
                    s = _636
                    continue 
                _556 = mem[64]
                mem[mem[64]] = 128
                _588 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 160
                while idx < _588:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _588) + 160
                _1068 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[mem[64] + (32 * _588) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = mem[64] + (32 * _588) + 192
                while idx < _1068:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_556 + 64] = (32 * _588) + (32 * _1068) + 192
                _1196 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_556 + (32 * _588) + (32 * _1068) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_556 + (32 * _588) + (32 * _1068) + 224 len 32 * _1196] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1196]
                mem[_556 + 96] = (32 * _588) + (32 * _1068) + (32 * _1196) + 224
                _1292 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[_556 + (32 * _588) + (32 * _1068) + (32 * _1196) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[_556 + (32 * _588) + (32 * _1068) + (32 * _1196) + 256 len 32 * _1292] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1292]
                return memory
                  from mem[64]
                   len _556 + (32 * _588) + (32 * _1068) + (32 * _1196) + (32 * _1292) + -mem[64] + 256
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(sub_fa4f418cAddress)
                staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _637 = mem[_605]
                require mem[_605] == mem[_605 + 12 len 20]
                require ext_code.size(mem[_605 + 12 len 20])
                staticcall mem[_605 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _765 = mem[_733]
                require mem[_733] == mem[_733 + 18 len 14]
                _807 = mem[_733 + 32]
                require mem[_733 + 32] == mem[_733 + 50 len 14]
                require mem[_733 + 64] == mem[_733 + 92 len 4]
                require ext_code.size(address(_637))
                staticcall address(_637).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _893 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _909 = mem[_893]
                require mem[_893] == mem[_893 + 12 len 20]
                require ext_code.size(address(_637))
                staticcall address(_637).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _957 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _973 = mem[_957]
                require mem[_957] == mem[_957 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_909)
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_973)
                require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _765)
                require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _807)
                idx = idx + 1
                s = _637
                continue 
            _557 = mem[64]
            mem[mem[64]] = 128
            _589 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while idx < _589:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_557 + 32] = (32 * _589) + 160
            _1069 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_557 + (32 * _589) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _557 + (32 * _589) + 192
            while idx < _1069:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_557 + 64] = (32 * _589) + (32 * _1069) + 192
            _1197 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_557 + (32 * _589) + (32 * _1069) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_557 + (32 * _589) + (32 * _1069) + 224 len 32 * _1197] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1197]
            mem[_557 + 96] = (32 * _589) + (32 * _1069) + (32 * _1197) + 224
            _1293 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_557 + (32 * _589) + (32 * _1069) + (32 * _1197) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_557 + (32 * _589) + (32 * _1069) + (32 * _1197) + 256 len 32 * _1293] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1293]
            return memory
              from mem[64]
               len _557 + (32 * _589) + (32 * _1069) + (32 * _1197) + (32 * _1293) + -mem[64] + 256
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(sub_fa4f418cAddress)
                staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _638 = mem[_606]
                require mem[_606] == mem[_606 + 12 len 20]
                require ext_code.size(mem[_606 + 12 len 20])
                staticcall mem[_606 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _766 = mem[_734]
                require mem[_734] == mem[_734 + 18 len 14]
                _809 = mem[_734 + 32]
                require mem[_734 + 32] == mem[_734 + 50 len 14]
                require mem[_734 + 64] == mem[_734 + 92 len 4]
                require ext_code.size(address(_638))
                staticcall address(_638).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _894 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _910 = mem[_894]
                require mem[_894] == mem[_894 + 12 len 20]
                require ext_code.size(address(_638))
                staticcall address(_638).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _958 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _974 = mem[_958]
                require mem[_958] == mem[_958 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_910)
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_974)
                require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _766)
                require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _809)
                idx = idx + 1
                s = _638
                continue 
            _558 = mem[64]
            mem[mem[64]] = 128
            _590 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while idx < _590:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_558 + 32] = (32 * _590) + 160
            _1070 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_558 + (32 * _590) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _558 + (32 * _590) + 192
            while idx < _1070:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_558 + 64] = (32 * _590) + (32 * _1070) + 192
            _1198 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_558 + (32 * _590) + (32 * _1070) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_558 + (32 * _590) + (32 * _1070) + 224 len 32 * _1198] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1198]
            mem[_558 + 96] = (32 * _590) + (32 * _1070) + (32 * _1198) + 224
            _1294 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_558 + (32 * _590) + (32 * _1070) + (32 * _1198) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_558 + (32 * _590) + (32 * _1070) + (32 * _1198) + 256 len 32 * _1294] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1294]
            return memory
              from mem[64]
               len _558 + (32 * _590) + (32 * _1070) + (32 * _1198) + (32 * _1294) + -mem[64] + 256
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_fa4f418cAddress)
            staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _639 = mem[_607]
            require mem[_607] == mem[_607 + 12 len 20]
            require ext_code.size(mem[_607 + 12 len 20])
            staticcall mem[_607 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _767 = mem[_735]
            require mem[_735] == mem[_735 + 18 len 14]
            _811 = mem[_735 + 32]
            require mem[_735 + 32] == mem[_735 + 50 len 14]
            require mem[_735 + 64] == mem[_735 + 92 len 4]
            require ext_code.size(address(_639))
            staticcall address(_639).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _895 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _911 = mem[_895]
            require mem[_895] == mem[_895 + 12 len 20]
            require ext_code.size(address(_639))
            staticcall address(_639).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _959 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _975 = mem[_959]
            require mem[_959] == mem[_959 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_911)
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_975)
            require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _767)
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _811)
            idx = idx + 1
            s = _639
            continue 
        _559 = mem[64]
        mem[mem[64]] = 128
        _591 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 160
        while idx < _591:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_559 + 32] = (32 * _591) + 160
        _1071 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_559 + (32 * _591) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = _559 + (32 * _591) + 192
        while idx < _1071:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_559 + 64] = (32 * _591) + (32 * _1071) + 192
        _1199 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_559 + (32 * _591) + (32 * _1071) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_559 + (32 * _591) + (32 * _1071) + 224 len 32 * _1199] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1199]
        mem[_559 + 96] = (32 * _591) + (32 * _1071) + (32 * _1199) + 224
        _1295 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[_559 + (32 * _591) + (32 * _1071) + (32 * _1199) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[_559 + (32 * _591) + (32 * _1071) + (32 * _1199) + 256 len 32 * _1295] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1295]
        return memory
          from mem[64]
           len _559 + (32 * _591) + (32 * _1071) + (32 * _1199) + (32 * _1295) + -mem[64] + 256
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(sub_fa4f418cAddress)
                staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _608 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _640 = mem[_608]
                require mem[_608] == mem[_608 + 12 len 20]
                require ext_code.size(mem[_608 + 12 len 20])
                staticcall mem[_608 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _768 = mem[_736]
                require mem[_736] == mem[_736 + 18 len 14]
                _813 = mem[_736 + 32]
                require mem[_736 + 32] == mem[_736 + 50 len 14]
                require mem[_736 + 64] == mem[_736 + 92 len 4]
                require ext_code.size(address(_640))
                staticcall address(_640).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _912 = mem[_896]
                require mem[_896] == mem[_896 + 12 len 20]
                require ext_code.size(address(_640))
                staticcall address(_640).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _960 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _976 = mem[_960]
                require mem[_960] == mem[_960 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_912)
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_976)
                require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _768)
                require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _813)
                idx = idx + 1
                s = _640
                continue 
            _560 = mem[64]
            mem[mem[64]] = 128
            _592 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while idx < _592:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _592) + 160
            _1072 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[mem[64] + (32 * _592) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = mem[64] + (32 * _592) + 192
            while idx < _1072:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_560 + 64] = (32 * _592) + (32 * _1072) + 192
            _1200 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_560 + (32 * _592) + (32 * _1072) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_560 + (32 * _592) + (32 * _1072) + 224 len 32 * _1200] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1200]
            mem[_560 + 96] = (32 * _592) + (32 * _1072) + (32 * _1200) + 224
            _1296 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_560 + (32 * _592) + (32 * _1072) + (32 * _1200) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[_560 + (32 * _592) + (32 * _1072) + (32 * _1200) + 256 len 32 * _1296] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1296]
            return memory
              from mem[64]
               len _560 + (32 * _592) + (32 * _1072) + (32 * _1200) + (32 * _1296) + -mem[64] + 256
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_fa4f418cAddress)
            staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_609]
            require mem[_609] == mem[_609 + 12 len 20]
            require ext_code.size(mem[_609 + 12 len 20])
            staticcall mem[_609 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _769 = mem[_737]
            require mem[_737] == mem[_737 + 18 len 14]
            _815 = mem[_737 + 32]
            require mem[_737 + 32] == mem[_737 + 50 len 14]
            require mem[_737 + 64] == mem[_737 + 92 len 4]
            require ext_code.size(address(_641))
            staticcall address(_641).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _897 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _913 = mem[_897]
            require mem[_897] == mem[_897 + 12 len 20]
            require ext_code.size(address(_641))
            staticcall address(_641).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _961 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _977 = mem[_961]
            require mem[_961] == mem[_961 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_913)
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_977)
            require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _769)
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _815)
            idx = idx + 1
            s = _641
            continue 
        mem[mem[64]] = 128
        _593 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 160
        while idx < _593:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _593) + 160
        _1073 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + (32 * _593) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + (32 * _593) + 192
        while idx < _1073:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * _593) + (32 * _1073) + 192
        _1201 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[mem[64] + (32 * _593) + (32 * _1073) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[mem[64] + (32 * _593) + (32 * _1073) + 224 len 32 * _1201] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1201]
        mem[mem[64] + 96] = (32 * _593) + (32 * _1073) + (32 * _1201) + 224
        _1297 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[mem[64] + (32 * _593) + (32 * _1073) + (32 * _1201) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[mem[64] + (32 * _593) + (32 * _1073) + (32 * _1201) + 256 len 32 * _1297] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1297]
        return 128, 
               (32 * _593) + 160,
               (32 * _593) + (32 * _1073) + 192,
               (32 * _593) + (32 * _1073) + (32 * _1201) + 224,
               mem[mem[64] + 128 len (32 * _593) + (32 * _1073) + (32 * _1201) + (32 * _1297) + 128]
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_fa4f418cAddress)
            staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _610 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _642 = mem[_610]
            require mem[_610] == mem[_610 + 12 len 20]
            require ext_code.size(mem[_610 + 12 len 20])
            staticcall mem[_610 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _738 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _770 = mem[_738]
            require mem[_738] == mem[_738 + 18 len 14]
            _817 = mem[_738 + 32]
            require mem[_738 + 32] == mem[_738 + 50 len 14]
            require mem[_738 + 64] == mem[_738 + 92 len 4]
            require ext_code.size(address(_642))
            staticcall address(_642).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _898 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _914 = mem[_898]
            require mem[_898] == mem[_898 + 12 len 20]
            require ext_code.size(address(_642))
            staticcall address(_642).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _962 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _978 = mem[_962]
            require mem[_962] == mem[_962 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_914)
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_978)
            require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _770)
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _817)
            idx = idx + 1
            s = _642
            continue 
        _562 = mem[64]
        mem[mem[64]] = 128
        _594 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 160
        while idx < _594:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _594) + 160
        _1074 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + (32 * _594) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + (32 * _594) + 192
        while idx < _1074:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_562 + 64] = (32 * _594) + (32 * _1074) + 192
        _1202 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_562 + (32 * _594) + (32 * _1074) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_562 + (32 * _594) + (32 * _1074) + 224 len 32 * _1202] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1202]
        mem[_562 + 96] = (32 * _594) + (32 * _1074) + (32 * _1202) + 224
        _1298 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[_562 + (32 * _594) + (32 * _1074) + (32 * _1202) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[_562 + (32 * _594) + (32 * _1074) + (32 * _1202) + 256 len 32 * _1298] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1298]
        return memory
          from mem[64]
           len _562 + (32 * _594) + (32 * _1074) + (32 * _1202) + (32 * _1298) + -mem[64] + 256
    mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_fa4f418cAddress)
        staticcall sub_fa4f418cAddress.poolAddresses(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _611 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _643 = mem[_611]
        require mem[_611] == mem[_611 + 12 len 20]
        require ext_code.size(mem[_611 + 12 len 20])
        staticcall mem[_611 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _739 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _771 = mem[_739]
        require mem[_739] == mem[_739 + 18 len 14]
        _819 = mem[_739 + 32]
        require mem[_739 + 32] == mem[_739 + 50 len 14]
        require mem[_739 + 64] == mem[_739 + 92 len 4]
        require ext_code.size(address(_643))
        staticcall address(_643).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _899 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _915 = mem[_899]
        require mem[_899] == mem[_899 + 12 len 20]
        require ext_code.size(address(_643))
        staticcall address(_643).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _963 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _979 = mem[_963]
        require mem[_963] == mem[_963 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = address(_915)
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_979)
        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, _771)
        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, _819)
        idx = idx + 1
        s = _643
        continue 
    _563 = mem[64]
    mem[mem[64]] = 128
    _595 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 160
    while idx < _595:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _595) + 160
    _1075 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[mem[64] + (32 * _595) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    idx = 0
    s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
    t = mem[64] + (32 * _595) + 192
    while idx < _1075:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_563 + 64] = (32 * _595) + (32 * _1075) + 192
    _1203 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
    mem[_563 + (32 * _595) + (32 * _1075) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
    mem[_563 + (32 * _595) + (32 * _1075) + 224 len 32 * _1203] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * _1203]
    mem[_563 + 96] = (32 * _595) + (32 * _1075) + (32 * _1203) + 224
    _1299 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
    mem[_563 + (32 * _595) + (32 * _1075) + (32 * _1203) + 224] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
    mem[_563 + (32 * _595) + (32 * _1075) + (32 * _1203) + 256 len 32 * _1299] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1299]
    return memory
      from mem[64]
       len _563 + (32 * _595) + (32 * _1075) + (32 * _1203) + (32 * _1299) + -mem[64] + 256
}



}
