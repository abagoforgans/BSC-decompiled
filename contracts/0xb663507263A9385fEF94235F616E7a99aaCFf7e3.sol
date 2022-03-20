contract main {




// =====================  Runtime code  =====================


#
#  - sub_7203717f(?)
#
address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5b3a7b35(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (224 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 224
        _282 = mem[64]
        require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
        mem[64] = mem[64] + 224
        require cd[s] == address(cd[s])
        mem[_282] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_282 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_282 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_282 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_282 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_282 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == cd[(s + 192)]
        mem[_282 + 192] = cd[(s + 192)]
        mem[t] = _282
        idx = idx + 1
        s = s + 224
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    if address(cd[36]) != 4100:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[100]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[100]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _298 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_298] == bool(mem[_298])
        if not mem[_298]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _572 = mem[96]
        idx = 0
        while idx < _572:
            _574 = mem[64]
            mem[64] = mem[64] + 224
            mem[_574] = 0
            mem[_574 + 32] = 0
            mem[_574 + 64] = 0
            mem[_574 + 96] = 0
            mem[_574 + 128] = 0
            mem[_574 + 160] = 0
            mem[_574 + 192] = 0
            require idx < mem[96]
            _579 = mem[(32 * idx) + 128]
            _580 = mem[mem[(32 * idx) + 128] + 32]
            if idx <= 0:
                _584 = mem[mem[(32 * idx) + 128]]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_584)
                require ext_code.size(address(_580))
                staticcall address(_580).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_584)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _610 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_610] == mem[_610]
                if mem[_610] <= 0:
                    _636 = mem[_579 + 96]
                    mem[mem[64] + 4] = mem[_579 + 12 len 20]
                    mem[mem[64] + 36] = _636
                    require ext_code.size(address(_580))
                    call address(_580).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _636
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_691] == bool(mem[_691])
                    if mem[_579 + 192] == 1:
                        _748 = mem[_579]
                        _750 = mem[_579 + 96]
                        _751 = mem[_579 + 64]
                        _752 = mem[_579 + 128]
                        _753 = mem[_579 + 160]
                        mem[mem[64] + 4] = mem[_579 + 44 len 20]
                        mem[mem[64] + 36] = _750
                        mem[mem[64] + 68] = address(_751)
                        mem[mem[64] + 100] = _752
                        mem[mem[64] + 132] = _753
                        require ext_code.size(address(_748))
                        call address(_748).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _750, address(_751), _752, _753
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1007] == mem[_1007]
                        require mem[_1007 + 32] == mem[_1007 + 32]
                    else:
                        if mem[_579 + 192] == 2:
                            _771 = mem[_579]
                            _791 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_791 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[_791]
                            mem[_791 + 32] = mem[_579 + 44 len 20]
                            require 1 < mem[_791]
                            mem[_791 + 64] = mem[_579 + 76 len 20]
                            _851 = mem[_579 + 96]
                            _852 = mem[_579 + 128]
                            mem[_791 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_791 + 100] = _851
                            mem[_791 + 132] = _852
                            mem[_791 + 164] = 160
                            mem[_791 + 260] = mem[_791]
                            s = 0
                            t = _791 + 32
                            u = _791 + 292
                            while s < mem[_791]:
                                mem[u] = mem[t + 12 len 20]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_791 + 196] = this.address
                            mem[_791 + 228] = cd[164]
                            require ext_code.size(address(_771))
                            call address(_771).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _791 + (32 * mem[_791]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1233 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1241 = mem[_1233]
                            require mem[_1233] <= test266151307()
                            require _1233 + mem[_1233] + 31 < _1233 + return_data.size
                            _1249 = mem[_1233 + mem[_1233]]
                            require mem[_1233 + mem[_1233]] <= test266151307()
                            require _1233 + ceil32(return_data.size) + (32 * mem[_1233 + mem[_1233]]) + 32 <= test266151307() and (32 * mem[_1233 + mem[_1233]]) + 32 >= 0
                            mem[64] = _1233 + ceil32(return_data.size) + (32 * mem[_1233 + mem[_1233]]) + 32
                            mem[_1233 + ceil32(return_data.size)] = _1249
                            require _1241 + (32 * _1249) + 32 <= return_data.size
                            s = 0
                            t = _1233 + _1241 + 32
                            u = _1233 + ceil32(return_data.size) + 32
                            while s < _1249:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _1249
                else:
                    mem[mem[64] + 4] = mem[_579 + 12 len 20]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(address(_580))
                    call address(_580).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _711 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_711] == bool(mem[_711])
                    _793 = mem[_579 + 96]
                    mem[mem[64] + 4] = mem[_579 + 12 len 20]
                    mem[mem[64] + 36] = _793
                    require ext_code.size(address(_580))
                    call address(_580).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _793
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _901 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_901] == bool(mem[_901])
                    if mem[_579 + 192] == 1:
                        _980 = mem[_579]
                        _982 = mem[_579 + 96]
                        _983 = mem[_579 + 64]
                        _984 = mem[_579 + 128]
                        _985 = mem[_579 + 160]
                        mem[mem[64] + 4] = mem[_579 + 44 len 20]
                        mem[mem[64] + 36] = _982
                        mem[mem[64] + 68] = address(_983)
                        mem[mem[64] + 100] = _984
                        mem[mem[64] + 132] = _985
                        require ext_code.size(address(_980))
                        call address(_980).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _982, address(_983), _984, _985
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1166] == mem[_1166]
                        require mem[_1166 + 32] == mem[_1166 + 32]
                    else:
                        if mem[_579 + 192] == 2:
                            _1008 = mem[_579]
                            _1027 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_1027 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[_1027]
                            mem[_1027 + 32] = mem[_579 + 44 len 20]
                            require 1 < mem[_1027]
                            mem[_1027 + 64] = mem[_579 + 76 len 20]
                            _1065 = mem[_579 + 96]
                            _1066 = mem[_579 + 128]
                            mem[_1027 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1027 + 100] = _1065
                            mem[_1027 + 132] = _1066
                            mem[_1027 + 164] = 160
                            mem[_1027 + 260] = mem[_1027]
                            s = 0
                            t = _1027 + 32
                            u = _1027 + 292
                            while s < mem[_1027]:
                                mem[u] = mem[t + 12 len 20]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1027 + 196] = this.address
                            mem[_1027 + 228] = cd[164]
                            require ext_code.size(address(_1008))
                            call address(_1008).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1027 + (32 * mem[_1027]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1234 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1242 = mem[_1234]
                            require mem[_1234] <= test266151307()
                            require _1234 + mem[_1234] + 31 < _1234 + return_data.size
                            _1250 = mem[_1234 + mem[_1234]]
                            require mem[_1234 + mem[_1234]] <= test266151307()
                            require _1234 + ceil32(return_data.size) + (32 * mem[_1234 + mem[_1234]]) + 32 <= test266151307() and (32 * mem[_1234 + mem[_1234]]) + 32 >= 0
                            mem[64] = _1234 + ceil32(return_data.size) + (32 * mem[_1234 + mem[_1234]]) + 32
                            mem[_1234 + ceil32(return_data.size)] = _1250
                            require _1242 + (32 * _1250) + 32 <= return_data.size
                            s = 0
                            t = _1234 + _1242 + 32
                            u = _1234 + ceil32(return_data.size) + 32
                            while s < _1250:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _1250
            else:
                mem[mem[(32 * idx) + 128] + 96] = 0
                _589 = mem[_579]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_589)
                require ext_code.size(address(_580))
                staticcall address(_580).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_589)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_614] == mem[_614]
                if mem[_614] <= 0:
                    _646 = mem[_579 + 96]
                    mem[mem[64] + 4] = mem[_579 + 12 len 20]
                    mem[mem[64] + 36] = _646
                    require ext_code.size(address(_580))
                    call address(_580).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _646
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_701] == bool(mem[_701])
                    if mem[_579 + 192] == 1:
                        _773 = mem[_579]
                        _775 = mem[_579 + 96]
                        _776 = mem[_579 + 64]
                        _777 = mem[_579 + 128]
                        _778 = mem[_579 + 160]
                        mem[mem[64] + 4] = mem[_579 + 44 len 20]
                        mem[mem[64] + 36] = _775
                        mem[mem[64] + 68] = address(_776)
                        mem[mem[64] + 100] = _777
                        mem[mem[64] + 132] = _778
                        require ext_code.size(address(_773))
                        call address(_773).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _775, address(_776), _777, _778
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1028 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1028] == mem[_1028]
                        require mem[_1028 + 32] == mem[_1028 + 32]
                    else:
                        if mem[_579 + 192] == 2:
                            _795 = mem[_579]
                            _803 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_803 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[_803]
                            mem[_803 + 32] = mem[_579 + 44 len 20]
                            require 1 < mem[_803]
                            mem[_803 + 64] = mem[_579 + 76 len 20]
                            _865 = mem[_579 + 96]
                            _866 = mem[_579 + 128]
                            mem[_803 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_803 + 100] = _865
                            mem[_803 + 132] = _866
                            mem[_803 + 164] = 160
                            mem[_803 + 260] = mem[_803]
                            s = 0
                            t = _803 + 32
                            u = _803 + 292
                            while s < mem[_803]:
                                mem[u] = mem[t + 12 len 20]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_803 + 196] = this.address
                            mem[_803 + 228] = cd[164]
                            require ext_code.size(address(_795))
                            call address(_795).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _803 + (32 * mem[_803]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1235 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1243 = mem[_1235]
                            require mem[_1235] <= test266151307()
                            require _1235 + mem[_1235] + 31 < _1235 + return_data.size
                            _1251 = mem[_1235 + mem[_1235]]
                            require mem[_1235 + mem[_1235]] <= test266151307()
                            require _1235 + ceil32(return_data.size) + (32 * mem[_1235 + mem[_1235]]) + 32 <= test266151307() and (32 * mem[_1235 + mem[_1235]]) + 32 >= 0
                            mem[64] = _1235 + ceil32(return_data.size) + (32 * mem[_1235 + mem[_1235]]) + 32
                            mem[_1235 + ceil32(return_data.size)] = _1251
                            require _1243 + (32 * _1251) + 32 <= return_data.size
                            s = 0
                            t = _1235 + _1243 + 32
                            u = _1235 + ceil32(return_data.size) + 32
                            while s < _1251:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _1251
                else:
                    mem[mem[64] + 4] = mem[_579 + 12 len 20]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(address(_580))
                    call address(_580).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_716] == bool(mem[_716])
                    _805 = mem[_579 + 96]
                    mem[mem[64] + 4] = mem[_579 + 12 len 20]
                    mem[mem[64] + 36] = _805
                    require ext_code.size(address(_580))
                    call address(_580).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _805
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _912 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_912] == bool(mem[_912])
                    if mem[_579 + 192] == 1:
                        _1010 = mem[_579]
                        _1012 = mem[_579 + 96]
                        _1013 = mem[_579 + 64]
                        _1014 = mem[_579 + 128]
                        _1015 = mem[_579 + 160]
                        mem[mem[64] + 4] = mem[_579 + 44 len 20]
                        mem[mem[64] + 36] = _1012
                        mem[mem[64] + 68] = address(_1013)
                        mem[mem[64] + 100] = _1014
                        mem[mem[64] + 132] = _1015
                        require ext_code.size(address(_1010))
                        call address(_1010).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1012, address(_1013), _1014, _1015
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1174 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1174] == mem[_1174]
                        require mem[_1174 + 32] == mem[_1174 + 32]
                    else:
                        if mem[_579 + 192] == 2:
                            _1029 = mem[_579]
                            _1033 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_1033 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[_1033]
                            mem[_1033 + 32] = mem[_579 + 44 len 20]
                            require 1 < mem[_1033]
                            mem[_1033 + 64] = mem[_579 + 76 len 20]
                            _1083 = mem[_579 + 96]
                            _1084 = mem[_579 + 128]
                            mem[_1033 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1033 + 100] = _1083
                            mem[_1033 + 132] = _1084
                            mem[_1033 + 164] = 160
                            mem[_1033 + 260] = mem[_1033]
                            s = 0
                            t = _1033 + 32
                            u = _1033 + 292
                            while s < mem[_1033]:
                                mem[u] = mem[t + 12 len 20]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1033 + 196] = this.address
                            mem[_1033 + 228] = cd[164]
                            require ext_code.size(address(_1029))
                            call address(_1029).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1033 + (32 * mem[_1033]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1236 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1244 = mem[_1236]
                            require mem[_1236] <= test266151307()
                            require _1236 + mem[_1236] + 31 < _1236 + return_data.size
                            _1252 = mem[_1236 + mem[_1236]]
                            require mem[_1236 + mem[_1236]] <= test266151307()
                            require _1236 + ceil32(return_data.size) + (32 * mem[_1236 + mem[_1236]]) + 32 <= test266151307() and (32 * mem[_1236 + mem[_1236]]) + 32 >= 0
                            mem[64] = _1236 + ceil32(return_data.size) + (32 * mem[_1236 + mem[_1236]]) + 32
                            mem[_1236 + ceil32(return_data.size)] = _1252
                            require _1244 + (32 * _1252) + 32 <= return_data.size
                            s = 0
                            t = _1236 + _1244 + 32
                            u = _1236 + ceil32(return_data.size) + 32
                            while s < _1252:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _572 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _1252
            _572 = mem[96]
            idx = idx + 1
            continue 
        if 0 < cd[132]:
            revert with 0, 'ERR_LIMIT_OUT'
        mem[mem[64] + 4] = this.address
        if address(cd[36]) != 4100:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _626 = mem[_616]
            require mem[_616] == mem[_616]
            if mem[_616]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_616]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_616] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _626
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _626
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_769] == bool(mem[_769])
                    if not mem[_769]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _617 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _627 = mem[_617]
            require mem[_617] == mem[_617]
            if mem[_617]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_617]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_617] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _627
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _627
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _770 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_770] == bool(mem[_770])
                    if not mem[_770]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        return 0
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _573 = mem[96]
    idx = 0
    s = 0
    while idx < _573:
        _575 = mem[64]
        mem[64] = mem[64] + 224
        mem[_575] = 0
        mem[_575 + 32] = 0
        mem[_575 + 64] = 0
        mem[_575 + 96] = 0
        mem[_575 + 128] = 0
        mem[_575 + 160] = 0
        mem[_575 + 192] = 0
        require idx < mem[96]
        _581 = mem[(32 * idx) + 128]
        _582 = mem[mem[(32 * idx) + 128] + 32]
        if idx <= 0:
            _587 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_587)
            require ext_code.size(address(_582))
            staticcall address(_582).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_587)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _613 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_613] == mem[_613]
            if mem[_613] <= 0:
                _641 = mem[_581 + 96]
                mem[mem[64] + 4] = mem[_581 + 12 len 20]
                mem[mem[64] + 36] = _641
                require ext_code.size(address(_582))
                call address(_582).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _641
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_699] == bool(mem[_699])
                if mem[_581 + 192] == 1:
                    _761 = mem[_581]
                    _763 = mem[_581 + 96]
                    _764 = mem[_581 + 64]
                    _765 = mem[_581 + 128]
                    _766 = mem[_581 + 160]
                    mem[mem[64] + 4] = mem[_581 + 44 len 20]
                    mem[mem[64] + 36] = _763
                    mem[mem[64] + 68] = address(_764)
                    mem[mem[64] + 100] = _765
                    mem[mem[64] + 132] = _766
                    require ext_code.size(address(_761))
                    call address(_761).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _763, address(_764), _765, _766
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1017 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1017] == mem[_1017]
                    require mem[_1017 + 32] == mem[_1017 + 32]
                    _573 = mem[96]
                    idx = idx + 1
                    s = mem[_1017]
                    continue 
                if mem[_581 + 192] != 2:
                    _573 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                _782 = mem[_581]
                _798 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_798 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[_798]
                mem[_798 + 32] = mem[_581 + 44 len 20]
                require 1 < mem[_798]
                mem[_798 + 64] = mem[_581 + 76 len 20]
                _860 = mem[_581 + 96]
                _861 = mem[_581 + 128]
                mem[_798 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_798 + 100] = _860
                mem[_798 + 132] = _861
                mem[_798 + 164] = 160
                mem[_798 + 260] = mem[_798]
                s = 0
                t = _798 + 32
                u = _798 + 292
                while s < mem[_798]:
                    mem[u] = mem[t + 12 len 20]
                    _573 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_798 + 196] = this.address
                mem[_798 + 228] = cd[164]
                require ext_code.size(address(_782))
                call address(_782).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _798 + (32 * mem[_798]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1237 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1245 = mem[_1237]
                require mem[_1237] <= test266151307()
                require _1237 + mem[_1237] + 31 < _1237 + return_data.size
                _1253 = mem[_1237 + mem[_1237]]
                require mem[_1237 + mem[_1237]] <= test266151307()
                require _1237 + ceil32(return_data.size) + (32 * mem[_1237 + mem[_1237]]) + 32 <= test266151307() and (32 * mem[_1237 + mem[_1237]]) + 32 >= 0
                mem[64] = _1237 + ceil32(return_data.size) + (32 * mem[_1237 + mem[_1237]]) + 32
                mem[_1237 + ceil32(return_data.size)] = _1253
                require _1245 + (32 * _1253) + 32 <= return_data.size
                s = 0
                t = _1237 + _1245 + 32
                u = _1237 + ceil32(return_data.size) + 32
                while s < _1253:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _573 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1253
                _573 = mem[96]
                idx = idx + 1
                s = mem[_1237 + ceil32(return_data.size) + 64]
                continue 
            mem[mem[64] + 4] = mem[_581 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_582))
            call address(_582).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _714 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_714] == bool(mem[_714])
            _800 = mem[_581 + 96]
            mem[mem[64] + 4] = mem[_581 + 12 len 20]
            mem[mem[64] + 36] = _800
            require ext_code.size(address(_582))
            call address(_582).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _800
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _910 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_910] == bool(mem[_910])
            if mem[_581 + 192] == 1:
                _998 = mem[_581]
                _1000 = mem[_581 + 96]
                _1001 = mem[_581 + 64]
                _1002 = mem[_581 + 128]
                _1003 = mem[_581 + 160]
                mem[mem[64] + 4] = mem[_581 + 44 len 20]
                mem[mem[64] + 36] = _1000
                mem[mem[64] + 68] = address(_1001)
                mem[mem[64] + 100] = _1002
                mem[mem[64] + 132] = _1003
                require ext_code.size(address(_998))
                call address(_998).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1000, address(_1001), _1002, _1003
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1171] == mem[_1171]
                require mem[_1171 + 32] == mem[_1171 + 32]
                _573 = mem[96]
                idx = idx + 1
                s = mem[_1171]
                continue 
            if mem[_581 + 192] != 2:
                _573 = mem[96]
                idx = idx + 1
                s = s
                continue 
            _1018 = mem[_581]
            _1030 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1030 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_1030]
            mem[_1030 + 32] = mem[_581 + 44 len 20]
            require 1 < mem[_1030]
            mem[_1030 + 64] = mem[_581 + 76 len 20]
            _1078 = mem[_581 + 96]
            _1079 = mem[_581 + 128]
            mem[_1030 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1030 + 100] = _1078
            mem[_1030 + 132] = _1079
            mem[_1030 + 164] = 160
            mem[_1030 + 260] = mem[_1030]
            s = 0
            t = _1030 + 32
            u = _1030 + 292
            while s < mem[_1030]:
                mem[u] = mem[t + 12 len 20]
                _573 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1030 + 196] = this.address
            mem[_1030 + 228] = cd[164]
            require ext_code.size(address(_1018))
            call address(_1018).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1030 + (32 * mem[_1030]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1238 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1246 = mem[_1238]
            require mem[_1238] <= test266151307()
            require _1238 + mem[_1238] + 31 < _1238 + return_data.size
            _1254 = mem[_1238 + mem[_1238]]
            require mem[_1238 + mem[_1238]] <= test266151307()
            require _1238 + ceil32(return_data.size) + (32 * mem[_1238 + mem[_1238]]) + 32 <= test266151307() and (32 * mem[_1238 + mem[_1238]]) + 32 >= 0
            mem[64] = _1238 + ceil32(return_data.size) + (32 * mem[_1238 + mem[_1238]]) + 32
            mem[_1238 + ceil32(return_data.size)] = _1254
            require _1246 + (32 * _1254) + 32 <= return_data.size
            s = 0
            t = _1238 + _1246 + 32
            u = _1238 + ceil32(return_data.size) + 32
            while s < _1254:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _573 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1254
            _573 = mem[96]
            idx = idx + 1
            s = mem[_1238 + ceil32(return_data.size) + 64]
            continue 
        mem[mem[(32 * idx) + 128] + 96] = s
        _591 = mem[_581]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_591)
        require ext_code.size(address(_582))
        staticcall address(_582).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_591)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _615 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_615] == mem[_615]
        if mem[_615] <= 0:
            _653 = mem[_581 + 96]
            mem[mem[64] + 4] = mem[_581 + 12 len 20]
            mem[mem[64] + 36] = _653
            require ext_code.size(address(_582))
            call address(_582).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _653
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _707 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_707] == bool(mem[_707])
            if mem[_581 + 192] == 1:
                _784 = mem[_581]
                _786 = mem[_581 + 96]
                _787 = mem[_581 + 64]
                _788 = mem[_581 + 128]
                _789 = mem[_581 + 160]
                mem[mem[64] + 4] = mem[_581 + 44 len 20]
                mem[mem[64] + 36] = _786
                mem[mem[64] + 68] = address(_787)
                mem[mem[64] + 100] = _788
                mem[mem[64] + 132] = _789
                require ext_code.size(address(_784))
                call address(_784).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _786, address(_787), _788, _789
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1031 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1031] == mem[_1031]
                require mem[_1031 + 32] == mem[_1031 + 32]
                _573 = mem[96]
                idx = idx + 1
                s = mem[_1031]
                continue 
            if mem[_581 + 192] != 2:
                _573 = mem[96]
                idx = idx + 1
                s = s
                continue 
            _802 = mem[_581]
            _807 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_807 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_807]
            mem[_807 + 32] = mem[_581 + 44 len 20]
            require 1 < mem[_807]
            mem[_807 + 64] = mem[_581 + 76 len 20]
            _868 = mem[_581 + 96]
            _869 = mem[_581 + 128]
            mem[_807 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_807 + 100] = _868
            mem[_807 + 132] = _869
            mem[_807 + 164] = 160
            mem[_807 + 260] = mem[_807]
            s = 0
            t = _807 + 32
            u = _807 + 292
            while s < mem[_807]:
                mem[u] = mem[t + 12 len 20]
                _573 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_807 + 196] = this.address
            mem[_807 + 228] = cd[164]
            require ext_code.size(address(_802))
            call address(_802).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _807 + (32 * mem[_807]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1239 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1247 = mem[_1239]
            require mem[_1239] <= test266151307()
            require _1239 + mem[_1239] + 31 < _1239 + return_data.size
            _1255 = mem[_1239 + mem[_1239]]
            require mem[_1239 + mem[_1239]] <= test266151307()
            require _1239 + ceil32(return_data.size) + (32 * mem[_1239 + mem[_1239]]) + 32 <= test266151307() and (32 * mem[_1239 + mem[_1239]]) + 32 >= 0
            mem[64] = _1239 + ceil32(return_data.size) + (32 * mem[_1239 + mem[_1239]]) + 32
            mem[_1239 + ceil32(return_data.size)] = _1255
            require _1247 + (32 * _1255) + 32 <= return_data.size
            s = 0
            t = _1239 + _1247 + 32
            u = _1239 + ceil32(return_data.size) + 32
            while s < _1255:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _573 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1255
            _573 = mem[96]
            idx = idx + 1
            s = mem[_1239 + ceil32(return_data.size) + 64]
            continue 
        mem[mem[64] + 4] = mem[_581 + 12 len 20]
        mem[mem[64] + 36] = 0
        require ext_code.size(address(_582))
        call address(_582).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _718 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_718] == bool(mem[_718])
        _809 = mem[_581 + 96]
        mem[mem[64] + 4] = mem[_581 + 12 len 20]
        mem[mem[64] + 36] = _809
        require ext_code.size(address(_582))
        call address(_582).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _809
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _914 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_914] == bool(mem[_914])
        if mem[_581 + 192] == 1:
            _1020 = mem[_581]
            _1022 = mem[_581 + 96]
            _1023 = mem[_581 + 64]
            _1024 = mem[_581 + 128]
            _1025 = mem[_581 + 160]
            mem[mem[64] + 4] = mem[_581 + 44 len 20]
            mem[mem[64] + 36] = _1022
            mem[mem[64] + 68] = address(_1023)
            mem[mem[64] + 100] = _1024
            mem[mem[64] + 132] = _1025
            require ext_code.size(address(_1020))
            call address(_1020).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1022, address(_1023), _1024, _1025
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1176] == mem[_1176]
            require mem[_1176 + 32] == mem[_1176 + 32]
            _573 = mem[96]
            idx = idx + 1
            s = mem[_1176]
            continue 
        if mem[_581 + 192] != 2:
            _573 = mem[96]
            idx = idx + 1
            s = s
            continue 
        _1032 = mem[_581]
        _1036 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1036 + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[_1036]
        mem[_1036 + 32] = mem[_581 + 44 len 20]
        require 1 < mem[_1036]
        mem[_1036 + 64] = mem[_581 + 76 len 20]
        _1088 = mem[_581 + 96]
        _1089 = mem[_581 + 128]
        mem[_1036 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1036 + 100] = _1088
        mem[_1036 + 132] = _1089
        mem[_1036 + 164] = 160
        mem[_1036 + 260] = mem[_1036]
        s = 0
        t = _1036 + 32
        u = _1036 + 292
        while s < mem[_1036]:
            mem[u] = mem[t + 12 len 20]
            _573 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_1036 + 196] = this.address
        mem[_1036 + 228] = cd[164]
        require ext_code.size(address(_1032))
        call address(_1032).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1036 + (32 * mem[_1036]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1240 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1248 = mem[_1240]
        require mem[_1240] <= test266151307()
        require _1240 + mem[_1240] + 31 < _1240 + return_data.size
        _1256 = mem[_1240 + mem[_1240]]
        require mem[_1240 + mem[_1240]] <= test266151307()
        require _1240 + ceil32(return_data.size) + (32 * mem[_1240 + mem[_1240]]) + 32 <= test266151307() and (32 * mem[_1240 + mem[_1240]]) + 32 >= 0
        mem[64] = _1240 + ceil32(return_data.size) + (32 * mem[_1240 + mem[_1240]]) + 32
        mem[_1240 + ceil32(return_data.size)] = _1256
        require _1248 + (32 * _1256) + 32 <= return_data.size
        s = 0
        t = _1240 + _1248 + 32
        u = _1240 + ceil32(return_data.size) + 32
        while s < _1256:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _573 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require 1 < _1256
        _573 = mem[96]
        idx = idx + 1
        s = mem[_1240 + ceil32(return_data.size) + 64]
        continue 
    if s < s:
        revert with 0, 'SafeMath: addition overflow'
    if s < cd[132]:
        revert with 0, 'ERR_LIMIT_OUT'
    if not s:
        mem[mem[64] + 4] = this.address
        if address(cd[36]) != 4100:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _618 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _629 = mem[_618]
            require mem[_618] == mem[_618]
            if mem[_618]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_618]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_618] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _629
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _629
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _780 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_780] == bool(mem[_780])
                    if not mem[_780]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _630 = mem[_619]
            require mem[_619] == mem[_619]
            if mem[_619]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_619]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_619] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _630
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _630
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_781] == bool(mem[_781])
                    if not mem[_781]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        if address(cd[68]) == 4100:
            require ext_code.size(stor1)
            call stor1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value s wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ERR_ETH_FAILED'
                mem[mem[64] + 4] = this.address
                if address(cd[36]) != 4100:
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _703 = mem[_679]
                    require mem[_679] == mem[_679]
                    if mem[_679]:
                        if address(cd[36]) == 4100:
                            require ext_code.size(stor1)
                            call stor1.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args mem[_679]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_679] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _703
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _703
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _951 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_951] == bool(mem[_951])
                            if not mem[_951]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _704 = mem[_680]
                    require mem[_680] == mem[_680]
                    if mem[_680]:
                        if address(cd[36]) == 4100:
                            require ext_code.size(stor1)
                            call stor1.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args mem[_680]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_680] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _704
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _704
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _952 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_952] == bool(mem[_952])
                            if not mem[_952]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                _624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_624] = return_data.size
                mem[_624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ERR_ETH_FAILED'
                mem[mem[64] + 4] = this.address
                if address(cd[36]) != 4100:
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _681 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _705 = mem[_681]
                    require mem[_681] == mem[_681]
                    if mem[_681]:
                        if address(cd[36]) == 4100:
                            require ext_code.size(stor1)
                            call stor1.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args mem[_681]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_681] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _705
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _705
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_953] == bool(mem[_953])
                            if not mem[_953]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _706 = mem[_682]
                    require mem[_682] == mem[_682]
                    if mem[_682]:
                        if address(cd[36]) == 4100:
                            require ext_code.size(stor1)
                            call stor1.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args mem[_682]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_682] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _706
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _706
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _954 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_954] == bool(mem[_954])
                            if not mem[_954]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = s
            require ext_code.size(address(cd[68]))
            call address(cd[68]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _633 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_633] == bool(mem[_633])
            if not mem[_633]:
                revert with 0, 'ERR_TRANSFER_FAILED'
            mem[mem[64] + 4] = this.address
            if address(cd[36]) != 4100:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _796 = mem[_738]
                require mem[_738] == mem[_738]
                if mem[_738]:
                    if address(cd[36]) == 4100:
                        require ext_code.size(stor1)
                        call stor1.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_738]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_738] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _796
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _796
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1086 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1086] == bool(mem[_1086])
                        if not mem[_1086]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _797 = mem[_739]
                require mem[_739] == mem[_739]
                if mem[_739]:
                    if address(cd[36]) == 4100:
                        require ext_code.size(stor1)
                        call stor1.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_739]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_739] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _797
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _797
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1087 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1087] == bool(mem[_1087])
                        if not mem[_1087]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
    return s
}



}
