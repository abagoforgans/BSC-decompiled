contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
array of address stor4;
uint8 stor5;
uint256 stor6;
uint8 stor7; offset 160
uint128 stor7; offset 160
address stor7;

function _fallback() payable {
    revert
}

function sub_8623acad(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor7.field_0) != msg.sender:
        revert with 0, 'O'
    stor6 = arg1
}

function sub_720da394(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor7.field_0) != msg.sender:
        revert with 0, 'O'
    address(stor7.field_0) = address(arg1)
}

function withdrawBNB() {
    if address(stor7.field_0) != msg.sender:
        revert with 0, 'O'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'E2'
}

function sub_bbc25916(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if address(stor7.field_0) != msg.sender:
        revert with 0, 'O'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, bool(arg1))
    stor5 = uint8(bool(arg2))
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor7.field_0) != msg.sender:
        revert with 0, 'O'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'E1'
    if arg1 != this.address:
        revert with 0, 'E2'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call 0x254246331cacbc0b2ea12bef6632e4c6075f60e2 with:
       value arg3 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'E7'
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    call 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    if not return_data.size:
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 292
        while idx < stor1.length:
            mem[t] = stor1[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp + 30, stor1.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor1.length]
    else:
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
        while idx < stor1.length:
            mem[t] = stor1[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp + 30, stor1.length, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * stor1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value arg3 + arg4 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor7.field_0) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'E4'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}

function sub_ff1ba160(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor7.field_160):
        revert with 0, 'D'
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = 0x254246331cacbc0b2ea12bef6632e4c6075f60e2
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.0x70a08231 with:
            gas gas_remaining wei
           args 0x254246331cacbc0b2ea12bef6632e4c6075f60e2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 10:
        mem[(2 * ceil32(return_data.size)) + 100] = 0x254246331cacbc0b2ea12bef6632e4c6075f60e2
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args 0x254246331cacbc0b2ea12bef6632e4c6075f60e2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        mem[(4 * ceil32(return_data.size)) + 132] = 64
        mem[(4 * ceil32(return_data.size)) + 164] = stor4.length
        mem[0] = 4
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 196
        while idx < stor4.length:
            mem[t] = stor4[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=stor4.length, data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * stor4.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _65 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _67 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _67
        require _65 + (32 * _67) + 32 <= return_data.size
        idx = (4 * ceil32(return_data.size)) + _65 + 128
        s = (6 * ceil32(return_data.size)) + 128
        while idx < (4 * ceil32(return_data.size)) + _65 + (32 * _67) + 128:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _67:
            revert with 'NH{q', 50
        _133 = mem[(6 * ceil32(return_data.size)) + 160]
        if ext_call.return_data[0] and mem[(6 * ceil32(return_data.size)) + 160] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160] / ext_call.return_data[0] and 9925 > -1 / ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 9925 * ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160] / ext_call.return_data[0] / 10000 and 9975 > -1 / 9925 * ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160] / ext_call.return_data[0] / 10000:
            revert with 'NH{q', 17
        _135 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 9975 * 9925 * ext_call.return_data[0] * _133 / ext_call.return_data[0] / 10000 / 10000
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = stor1.length
        mem[0] = 1
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < stor1.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _135 + (32 * stor1.length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _211 = mem[_209]
        require mem[_209] <= test266151307()
        require _209 + mem[_209] + 31 < _209 + return_data.size
        _213 = mem[_209 + mem[_209]]
        if mem[_209 + mem[_209]] > test266151307():
            revert with 'NH{q', 65
        if _209 + ceil32(return_data.size) + floor32(mem[_209 + mem[_209]]) + 1 > test266151307() or floor32(mem[_209 + mem[_209]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _209 + ceil32(return_data.size) + floor32(mem[_209 + mem[_209]]) + 1
        mem[_209 + ceil32(return_data.size)] = _213
        require _211 + (32 * _213) + 32 <= return_data.size
        idx = _209 + _211 + 32
        s = _209 + ceil32(return_data.size) + 32
        while idx < _209 + _211 + (32 * _213) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _213:
            revert with 'NH{q', 50
        _327 = mem[_209 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[mem[64] + 36] = arg1
        staticcall stor0.flashFee(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _335 = mem[_333]
        require mem[_333] == mem[_333]
        if arg1 > -stor6 - 1:
            revert with 'NH{q', 17
        if arg1 + stor6 > -mem[_333] - 1:
            revert with 'NH{q', 17
        if _327 > arg1 + stor6 + mem[_333]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor0
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _353 = mem[_347]
            require mem[_347] == mem[_347]
            if mem[_347] > -arg1 - 1:
                revert with 'NH{q', 17
            if mem[_347] + arg1 > -_335 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _353 + arg1 + _335
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor0, _353 + arg1 + _335
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_363] == bool(mem[_363])
            _373 = mem[64]
            mem[64] = mem[64] + 32
            mem[_373 + 32] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
            mem[_373 + 36] = this.address
            mem[_373 + 68] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[_373 + 100] = arg1
            mem[_373 + 132] = 128
            mem[_373 + 164] = mem[_373]
            mem[_373 + 196 len ceil32(mem[_373])] = mem[_373 + 32 len ceil32(mem[_373])]
            if ceil32(mem[_373]) > mem[_373]:
                mem[_373 + mem[_373] + 196] = 0
            call stor0.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args address(this.address), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, Array(len=mem[_373], data=mem[_373 + 196 len ceil32(mem[_373])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x7bf5e362: (_327 or 0x8000000000000000000000000000000000000000000000000000000000000000)
        else:
            if stor5:
                emit 0x7bf5e362: _327
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor0
                staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _355 = mem[_351]
                require mem[_351] == mem[_351]
                if mem[_351] > -arg1 - 1:
                    revert with 'NH{q', 17
                if mem[_351] + arg1 > -_335 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _355 + arg1 + _335
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, _355 + arg1 + _335
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_367] == bool(mem[_367])
                _376 = mem[64]
                mem[64] = mem[64] + 32
                mem[_376 + 32] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                mem[_376 + 36] = this.address
                mem[_376 + 68] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[_376 + 100] = arg1
                mem[_376 + 132] = 128
                mem[_376 + 164] = mem[_376]
                mem[_376 + 196 len ceil32(mem[_376])] = mem[_376 + 32 len ceil32(mem[_376])]
                if ceil32(mem[_376]) > mem[_376]:
                    mem[_376 + mem[_376] + 196] = 0
                call stor0.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, Array(len=mem[_376], data=mem[_376 + 196 len ceil32(mem[_376])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x7bf5e362: (_327 or 0x8000000000000000000000000000000000000000000000000000000000000000)
    else:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 100] = 0x254246331cacbc0b2ea12bef6632e4c6075f60e2
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args 0x254246331cacbc0b2ea12bef6632e4c6075f60e2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        mem[(4 * ceil32(return_data.size)) + 132] = 64
        mem[(4 * ceil32(return_data.size)) + 164] = stor4.length
        mem[0] = 4
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 196
        while idx < stor4.length:
            mem[t] = stor4[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=stor4.length, data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * stor4.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _66 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _68 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _68
        require _66 + (32 * _68) + 32 <= return_data.size
        idx = (4 * ceil32(return_data.size)) + _66 + 128
        s = (6 * ceil32(return_data.size)) + 128
        while idx < (4 * ceil32(return_data.size)) + _66 + (32 * _68) + 128:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _68:
            revert with 'NH{q', 50
        _134 = mem[(6 * ceil32(return_data.size)) + 160]
        if 0 and mem[(6 * ceil32(return_data.size)) + 160] > -1 / 0:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) - (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) / ext_call.return_data[0] and 9925 > -1 / (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) - (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 9925 * (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) - (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) / ext_call.return_data[0] / 10000 and 9975 > -1 / 9925 * (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) - (ext_call.return_data[0] * mem[(6 * ceil32(return_data.size)) + 160]) / ext_call.return_data[0] / 10000:
            revert with 'NH{q', 17
        _136 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 9975 * 9925 * (ext_call.return_data[0] * _134) - (ext_call.return_data[0] * _134) / ext_call.return_data[0] / 10000 / 10000
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = stor1.length
        mem[0] = 1
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < stor1.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _136 + (32 * stor1.length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _212 = mem[_210]
        require mem[_210] <= test266151307()
        require _210 + mem[_210] + 31 < _210 + return_data.size
        _214 = mem[_210 + mem[_210]]
        if mem[_210 + mem[_210]] > test266151307():
            revert with 'NH{q', 65
        if _210 + ceil32(return_data.size) + floor32(mem[_210 + mem[_210]]) + 1 > test266151307() or floor32(mem[_210 + mem[_210]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _210 + ceil32(return_data.size) + floor32(mem[_210 + mem[_210]]) + 1
        mem[_210 + ceil32(return_data.size)] = _214
        require _212 + (32 * _214) + 32 <= return_data.size
        idx = _210 + _212 + 32
        s = _210 + ceil32(return_data.size) + 32
        while idx < _210 + _212 + (32 * _214) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _214:
            revert with 'NH{q', 50
        _329 = mem[_210 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[mem[64] + 36] = arg1
        staticcall stor0.flashFee(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _334 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _336 = mem[_334]
        require mem[_334] == mem[_334]
        if arg1 > -stor6 - 1:
            revert with 'NH{q', 17
        if arg1 + stor6 > -mem[_334] - 1:
            revert with 'NH{q', 17
        if _329 > arg1 + stor6 + mem[_334]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor0
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _354 = mem[_349]
            require mem[_349] == mem[_349]
            if mem[_349] > -arg1 - 1:
                revert with 'NH{q', 17
            if mem[_349] + arg1 > -_336 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _354 + arg1 + _336
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor0, _354 + arg1 + _336
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_365] == bool(mem[_365])
            _374 = mem[64]
            mem[64] = mem[64] + 32
            mem[_374 + 32] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
            mem[_374 + 36] = this.address
            mem[_374 + 68] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[_374 + 100] = arg1
            mem[_374 + 132] = 128
            mem[_374 + 164] = mem[_374]
            mem[_374 + 196 len ceil32(mem[_374])] = mem[_374 + 32 len ceil32(mem[_374])]
            if ceil32(mem[_374]) > mem[_374]:
                mem[_374 + mem[_374] + 196] = 0
            call stor0.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args address(this.address), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, Array(len=mem[_374], data=mem[_374 + 196 len ceil32(mem[_374])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x7bf5e362: (_329 or 0x8000000000000000000000000000000000000000000000000000000000000000)
        else:
            if stor5:
                emit 0x7bf5e362: _329
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor0
                staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _356 = mem[_352]
                require mem[_352] == mem[_352]
                if mem[_352] > -arg1 - 1:
                    revert with 'NH{q', 17
                if mem[_352] + arg1 > -_336 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _356 + arg1 + _336
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, _356 + arg1 + _336
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_368] == bool(mem[_368])
                _378 = mem[64]
                mem[64] = mem[64] + 32
                mem[_378 + 32] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                mem[_378 + 36] = this.address
                mem[_378 + 68] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[_378 + 100] = arg1
                mem[_378 + 132] = 128
                mem[_378 + 164] = mem[_378]
                mem[_378 + 196 len ceil32(mem[_378])] = mem[_378 + 32 len ceil32(mem[_378])]
                if ceil32(mem[_378]) > mem[_378]:
                    mem[_378 + mem[_378] + 196] = 0
                call stor0.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, Array(len=mem[_378], data=mem[_378 + 196 len ceil32(mem[_378])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x7bf5e362: (_329 or 0x8000000000000000000000000000000000000000000000000000000000000000)
}



}
