contract main {




// =====================  Runtime code  =====================


#
#  - sub_937c70dd(?)
#  - sub_e182a503(?)
#
address stor0;
address wethAddress;
address bakeryRouterAddress;
address sub_d60b53dcAddress;
address sub_ada4c30aAddress;
address sub_09c6e72cAddress;
address sub_746f8e57Address;

function sub_09c6e72c(?) {
    return sub_09c6e72cAddress
}

function weth() {
    return wethAddress
}

function sub_746f8e57(?) {
    return sub_746f8e57Address
}

function sub_ada4c30a(?) {
    return sub_ada4c30aAddress
}

function sub_d60b53dc(?) {
    return sub_d60b53dcAddress
}

function bakeryRouter() {
    return bakeryRouterAddress
}

function _fallback() payable {
    revert
}

function setWETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    wethAddress = arg1
}

function drainBalance() payable {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dca751a6(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 2
    mem[128] = wethAddress
    mem[160] = address(arg3)
    if address(arg1) == bakeryRouterAddress:
        mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[228] = 128
        mem[324] = 2
        idx = 0
        s = 128
        t = 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[260] = this.address
        mem[292] = block.timestamp + 6 * 10^6
        require ext_code.size(address(arg1))
        call address(arg1).0x9cf68911 with:
           value arg4 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 6 * 10^6, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _171 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _174 = mem[mem[192 len 4], 0 + 192]
        require mem[mem[192 len 4], 0 + 192] <= test266151307()
        require ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], 0 + 192]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _171 + (32 * _174) + 32 <= return_data.size
        idx = 0
        s = _171 + 224
        t = ceil32(return_data.size) + 224
        while idx < _174:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 1 < _174
        _318 = mem[ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _318
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _318
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_327] == bool(mem[_327])
        if not mem[_327]:
            revert with 0, 'approve failed.'
        mem[128] = address(arg3)
        mem[160] = wethAddress
        require 1 < _174
        if address(arg2) == bakeryRouterAddress:
            _345 = mem[ceil32(return_data.size) + 256]
            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _345
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 6 * 10^6
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6 * 10^6, mem[mem[64] + 164 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _462 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _471 = mem[_462]
            require mem[_462] <= test266151307()
            require _462 + mem[_462] + 31 < _462 + return_data.size
            _480 = mem[_462 + mem[_462]]
            require mem[_462 + mem[_462]] <= test266151307()
            require _462 + ceil32(return_data.size) + (32 * mem[_462 + mem[_462]]) + 32 <= test266151307() and (32 * mem[_462 + mem[_462]]) + 32 >= 0
            mem[64] = _462 + ceil32(return_data.size) + (32 * mem[_462 + mem[_462]]) + 32
            mem[_462 + ceil32(return_data.size)] = _480
            require _471 + (32 * _480) + 32 <= return_data.size
            idx = 0
            s = _462 + _471 + 32
            t = _462 + ceil32(return_data.size) + 32
            while idx < _480:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if address(arg2) != sub_746f8e57Address:
                _357 = mem[ceil32(return_data.size) + 256]
                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _357
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                require ext_code.size(address(arg2))
                call address(arg2).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6 * 10^6, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _472 = mem[_463]
                require mem[_463] <= test266151307()
                require _463 + mem[_463] + 31 < _463 + return_data.size
                _481 = mem[_463 + mem[_463]]
                require mem[_463 + mem[_463]] <= test266151307()
                require _463 + ceil32(return_data.size) + (32 * mem[_463 + mem[_463]]) + 32 <= test266151307() and (32 * mem[_463 + mem[_463]]) + 32 >= 0
                mem[64] = _463 + ceil32(return_data.size) + (32 * mem[_463 + mem[_463]]) + 32
                mem[_463 + ceil32(return_data.size)] = _481
                require _472 + (32 * _481) + 32 <= return_data.size
                idx = 0
                s = _463 + _472 + 32
                t = _463 + ceil32(return_data.size) + 32
                while idx < _481:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                _359 = mem[ceil32(return_data.size) + 256]
                mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _359
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                require ext_code.size(address(arg2))
                call address(arg2).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6 * 10^6, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _473 = mem[_464]
                require mem[_464] <= test266151307()
                require _464 + mem[_464] + 31 < _464 + return_data.size
                _482 = mem[_464 + mem[_464]]
                require mem[_464 + mem[_464]] <= test266151307()
                require _464 + ceil32(return_data.size) + (32 * mem[_464 + mem[_464]]) + 32 <= test266151307() and (32 * mem[_464 + mem[_464]]) + 32 >= 0
                mem[64] = _464 + ceil32(return_data.size) + (32 * mem[_464 + mem[_464]]) + 32
                mem[_464 + ceil32(return_data.size)] = _482
                require _473 + (32 * _482) + 32 <= return_data.size
                idx = 0
                s = _464 + _473 + 32
                t = _464 + ceil32(return_data.size) + 32
                while idx < _482:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        if address(arg1) != sub_746f8e57Address:
            mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[196] = 0
            mem[228] = 128
            mem[324] = 2
            idx = 0
            s = 128
            t = 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[260] = this.address
            mem[292] = block.timestamp + 6 * 10^6
            require ext_code.size(address(arg1))
            call address(arg1).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value arg4 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 6 * 10^6, 2, mem[356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _172 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _175 = mem[mem[192 len 4], 0 + 192]
            require mem[mem[192 len 4], 0 + 192] <= test266151307()
            require ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], 0 + 192]) + 32 >= 0
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _172 + (32 * _175) + 32 <= return_data.size
            idx = 0
            s = _172 + 224
            t = ceil32(return_data.size) + 224
            while idx < _175:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 1 < _175
            _320 = mem[ceil32(return_data.size) + 256]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _320
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), _320
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _328 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_328] == bool(mem[_328])
            if not mem[_328]:
                revert with 0, 'approve failed.'
            mem[128] = address(arg3)
            mem[160] = wethAddress
            require 1 < _175
            if address(arg2) == bakeryRouterAddress:
                _349 = mem[ceil32(return_data.size) + 256]
                mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _349
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                require ext_code.size(address(arg2))
                call address(arg2).0x5d616c5b with:
                     gas gas_remaining wei
                    args _349, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[mem[64] + 196 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _474 = mem[_465]
                require mem[_465] <= test266151307()
                require _465 + mem[_465] + 31 < _465 + return_data.size
                _483 = mem[_465 + mem[_465]]
                require mem[_465 + mem[_465]] <= test266151307()
                require _465 + ceil32(return_data.size) + (32 * mem[_465 + mem[_465]]) + 32 <= test266151307() and (32 * mem[_465 + mem[_465]]) + 32 >= 0
                mem[64] = _465 + ceil32(return_data.size) + (32 * mem[_465 + mem[_465]]) + 32
                mem[_465 + ceil32(return_data.size)] = _483
                require _474 + (32 * _483) + 32 <= return_data.size
                idx = 0
                s = _465 + _474 + 32
                t = _465 + ceil32(return_data.size) + 32
                while idx < _483:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if address(arg2) != sub_746f8e57Address:
                    _362 = mem[ceil32(return_data.size) + 256]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _362
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _362, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _466 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _475 = mem[_466]
                    require mem[_466] <= test266151307()
                    require _466 + mem[_466] + 31 < _466 + return_data.size
                    _484 = mem[_466 + mem[_466]]
                    require mem[_466 + mem[_466]] <= test266151307()
                    require _466 + ceil32(return_data.size) + (32 * mem[_466 + mem[_466]]) + 32 <= test266151307() and (32 * mem[_466 + mem[_466]]) + 32 >= 0
                    mem[64] = _466 + ceil32(return_data.size) + (32 * mem[_466 + mem[_466]]) + 32
                    mem[_466 + ceil32(return_data.size)] = _484
                    require _475 + (32 * _484) + 32 <= return_data.size
                    idx = 0
                    s = _466 + _475 + 32
                    t = _466 + ceil32(return_data.size) + 32
                    while idx < _484:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _364 = mem[ceil32(return_data.size) + 256]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _364
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6 * 10^6, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _467 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _476 = mem[_467]
                    require mem[_467] <= test266151307()
                    require _467 + mem[_467] + 31 < _467 + return_data.size
                    _485 = mem[_467 + mem[_467]]
                    require mem[_467 + mem[_467]] <= test266151307()
                    require _467 + ceil32(return_data.size) + (32 * mem[_467 + mem[_467]]) + 32 <= test266151307() and (32 * mem[_467 + mem[_467]]) + 32 >= 0
                    mem[64] = _467 + ceil32(return_data.size) + (32 * mem[_467 + mem[_467]]) + 32
                    mem[_467 + ceil32(return_data.size)] = _485
                    require _476 + (32 * _485) + 32 <= return_data.size
                    idx = 0
                    s = _467 + _476 + 32
                    t = _467 + ceil32(return_data.size) + 32
                    while idx < _485:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
            mem[196] = 0
            mem[228] = 128
            mem[324] = 2
            idx = 0
            s = 128
            t = 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[260] = this.address
            mem[292] = block.timestamp + 6 * 10^6
            require ext_code.size(address(arg1))
            call address(arg1).0x9cf68911 with:
               value arg4 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 6 * 10^6, 2, mem[356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _173 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _176 = mem[mem[192 len 4], 0 + 192]
            require mem[mem[192 len 4], 0 + 192] <= test266151307()
            require ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], 0 + 192]) + 32 >= 0
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _173 + (32 * _176) + 32 <= return_data.size
            idx = 0
            s = _173 + 224
            t = ceil32(return_data.size) + 224
            while idx < _176:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 1 < _176
            _322 = mem[ceil32(return_data.size) + 256]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _322
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), _322
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_329] == bool(mem[_329])
            if not mem[_329]:
                revert with 0, 'approve failed.'
            mem[128] = address(arg3)
            mem[160] = wethAddress
            require 1 < _176
            if address(arg2) == bakeryRouterAddress:
                _353 = mem[ceil32(return_data.size) + 256]
                mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _353
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                require ext_code.size(address(arg2))
                call address(arg2).0x5d616c5b with:
                     gas gas_remaining wei
                    args _353, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[mem[64] + 196 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_468]
                require mem[_468] <= test266151307()
                require _468 + mem[_468] + 31 < _468 + return_data.size
                _486 = mem[_468 + mem[_468]]
                require mem[_468 + mem[_468]] <= test266151307()
                require _468 + ceil32(return_data.size) + (32 * mem[_468 + mem[_468]]) + 32 <= test266151307() and (32 * mem[_468 + mem[_468]]) + 32 >= 0
                mem[64] = _468 + ceil32(return_data.size) + (32 * mem[_468 + mem[_468]]) + 32
                mem[_468 + ceil32(return_data.size)] = _486
                require _477 + (32 * _486) + 32 <= return_data.size
                idx = 0
                s = _468 + _477 + 32
                t = _468 + ceil32(return_data.size) + 32
                while idx < _486:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if address(arg2) != sub_746f8e57Address:
                    _367 = mem[ceil32(return_data.size) + 256]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _367
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6 * 10^6, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _469 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _478 = mem[_469]
                    require mem[_469] <= test266151307()
                    require _469 + mem[_469] + 31 < _469 + return_data.size
                    _487 = mem[_469 + mem[_469]]
                    require mem[_469 + mem[_469]] <= test266151307()
                    require _469 + ceil32(return_data.size) + (32 * mem[_469 + mem[_469]]) + 32 <= test266151307() and (32 * mem[_469 + mem[_469]]) + 32 >= 0
                    mem[64] = _469 + ceil32(return_data.size) + (32 * mem[_469 + mem[_469]]) + 32
                    mem[_469 + ceil32(return_data.size)] = _487
                    require _478 + (32 * _487) + 32 <= return_data.size
                    idx = 0
                    s = _469 + _478 + 32
                    t = _469 + ceil32(return_data.size) + 32
                    while idx < _487:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _369 = mem[ceil32(return_data.size) + 256]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _369
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 6 * 10^6
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6 * 10^6, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _479 = mem[_470]
                    require mem[_470] <= test266151307()
                    require _470 + mem[_470] + 31 < _470 + return_data.size
                    _488 = mem[_470 + mem[_470]]
                    require mem[_470 + mem[_470]] <= test266151307()
                    require _470 + ceil32(return_data.size) + (32 * mem[_470 + mem[_470]]) + 32 <= test266151307() and (32 * mem[_470 + mem[_470]]) + 32 >= 0
                    mem[64] = _470 + ceil32(return_data.size) + (32 * mem[_470 + mem[_470]]) + 32
                    mem[_470 + ceil32(return_data.size)] = _488
                    require _479 + (32 * _488) + 32 <= return_data.size
                    idx = 0
                    s = _470 + _479 + 32
                    t = _470 + ceil32(return_data.size) + 32
                    while idx < _488:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
}



}
