contract main {




// =====================  Runtime code  =====================


#
#  - swapToken(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 balanceOf;
address factoryAddress;
address routerAddress;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function getOwner() {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed to do that'
    return owner
}

function factory() {
    return factoryAddress
}

function router() {
    return routerAddress
}

function deposit() payable {
    if balanceOf[msg.sender] > !msg.value:
        revert with 'NH{q', 17
    balanceOf[msg.sender] += msg.value
    emit Deposit(msg.value, msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed to do that'
    owner = arg1
}

function tokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawAll() payable {
    if balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 'NH{q', 17
    balanceOf[msg.sender] = 0
    call msg.sender with:
       value balanceOf[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(balanceOf[msg.sender], msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Insufficient balance'
    if balanceOf[msg.sender] < arg1:
        revert with 'NH{q', 17
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(arg1, msg.sender);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if balanceOf[msg.sender] > !msg.value:
            revert with 'NH{q', 17
        balanceOf[msg.sender] += msg.value
        emit Deposit(msg.value, msg.sender);
    if unknown_0xcc87ab2a(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x853828b6(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Only owner is allowed to do that'
                    return owner
                require unknown_0xc45a0155(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return factoryAddress
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 'NH{q', 17
            balanceOf[msg.sender] = 0
            call msg.sender with:
               value balanceOf[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawal(balanceOf[msg.sender], msg.sender);
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x2e1a7d4d(?????):
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[arg1]
            require calldata.size - 4 >= 32
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 'Insufficient balance'
            if balanceOf[msg.sender] < arg1:
                revert with 'NH{q', 17
            balanceOf[msg.sender] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawal(arg1, msg.sender);
    if unknown_0xeedc966a(?????) <= uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0xeedc966a(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                require unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return routerAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Only owner is allowed to do that'
            owner = address(arg1)
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if uint32(call.func_hash) >> 224 != unknown_0xcc87ab2a(?????):
        require unknown_0xd0e30db0(?????) == uint32(call.func_hash) >> 224
        if balanceOf[msg.sender] > !msg.value:
            revert with 'NH{q', 17
        balanceOf[msg.sender] += msg.value
        emit Deposit(msg.value, msg.sender);
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Invalid token address'
    if 90 > !block.timestamp:
        revert with 'NH{q', 17
    mem[128] = 2
    mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[192] = address(arg1)
    if not arg2:
        mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[228] = 0
        mem[260] = 128
        mem[356] = 2
        idx = 0
        s = 160
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp + 90
        require ext_code.size(routerAddress)
        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 90, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[228] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Invalid to receive less tokens than expected'
        emit Swapped(msg.value, ext_call.return_data[0], address(arg1));
        mem[ceil32(return_data.size) + 228] = routerAddress
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Approval failed'
        mem[160] = address(arg1)
        mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if not arg2:
            if not mem[96]:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = 2
            mem[(2 * ceil32(return_data.size)) + 388] = 2
            idx = 0
            s = 160
            t = (2 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = this.address
            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 90
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 2, 0, 160, address(this.address), block.timestamp + 90, 2, mem[(2 * ceil32(return_data.size)) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                revert with 0, 'Did not sell anything'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Invalid token balance after sell'
            mem[(4 * ceil32(return_data.size)) + 324 len 96] = 0, msg.sender, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 324 len 28]
            call address(arg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 328 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require not mem[96]
            else:
                mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                    if not mem[(4 * ceil32(return_data.size)) + 356]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 2
        mem[(2 * ceil32(return_data.size)) + 260] = 64
        mem[(2 * ceil32(return_data.size)) + 292] = 2
        idx = 0
        s = 160
        t = (2 * ceil32(return_data.size)) + 324
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _1485 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _1487 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = _1487
        require return_data.size >= _1485 + (32 * _1487) + 32
        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _1487] = mem[(2 * ceil32(return_data.size)) + _1485 + 256 len 32 * _1487]
        if 1 >= _1487:
            revert with 'NH{q', 50
        if 100 < arg2:
            revert with 'NH{q', 17
        if mem[(4 * ceil32(return_data.size)) + 288] / 100 and -arg2 + 100 > -1 / mem[(4 * ceil32(return_data.size)) + 288] / 100:
            revert with 'NH{q', 17
        if 1 >= _1487:
            revert with 'NH{q', 50
        mem[(4 * ceil32(return_data.size)) + 288] = (100 * mem[(4 * ceil32(return_data.size)) + 288] / 100) - (arg2 * mem[(4 * ceil32(return_data.size)) + 288] / 100)
        if 1 >= _1487:
            revert with 'NH{q', 50
        if mem[(4 * ceil32(return_data.size)) + 288] <= 0:
            revert with 0, 'Invalid amountsOut'
        if 1 >= _1487:
            revert with 'NH{q', 50
        _2308 = mem[(4 * ceil32(return_data.size)) + 288]
        if not _1487:
            revert with 'NH{q', 50
        _2319 = mem[(4 * ceil32(return_data.size)) + 256]
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2319
        mem[mem[64] + 36] = _2308
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 160
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 90
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _2319, _2308, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 90
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2820 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2823 = mem[_2820]
        if mem[_2820] >= ext_call.return_data[0]:
            revert with 0, 'Did not sell anything'
        if mem[_2820] <= 0:
            revert with 0, 'Invalid token balance after sell'
        _2833 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _2823
        _2834 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2834 + 32 len 4] = unknown_0xa9059cbb(?????)
        _2843 = mem[_2834]
        mem[_2833 + 100 len ceil32(mem[_2834])] = mem[_2834 + 32 len ceil32(mem[_2834])]
        if ceil32(_2843) <= _2843:
            call address(arg1) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2843 + _2833 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require not mem[96]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3354]:
                    revert with 0, 'Invalid token balance after transfer'
                emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ext_call.return_data[0], mem[_3446]
            _3292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3292] = return_data.size
            mem[_3292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3355]:
                    revert with 0, 'Invalid token balance after transfer'
                emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ext_call.return_data[0], mem[_3448]
            require return_data.size >= 32
            require mem[_3292 + 32] == bool(mem[_3292 + 32])
            if not mem[_3292 + 32]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3411 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3411]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3516 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ext_call.return_data[0], mem[_3516]
        mem[_2833 + _2843 + 100] = 0
        call address(arg1) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2843 + _2833 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            require not mem[96]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3360]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ext_call.return_data[0], mem[_3458]
        _3296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_3296] = return_data.size
        mem[_3296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not return_data.size:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3361 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3361]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3460 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ext_call.return_data[0], mem[_3460]
        require return_data.size >= 32
        require mem[_3296 + 32] == bool(mem[_3296 + 32])
        if not mem[_3296 + 32]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3433 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3433]:
            revert with 0, 'Invalid token balance after transfer'
        emit TokenTransferred(address(arg1), msg.sender, ext_call.return_data[0]);
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ext_call.return_data[0], mem[_3532]
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = msg.value
    mem[260] = 64
    mem[292] = 2
    idx = 0
    s = 160
    t = 324
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _768 = mem[224 len 4], Mask(224, 32, msg.value) >> 32
    require mem[224 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 255 < return_data.size + 224
    _770 = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
    require return_data.size >= _768 + (32 * _770) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _770] = mem[_768 + 256 len 32 * _770]
    if 1 >= _770:
        revert with 'NH{q', 50
    if 100 < arg2:
        revert with 'NH{q', 17
    if mem[ceil32(return_data.size) + 288] / 100 and -arg2 + 100 > -1 / mem[ceil32(return_data.size) + 288] / 100:
        revert with 'NH{q', 17
    if 1 >= _770:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 288] = (100 * mem[ceil32(return_data.size) + 288] / 100) - (arg2 * mem[ceil32(return_data.size) + 288] / 100)
    if 1 >= _770:
        revert with 'NH{q', 50
    if mem[ceil32(return_data.size) + 288] <= 0:
        revert with 0, 'Invalid amountsOut'
    if 1 >= _770:
        revert with 'NH{q', 50
    _1519 = mem[ceil32(return_data.size) + 288]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1519
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 160
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp + 90
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _1519, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 90
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2178 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2193 = mem[_2178]
    if mem[_2178] < _1519:
        revert with 0, 'Invalid to receive less tokens than expected'
    emit Swapped(msg.value, mem[_2178], address(arg1));
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = _2193
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, _2193
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2222 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2222] == bool(mem[_2222])
    if not mem[_2222]:
        revert with 0, 'Approval failed'
    mem[160] = address(arg1)
    mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if not arg2:
        if not mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _2310 = mem[ceil32(return_data.size) + 256]
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2310
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 160
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 90
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _2310, 0, 160, address(this.address), block.timestamp + 90, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2821 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2824 = mem[_2821]
        if mem[_2821] >= _2193:
            revert with 0, 'Did not sell anything'
        if mem[_2821] <= 0:
            revert with 0, 'Invalid token balance after sell'
        _2838 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _2824
        _2839 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2839 + 32 len 4] = unknown_0xa9059cbb(?????)
        _2844 = mem[_2839]
        mem[_2838 + 100 len ceil32(mem[_2839])] = mem[_2839 + 32 len ceil32(mem[_2839])]
        if ceil32(_2844) <= _2844:
            call address(arg1) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2844 + _2838 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require not mem[96]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3356]:
                    revert with 0, 'Invalid token balance after transfer'
                emit TokenTransferred(address(arg1), msg.sender, _2193);
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return _2193, mem[_3452]
            _3294 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3294] = return_data.size
            mem[_3294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3357 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3357]:
                    revert with 0, 'Invalid token balance after transfer'
                emit TokenTransferred(address(arg1), msg.sender, _2193);
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return _2193, mem[_3454]
            require return_data.size >= 32
            require mem[_3294 + 32] == bool(mem[_3294 + 32])
            if not mem[_3294 + 32]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3421]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, _2193);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return _2193, mem[_3522]
        mem[_2838 + _2844 + 100] = 0
        call address(arg1) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2844 + _2838 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            require not mem[96]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3364]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, _2193);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3462 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return _2193, mem[_3462]
        _3297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_3297] = return_data.size
        mem[_3297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not return_data.size:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3365]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, _2193);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return _2193, mem[_3464]
        require return_data.size >= 32
        require mem[_3297 + 32] == bool(mem[_3297 + 32])
        if not mem[_3297 + 32]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3445]:
            revert with 0, 'Invalid token balance after transfer'
        emit TokenTransferred(address(arg1), msg.sender, _2193);
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3538 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return _2193, mem[_3538]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _2193 / 2
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 160
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args Mask(255, 1, _2193), Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2819 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2822 = mem[_2819]
    require mem[_2819] <= test266151307()
    require _2819 + mem[_2819] + 31 < _2819 + return_data.size
    _2825 = mem[_2819 + mem[_2819]]
    if mem[_2819 + mem[_2819]] > test266151307():
        revert with 'NH{q', 65
    if _2819 + ceil32(return_data.size) + ceil32(32 * mem[_2819 + mem[_2819]]) + 1 > test266151307() or ceil32(32 * mem[_2819 + mem[_2819]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _2819 + ceil32(return_data.size) + ceil32(32 * mem[_2819 + mem[_2819]]) + 1
    mem[_2819 + ceil32(return_data.size)] = _2825
    require return_data.size >= _2822 + (32 * _2825) + 32
    mem[_2819 + ceil32(return_data.size) + 32 len 32 * _2825] = mem[_2819 + _2822 + 32 len 32 * _2825]
    if 1 >= _2825:
        revert with 'NH{q', 50
    if 100 < arg2:
        revert with 'NH{q', 17
    if mem[_2819 + ceil32(return_data.size) + 64] / 100 and -arg2 + 100 > -1 / mem[_2819 + ceil32(return_data.size) + 64] / 100:
        revert with 'NH{q', 17
    if 1 >= _2825:
        revert with 'NH{q', 50
    mem[_2819 + ceil32(return_data.size) + 64] = (100 * mem[_2819 + ceil32(return_data.size) + 64] / 100) - (arg2 * mem[_2819 + ceil32(return_data.size) + 64] / 100)
    if 1 >= _2825:
        revert with 'NH{q', 50
    if mem[_2819 + ceil32(return_data.size) + 64] <= 0:
        revert with 0, 'Invalid amountsOut'
    if 1 >= _2825:
        revert with 'NH{q', 50
    _3539 = mem[_2819 + ceil32(return_data.size) + 64]
    if not _2825:
        revert with 'NH{q', 50
    _3554 = mem[_2819 + ceil32(return_data.size) + 32]
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _3554
    mem[mem[64] + 36] = _3539
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 160
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 90
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _3554, _3539, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 90
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3729 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3730 = mem[_3729]
    if mem[_3729] >= _2193:
        revert with 0, 'Did not sell anything'
    if mem[_3729] <= 0:
        revert with 0, 'Invalid token balance after sell'
    _3734 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _3730
    _3735 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_3735 + 32 len 4] = unknown_0xa9059cbb(?????)
    _3739 = mem[_3735]
    mem[_3734 + 100 len ceil32(mem[_3735])] = mem[_3735 + 32 len ceil32(mem[_3735])]
    if ceil32(_3739) <= _3739:
        call address(arg1) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3739 + _3734 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            require not mem[96]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3910 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3910]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, _2193);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3956 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return _2193, mem[_3956]
        _3879 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_3879] = return_data.size
        mem[_3879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not return_data.size:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3911]:
                revert with 0, 'Invalid token balance after transfer'
            emit TokenTransferred(address(arg1), msg.sender, _2193);
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3958 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return _2193, mem[_3958]
        require return_data.size >= 32
        require mem[_3879 + 32] == bool(mem[_3879 + 32])
        if not mem[_3879 + 32]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3943 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3943]:
            revert with 0, 'Invalid token balance after transfer'
        emit TokenTransferred(address(arg1), msg.sender, _2193);
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3991 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return _2193, mem[_3991]
    mem[_3734 + _3739 + 100] = 0
    call address(arg1) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _3739 + _3734 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        require not mem[96]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3914 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3914]:
            revert with 0, 'Invalid token balance after transfer'
        emit TokenTransferred(address(arg1), msg.sender, _2193);
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3962 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return _2193, mem[_3962]
    _3881 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_3881] = return_data.size
    mem[_3881 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    if not return_data.size:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3915 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3915]:
            revert with 0, 'Invalid token balance after transfer'
        emit TokenTransferred(address(arg1), msg.sender, _2193);
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3964 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return _2193, mem[_3964]
    require return_data.size >= 32
    require mem[_3881 + 32] == bool(mem[_3881 + 32])
    if not mem[_3881 + 32]:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3955 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_3955]:
        revert with 0, 'Invalid token balance after transfer'
    emit TokenTransferred(address(arg1), msg.sender, _2193);
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3999 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return _2193, mem[_3999]
}



}
