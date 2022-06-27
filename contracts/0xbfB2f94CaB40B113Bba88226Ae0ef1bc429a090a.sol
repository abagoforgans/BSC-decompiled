contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_a9655c42(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if address(cd[((32 * idx) + cd[36] + 36)]) != stor0:
            _246 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_246]:
                revert with 0, 50
            mem[_246 + 32] = stor0
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if 1 >= mem[_246]:
                revert with 0, 50
            mem[_246 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_246 + 100] = stor1
            mem[_246 + 132] = 1000000000000 * 10^18
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, 1000000000000 * 10^18
            mem[_246 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _246 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_246 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_246 + ceil32(return_data.size) + 100] = 10^15
            mem[_246 + ceil32(return_data.size) + 132] = 0
            mem[_246 + ceil32(return_data.size) + 164] = 160
            mem[_246 + ceil32(return_data.size) + 260] = mem[_246]
            s = 0
            t = _246 + 32
            u = _246 + ceil32(return_data.size) + 292
            while s < mem[_246]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_246 + ceil32(return_data.size) + 196] = this.address
            mem[_246 + ceil32(return_data.size) + 228] = block.timestamp + 60
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 10^15, 0, 160, address(this.address), block.timestamp + 60, mem[_246 + ceil32(return_data.size) + 260 len (32 * mem[_246]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 163
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 163
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 163
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 163
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 <= calldata.size - cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _501 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _502 = mem[_501]
        require mem[_501] == mem[_501 + 12 len 20]
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _505 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _506 = mem[_505]
        require mem[_505] == mem[_505 + 12 len 20]
        _507 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 1 >= mem[_507]:
            revert with 0, 50
        mem[_507 + 64] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
        if 0 >= mem[_507]:
            revert with 0, 50
        if address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]) != address(_502):
            mem[_507 + 32] = address(_502)
            if 0 >= mem[_507]:
                revert with 0, 50
            mem[_507 + 100] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[_507 + 132] = 0x446c3b15f9926687d2c40534fdb564000000000000
            require ext_code.size(address(_502))
            call address(_502).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), 0x446c3b15f9926687d2c40534fdb564000000000000
            mem[_507 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_507 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 100] = 10^15
            mem[_507 + ceil32(return_data.size) + 132] = 0
            mem[_507 + ceil32(return_data.size) + 164] = 160
            mem[_507 + ceil32(return_data.size) + 260] = mem[_507]
            s = 0
            t = _507 + 32
            u = _507 + ceil32(return_data.size) + 292
            while s < mem[_507]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_507 + ceil32(return_data.size) + 196] = this.address
            mem[_507 + ceil32(return_data.size) + 228] = block.timestamp + 60
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _507 + ceil32(return_data.size) + (32 * mem[_507]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _731 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _733 = mem[_731]
            if mem[_731] < 1:
                revert with 0, 17
            _735 = mem[64]
            mem[mem[64] + 36] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[mem[64] + 68] = _733 - 1
            _736 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_735 + 100 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]]
            mem[cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] + _735 + 100] = 0
            mem[_736 + 32] = Mask(32, 224, sha3(call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]])) or mem[_736 + 36 len 28]
            _749 = mem[_736]
            s = 0
            while s < _749:
                mem[s + _735 + 100] = mem[_736 + s + 32]
                s = s + 32
                continue 
            if ceil32(_749) <= _749:
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len _749 + _735 + -mem[64] + 96]
                if not return_data.size:
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _941 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_941)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1017 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1025 = mem[_1017]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1025
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1025
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1049 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1049] == bool(mem[_1049])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1025
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1073 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1073:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1025, 0, 160, address(this.address), block.timestamp + 60, mem[mem[64] + 164 len (32 * _1073) + 32]
                else:
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_931] = return_data.size
                    mem[_931 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _943 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_943)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1018 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1026 = mem[_1018]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1026
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1026
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1050 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1050] == bool(mem[_1050])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    _1066 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1026
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1074 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1074:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1066 + 100] = this.address
                    mem[_1066 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1066 + (32 * _1074) + -mem[64] + 192]
            else:
                mem[_735 + _749 + 100] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len _749 + _735 + -mem[64] + 96]
                if not return_data.size:
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _957 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_957)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1021 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1033 = mem[_1021]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1033
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1033
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1053 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1053] == bool(mem[_1053])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    _1069 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1033
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1077 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1077:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1069 + 100] = this.address
                    mem[_1069 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1069 + (32 * _1077) + -mem[64] + 192]
                else:
                    _937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_937] = return_data.size
                    mem[_937 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _959 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_959)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1034 = mem[_1022]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1034
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1034
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1054 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1054] == bool(mem[_1054])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1034
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1078 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1078:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1034, 0, 160, address(this.address), block.timestamp + 60, mem[mem[64] + 164 len (32 * _1078) + 32]
        else:
            mem[_507 + 32] = address(_506)
            if 0 >= mem[_507]:
                revert with 0, 50
            mem[_507 + 100] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[_507 + 132] = 0x446c3b15f9926687d2c40534fdb564000000000000
            require ext_code.size(address(_506))
            call address(_506).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), 0x446c3b15f9926687d2c40534fdb564000000000000
            mem[_507 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_507 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 100] = 10^15
            mem[_507 + ceil32(return_data.size) + 132] = 0
            mem[_507 + ceil32(return_data.size) + 164] = 160
            mem[_507 + ceil32(return_data.size) + 260] = mem[_507]
            s = 0
            t = _507 + 32
            u = _507 + ceil32(return_data.size) + 292
            while s < mem[_507]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_507 + ceil32(return_data.size) + 196] = this.address
            mem[_507 + ceil32(return_data.size) + 228] = block.timestamp + 60
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _507 + ceil32(return_data.size) + (32 * mem[_507]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _734 = mem[_732]
            if mem[_732] < 1:
                revert with 0, 17
            _737 = mem[64]
            mem[mem[64] + 36] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[mem[64] + 68] = _734 - 1
            _738 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_737 + 100 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]]
            mem[cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] + _737 + 100] = 0
            mem[_738 + 32] = Mask(32, 224, sha3(call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]])) or mem[_738 + 36 len 28]
            _750 = mem[_738]
            s = 0
            while s < _750:
                mem[s + _737 + 100] = mem[_738 + s + 32]
                s = s + 32
                continue 
            if ceil32(_750) <= _750:
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len _750 + _737 + -mem[64] + 96]
                if not return_data.size:
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _947 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_947)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1027 = mem[_1019]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1027
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1027
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1051 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1051] == bool(mem[_1051])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1027
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1075 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1075:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1027, 0, 160, address(this.address), block.timestamp + 60, mem[mem[64] + 164 len (32 * _1075) + 32]
                else:
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_933] = return_data.size
                    mem[_933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _949 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_949)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1020 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1028 = mem[_1020]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1028
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1028
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1052 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1052] == bool(mem[_1052])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    _1068 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1028
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1076 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1076:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1068 + 100] = this.address
                    mem[_1068 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1068 + (32 * _1076) + -mem[64] + 192]
            else:
                mem[_737 + _750 + 100] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len _750 + _737 + -mem[64] + 96]
                if not return_data.size:
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _965 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_965)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1023 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1039 = mem[_1023]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1039
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1039
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1055] == bool(mem[_1055])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    _1071 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1039
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1079 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1079:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1071 + 100] = this.address
                    mem[_1071 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1071 + (32 * _1079) + -mem[64] + 192]
                else:
                    _940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_940] = return_data.size
                    mem[_940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    _967 = mem[_507 + 32]
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 1 >= mem[_507]:
                        revert with 0, 50
                    if 0 >= mem[_507]:
                        revert with 0, 50
                    mem[_507 + 32] = mem[_507 + 76 len 20]
                    mem[_507 + 64] = address(_967)
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1040 = mem[_1024]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    mem[mem[64] + 36] = _1040
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), _1040
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1056 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1056] == bool(mem[_1056])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    _1072 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1040
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1080 = mem[_507]
                    mem[mem[64] + 164] = mem[_507]
                    s = 0
                    t = _507 + 32
                    u = mem[64] + 196
                    while s < _1080:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1072 + 100] = this.address
                    mem[_1072 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
                    call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1072 + (32 * _1080) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _751 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _754 = mem[_751]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _754
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _754
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_763] == bool(mem[_763])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
