contract main {




// =====================  Runtime code  =====================


#
#  - sub_2bf48be3(?)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Contract has zero token balance'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b680a32c(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == bool(arg5)
    staticcall address(arg1).WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(ext_call.return_data[0]) != address(arg3):
        mem[(4 * ceil32(return_data.size)) + 96] = 3
        staticcall address(arg1).WETH() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(4 * ceil32(return_data.size)) + 192] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 228] = arg4
        mem[(6 * ceil32(return_data.size)) + 260] = 64
        mem[(6 * ceil32(return_data.size)) + 292] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 324
        while idx < mem[(4 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(arg1).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _68 = mem[_66]
        require mem[_66] <= test266151307()
        require _66 + mem[_66] + 31 < _66 + return_data.size
        _70 = mem[_66 + mem[_66]]
        if mem[_66 + mem[_66]] > test266151307():
            revert with 'NH{q', 65
        if _66 + ceil32(return_data.size) + floor32(mem[_66 + mem[_66]]) + 1 > test266151307() or floor32(mem[_66 + mem[_66]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _66 + ceil32(return_data.size) + floor32(mem[_66 + mem[_66]]) + 1
        mem[_66 + ceil32(return_data.size)] = _70
        require _68 + (32 * _70) + 32 <= return_data.size
        idx = _66 + _68 + 32
        s = _66 + ceil32(return_data.size) + 32
        while idx < _66 + _68 + (32 * _70) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _70 < 1:
            revert with 'NH{q', 17
        if _70 - 1 >= _70:
            revert with 'NH{q', 50
        _158 = mem[(32 * _70 - 1) + _66 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _166 = mem[_164]
        require mem[_164] == mem[_164]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _170 = mem[(4 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _170:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _170) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _256 = mem[_254]
        require mem[_254] == mem[_254]
        if mem[_254] < _166:
            revert with 'NH{q', 17
        if _158 < mem[_254] - _166:
            revert with 'NH{q', 17
        if _158 - mem[_254] + _166 and 10^18 > -1 / _158 - mem[_254] + _166:
            revert with 'NH{q', 17
        if not _158:
            revert with 'NH{q', 18
        if uint8(var326002) < var326001:
            if var338003 < var338001:
                revert with 'NH{q', 17
            # nil
        else:
            if not arg5:
                emit 0x30658b22: address(arg2), (10^18 * _158) - (10^18 * mem[_254]) + (10^18 * _166) / _158, bool(arg5), 0
                return (10^18 * _158) - (10^18 * mem[_254]) + (10^18 * _166) / _158, 0
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _256 - _166
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _256 - _166
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1016 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1016] == bool(mem[_1016])
            _1036 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _256 - _166
            mem[mem[64] + 36] = 64
            _1040 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 100
            while idx < _1040:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1036 + (32 * _1040) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1184 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1186 = mem[_1184]
            require mem[_1184] <= test266151307()
            require _1184 + mem[_1184] + 31 < _1184 + return_data.size
            _1188 = mem[_1184 + mem[_1184]]
            if mem[_1184 + mem[_1184]] > test266151307():
                revert with 'NH{q', 65
            if _1184 + ceil32(return_data.size) + floor32(mem[_1184 + mem[_1184]]) + 1 > test266151307() or floor32(mem[_1184 + mem[_1184]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1184 + ceil32(return_data.size) + floor32(mem[_1184 + mem[_1184]]) + 1
            mem[_1184 + ceil32(return_data.size)] = _1188
            require _1186 + (32 * _1188) + 32 <= return_data.size
            idx = _1184 + _1186 + 32
            s = _1184 + ceil32(return_data.size) + 32
            while idx < _1184 + _1186 + (32 * _1188) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _1188 < 1:
                revert with 'NH{q', 17
            if _1188 - 1 >= _1188:
                revert with 'NH{q', 50
            _1342 = mem[(32 * _1188 - 1) + _1184 + ceil32(return_data.size) + 32]
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1360 = mem[_1348]
            require mem[_1348] == mem[_1348 + 12 len 20]
            mem[mem[64] + 4] = owner
            staticcall address(_1360).0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1378 = mem[_1376]
            require mem[_1376] == mem[_1376]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _256 - _166
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _1398 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _1398:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = owner
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _256 - _166, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _1398) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            _1502 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1504 = mem[_1502]
            require mem[_1502] == mem[_1502 + 12 len 20]
            mem[mem[64] + 4] = owner
            staticcall address(_1504).0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1518] == mem[_1518]
            if mem[_1518] < _1378:
                revert with 'NH{q', 17
            if _1342 < mem[_1518] - _1378:
                revert with 'NH{q', 17
            if _1342 - mem[_1518] + _1378 and 10^18 > -1 / _1342 - mem[_1518] + _1378:
                revert with 'NH{q', 17
            if not _1342:
                revert with 'NH{q', 18
            emit 0x30658b22: address(arg2), (10^18 * _158) - (10^18 * _256) + (10^18 * _166) / _158, bool(arg5), (10^18 * _1342) - (10^18 * mem[_1518]) + (10^18 * _1378) / _1342
            return (10^18 * _158) - (10^18 * _256) + (10^18 * _166) / _158, 
                   (10^18 * _1342) - (10^18 * mem[_1518]) + (10^18 * _1378) / _1342
    else:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        staticcall address(arg1).WETH() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = arg4
        mem[(6 * ceil32(return_data.size)) + 228] = 64
        mem[(6 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 292
        while idx < mem[(4 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(arg1).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_67]
        require mem[_67] <= test266151307()
        require _67 + mem[_67] + 31 < _67 + return_data.size
        _71 = mem[_67 + mem[_67]]
        if mem[_67 + mem[_67]] > test266151307():
            revert with 'NH{q', 65
        if _67 + ceil32(return_data.size) + floor32(mem[_67 + mem[_67]]) + 1 > test266151307() or floor32(mem[_67 + mem[_67]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _67 + ceil32(return_data.size) + floor32(mem[_67 + mem[_67]]) + 1
        mem[_67 + ceil32(return_data.size)] = _71
        require _69 + (32 * _71) + 32 <= return_data.size
        idx = _67 + _69 + 32
        s = _67 + ceil32(return_data.size) + 32
        while idx < _67 + _69 + (32 * _71) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _71 < 1:
            revert with 'NH{q', 17
        if _71 - 1 >= _71:
            revert with 'NH{q', 50
        _160 = mem[(32 * _71 - 1) + _67 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _167 = mem[_165]
        require mem[_165] == mem[_165]
        _169 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _171 = mem[(4 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _171:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_169 + 100] = this.address
        mem[_169 + 132] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _169 + (32 * _171) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _257 = mem[_255]
        require mem[_255] == mem[_255]
        if mem[_255] < _167:
            revert with 'NH{q', 17
        if _160 < mem[_255] - _167:
            revert with 'NH{q', 17
        if _160 - mem[_255] + _167 and 10^18 > -1 / _160 - mem[_255] + _167:
            revert with 'NH{q', 17
        if not _160:
            revert with 'NH{q', 18
        if uint8(var325002) < var325001:
            if var337003 < var337001:
                revert with 'NH{q', 17
            # nil
        else:
            if not arg5:
                emit 0x30658b22: address(arg2), (10^18 * _160) - (10^18 * mem[_255]) + (10^18 * _167) / _160, bool(arg5), 0
                return (10^18 * _160) - (10^18 * mem[_255]) + (10^18 * _167) / _160, 0
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _257 - _167
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _257 - _167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1018 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1018] == bool(mem[_1018])
            _1038 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _257 - _167
            mem[mem[64] + 36] = 64
            _1041 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 100
            while idx < _1041:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1038 + (32 * _1041) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1185 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1187 = mem[_1185]
            require mem[_1185] <= test266151307()
            require _1185 + mem[_1185] + 31 < _1185 + return_data.size
            _1189 = mem[_1185 + mem[_1185]]
            if mem[_1185 + mem[_1185]] > test266151307():
                revert with 'NH{q', 65
            if _1185 + ceil32(return_data.size) + floor32(mem[_1185 + mem[_1185]]) + 1 > test266151307() or floor32(mem[_1185 + mem[_1185]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1185 + ceil32(return_data.size) + floor32(mem[_1185 + mem[_1185]]) + 1
            mem[_1185 + ceil32(return_data.size)] = _1189
            require _1187 + (32 * _1189) + 32 <= return_data.size
            idx = _1185 + _1187 + 32
            s = _1185 + ceil32(return_data.size) + 32
            while idx < _1185 + _1187 + (32 * _1189) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _1189 < 1:
                revert with 'NH{q', 17
            if _1189 - 1 >= _1189:
                revert with 'NH{q', 50
            _1345 = mem[(32 * _1189 - 1) + _1185 + ceil32(return_data.size) + 32]
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1350 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1362 = mem[_1350]
            require mem[_1350] == mem[_1350 + 12 len 20]
            mem[mem[64] + 4] = owner
            staticcall address(_1362).0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1379 = mem[_1377]
            require mem[_1377] == mem[_1377]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _257 - _167
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _1399 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _1399:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = owner
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _257 - _167, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _1399) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            _1503 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1505 = mem[_1503]
            require mem[_1503] == mem[_1503 + 12 len 20]
            mem[mem[64] + 4] = owner
            staticcall address(_1505).0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1519] == mem[_1519]
            if mem[_1519] < _1379:
                revert with 'NH{q', 17
            if _1345 < mem[_1519] - _1379:
                revert with 'NH{q', 17
            if _1345 - mem[_1519] + _1379 and 10^18 > -1 / _1345 - mem[_1519] + _1379:
                revert with 'NH{q', 17
            if not _1345:
                revert with 'NH{q', 18
            emit 0x30658b22: address(arg2), (10^18 * _160) - (10^18 * _257) + (10^18 * _167) / _160, bool(arg5), (10^18 * _1345) - (10^18 * mem[_1519]) + (10^18 * _1379) / _1345
            return (10^18 * _160) - (10^18 * _257) + (10^18 * _167) / _160, 
                   (10^18 * _1345) - (10^18 * mem[_1519]) + (10^18 * _1379) / _1345
}



}
