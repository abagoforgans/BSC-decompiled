contract main {




// =====================  Runtime code  =====================


const sub_092adf86(?) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const pancakeRouter = 0x10ed43c718714eb63d5aa57b78b54704e256024e


address owner;
address stor1;
uint256 stor2;
address workerAddress;

function worker() {
    return workerAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function addChild(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Worker: Invalid addChild call'
    stor1 = arg1
}

function withdrawEth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Worker: Invalid addChild call'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function collectEth() {
    if not stor1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor1)
        call stor1.0xfada5da1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function collect(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        require ext_code.size(stor1)
        call stor1.collect(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5e1250d8(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).aSBlock() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).aEBlock() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).aTot() with:
         gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).aCap() with:
         gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > block.number:
        return 0
    if block.number > ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        mem[(6 * ceil32(return_data.size)) + 100] = workerAddress
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args workerAddress
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = workerAddress
                require ext_code.size(address(arg2))
                call address(arg2).getAirdrop(address arg1) with:
                     gas gas_remaining wei
                    args workerAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_153] == bool(mem[_153])
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(workerAddress)
            call workerAddress.collect(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_140]:
                revert with 'NH{q', 50
            mem[_140 + 32] = address(arg2)
            if 1 >= mem[_140]:
                revert with 'NH{q', 50
            mem[_140 + 64] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[_140 + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_140 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_140 + ceil32(return_data.size) + 100] = this.address
            mem[_140 + ceil32(return_data.size) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[_140 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _140 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                mem[_140 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_140 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_140 + (2 * ceil32(return_data.size)) + 132] = 1
                mem[_140 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_140 + (2 * ceil32(return_data.size)) + 260] = mem[_140]
                idx = 0
                s = _140 + 32
                t = _140 + (2 * ceil32(return_data.size)) + 292
                while idx < mem[_140]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_140 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_140 + (2 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _140 + (2 * ceil32(return_data.size)) + (32 * mem[_140]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _326 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _332 = mem[_326]
                require mem[_326] <= test266151307()
                require _326 + mem[_326] + 31 < _326 + return_data.size
                _339 = mem[_326 + mem[_326]]
                if mem[_326 + mem[_326]] > test266151307():
                    revert with 'NH{q', 65
                if _326 + ceil32(return_data.size) + floor32(mem[_326 + mem[_326]]) + 1 > test266151307() or floor32(mem[_326 + mem[_326]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _326 + ceil32(return_data.size) + floor32(mem[_326 + mem[_326]]) + 1
                mem[_326 + ceil32(return_data.size)] = _339
                require _332 + (32 * _339) + 32 <= return_data.size
                idx = 0
                s = _326 + _332 + 32
                t = _326 + ceil32(return_data.size) + 32
                while idx < _339:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _339:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_326 + ceil32(return_data.size) + 64]
            else:
                mem[_140 + (2 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                mem[_140 + (2 * ceil32(return_data.size)) + 132] = stor2
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, stor2
                mem[_140 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _140 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_140 + (4 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_140 + (4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_140 + (4 * ceil32(return_data.size)) + 132] = 1
                mem[_140 + (4 * ceil32(return_data.size)) + 164] = 160
                mem[_140 + (4 * ceil32(return_data.size)) + 260] = mem[_140]
                idx = 0
                s = _140 + 32
                t = _140 + (4 * ceil32(return_data.size)) + 292
                while idx < mem[_140]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_140 + (4 * ceil32(return_data.size)) + 196] = this.address
                mem[_140 + (4 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _140 + (4 * ceil32(return_data.size)) + (32 * mem[_140]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _327 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _333 = mem[_327]
                require mem[_327] <= test266151307()
                require _327 + mem[_327] + 31 < _327 + return_data.size
                _340 = mem[_327 + mem[_327]]
                if mem[_327 + mem[_327]] > test266151307():
                    revert with 'NH{q', 65
                if _327 + ceil32(return_data.size) + floor32(mem[_327 + mem[_327]]) + 1 > test266151307() or floor32(mem[_327 + mem[_327]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _327 + ceil32(return_data.size) + floor32(mem[_327 + mem[_327]]) + 1
                mem[_327 + ceil32(return_data.size)] = _340
                require _333 + (32 * _340) + 32 <= return_data.size
                idx = 0
                s = _327 + _333 + 32
                t = _327 + ceil32(return_data.size) + 32
                while idx < _340:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _340:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_327 + ceil32(return_data.size) + 64]
        else:
            mem[(7 * ceil32(return_data.size)) + 100] = workerAddress
            require ext_code.size(address(arg2))
            call address(arg2).getAirdrop(address arg1) with:
                 gas gas_remaining wei
                args workerAddress
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 100] = workerAddress
            mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args workerAddress, ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = workerAddress
                require ext_code.size(address(arg2))
                call address(arg2).getAirdrop(address arg1) with:
                     gas gas_remaining wei
                    args workerAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _155 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_155] == bool(mem[_155])
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(workerAddress)
            call workerAddress.collect(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _141 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_141]:
                revert with 'NH{q', 50
            mem[_141 + 32] = address(arg2)
            if 1 >= mem[_141]:
                revert with 'NH{q', 50
            mem[_141 + 64] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[_141 + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_141 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_141 + ceil32(return_data.size) + 100] = this.address
            mem[_141 + ceil32(return_data.size) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[_141 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _141 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                mem[_141 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_141 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_141 + (2 * ceil32(return_data.size)) + 132] = 1
                mem[_141 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_141 + (2 * ceil32(return_data.size)) + 260] = mem[_141]
                idx = 0
                s = _141 + 32
                t = _141 + (2 * ceil32(return_data.size)) + 292
                while idx < mem[_141]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_141 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_141 + (2 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _141 + (2 * ceil32(return_data.size)) + (32 * mem[_141]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _334 = mem[_328]
                require mem[_328] <= test266151307()
                require _328 + mem[_328] + 31 < _328 + return_data.size
                _341 = mem[_328 + mem[_328]]
                if mem[_328 + mem[_328]] > test266151307():
                    revert with 'NH{q', 65
                if _328 + ceil32(return_data.size) + floor32(mem[_328 + mem[_328]]) + 1 > test266151307() or floor32(mem[_328 + mem[_328]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _328 + ceil32(return_data.size) + floor32(mem[_328 + mem[_328]]) + 1
                mem[_328 + ceil32(return_data.size)] = _341
                require _334 + (32 * _341) + 32 <= return_data.size
                idx = 0
                s = _328 + _334 + 32
                t = _328 + ceil32(return_data.size) + 32
                while idx < _341:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _341:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_328 + ceil32(return_data.size) + 64]
            else:
                mem[_141 + (2 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                mem[_141 + (2 * ceil32(return_data.size)) + 132] = stor2
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, stor2
                mem[_141 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _141 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_141 + (4 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_141 + (4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_141 + (4 * ceil32(return_data.size)) + 132] = 1
                mem[_141 + (4 * ceil32(return_data.size)) + 164] = 160
                mem[_141 + (4 * ceil32(return_data.size)) + 260] = mem[_141]
                idx = 0
                s = _141 + 32
                t = _141 + (4 * ceil32(return_data.size)) + 292
                while idx < mem[_141]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_141 + (4 * ceil32(return_data.size)) + 196] = this.address
                mem[_141 + (4 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _141 + (4 * ceil32(return_data.size)) + (32 * mem[_141]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _329 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _335 = mem[_329]
                require mem[_329] <= test266151307()
                require _329 + mem[_329] + 31 < _329 + return_data.size
                _342 = mem[_329 + mem[_329]]
                if mem[_329 + mem[_329]] > test266151307():
                    revert with 'NH{q', 65
                if _329 + ceil32(return_data.size) + floor32(mem[_329 + mem[_329]]) + 1 > test266151307() or floor32(mem[_329 + mem[_329]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _329 + ceil32(return_data.size) + floor32(mem[_329 + mem[_329]]) + 1
                mem[_329 + ceil32(return_data.size)] = _342
                require _335 + (32 * _342) + 32 <= return_data.size
                idx = 0
                s = _329 + _335 + 32
                t = _329 + ceil32(return_data.size) + 32
                while idx < _342:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _342:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_329 + ceil32(return_data.size) + 64]
    else:
        if ext_call.return_data[0]:
            return 0
        mem[(6 * ceil32(return_data.size)) + 100] = workerAddress
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args workerAddress
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = workerAddress
                require ext_code.size(address(arg2))
                call address(arg2).getAirdrop(address arg1) with:
                     gas gas_remaining wei
                    args workerAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_157] == bool(mem[_157])
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(workerAddress)
            call workerAddress.collect(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_142]:
                revert with 'NH{q', 50
            mem[_142 + 32] = address(arg2)
            if 1 >= mem[_142]:
                revert with 'NH{q', 50
            mem[_142 + 64] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[_142 + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_142 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_142 + ceil32(return_data.size) + 100] = this.address
            mem[_142 + ceil32(return_data.size) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[_142 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _142 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                mem[_142 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_142 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_142 + (2 * ceil32(return_data.size)) + 132] = 1
                mem[_142 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_142 + (2 * ceil32(return_data.size)) + 260] = mem[_142]
                idx = 0
                s = _142 + 32
                t = _142 + (2 * ceil32(return_data.size)) + 292
                while idx < mem[_142]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_142 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_142 + (2 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1, 160, address(this.address), 99999999999999999, mem[_142 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_142]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_142 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _142 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _336 = mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require _142 + (2 * ceil32(return_data.size)) + mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _142 + (2 * ceil32(return_data.size)) + return_data.size + 96
                _343 = mem[_142 + (2 * ceil32(return_data.size)) + mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[_142 + (2 * ceil32(return_data.size)) + mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if _142 + (4 * ceil32(return_data.size)) + floor32(mem[_142 + (2 * ceil32(return_data.size)) + mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[_142 + (2 * ceil32(return_data.size)) + mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _142 + (4 * ceil32(return_data.size)) + floor32(mem[_142 + (2 * ceil32(return_data.size)) + mem[_142 + (2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[_142 + (4 * ceil32(return_data.size)) + 96] = _343
                require _336 + (32 * _343) + 32 <= return_data.size
                idx = 0
                s = _142 + (2 * ceil32(return_data.size)) + _336 + 128
                t = _142 + (4 * ceil32(return_data.size)) + 128
                while idx < _343:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _343:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_142 + (4 * ceil32(return_data.size)) + 160]
            else:
                mem[_142 + (2 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                mem[_142 + (2 * ceil32(return_data.size)) + 132] = stor2
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, stor2
                mem[_142 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _142 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_142 + (4 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_142 + (4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_142 + (4 * ceil32(return_data.size)) + 132] = 1
                mem[_142 + (4 * ceil32(return_data.size)) + 164] = 160
                mem[_142 + (4 * ceil32(return_data.size)) + 260] = mem[_142]
                idx = 0
                s = _142 + 32
                t = _142 + (4 * ceil32(return_data.size)) + 292
                while idx < mem[_142]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_142 + (4 * ceil32(return_data.size)) + 196] = this.address
                mem[_142 + (4 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1, 160, address(this.address), 99999999999999999, mem[_142 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_142]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_142 + (4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _142 + (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _337 = mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require _142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _142 + (4 * ceil32(return_data.size)) + return_data.size + 96
                _344 = mem[_142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[_142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if _142 + (6 * ceil32(return_data.size)) + floor32(mem[_142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[_142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _142 + (6 * ceil32(return_data.size)) + floor32(mem[_142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[_142 + (6 * ceil32(return_data.size)) + 96] = mem[_142 + (4 * ceil32(return_data.size)) + mem[_142 + (4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                require _337 + (32 * _344) + 32 <= return_data.size
                idx = 0
                s = _142 + (4 * ceil32(return_data.size)) + _337 + 128
                t = _142 + (6 * ceil32(return_data.size)) + 128
                while idx < _344:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _344:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_142 + (6 * ceil32(return_data.size)) + 160]
        else:
            mem[(7 * ceil32(return_data.size)) + 100] = workerAddress
            require ext_code.size(address(arg2))
            call address(arg2).getAirdrop(address arg1) with:
                 gas gas_remaining wei
                args workerAddress
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 100] = workerAddress
            mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args workerAddress, ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = workerAddress
                require ext_code.size(address(arg2))
                call address(arg2).getAirdrop(address arg1) with:
                     gas gas_remaining wei
                    args workerAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_325] == bool(mem[_325])
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(workerAddress)
            call workerAddress.collect(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _314 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_314]:
                revert with 'NH{q', 50
            mem[_314 + 32] = address(arg2)
            if 1 >= mem[_314]:
                revert with 'NH{q', 50
            mem[_314 + 64] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[_314 + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_314 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_314 + ceil32(return_data.size) + 100] = this.address
            mem[_314 + ceil32(return_data.size) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[_314 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _314 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                mem[_314 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_314 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_314 + (2 * ceil32(return_data.size)) + 132] = 1
                mem[_314 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_314 + (2 * ceil32(return_data.size)) + 260] = mem[_314]
                idx = 0
                s = _314 + 32
                t = _314 + (2 * ceil32(return_data.size)) + 292
                while idx < mem[_314]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_314 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_314 + (2 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + (2 * ceil32(return_data.size)) + (32 * mem[_314]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_452]
                require mem[_452] <= test266151307()
                require _452 + mem[_452] + 31 < _452 + return_data.size
                _456 = mem[_452 + mem[_452]]
                if mem[_452 + mem[_452]] > test266151307():
                    revert with 'NH{q', 65
                if _452 + ceil32(return_data.size) + floor32(mem[_452 + mem[_452]]) + 1 > test266151307() or floor32(mem[_452 + mem[_452]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _452 + ceil32(return_data.size) + floor32(mem[_452 + mem[_452]]) + 1
                mem[_452 + ceil32(return_data.size)] = _456
                require _454 + (32 * _456) + 32 <= return_data.size
                idx = 0
                s = _452 + _454 + 32
                t = _452 + ceil32(return_data.size) + 32
                while idx < _456:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _456:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_452 + ceil32(return_data.size) + 64]
            else:
                mem[_314 + (2 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                mem[_314 + (2 * ceil32(return_data.size)) + 132] = stor2
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, stor2
                mem[_314 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _314 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_314 + (4 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_314 + (4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_314 + (4 * ceil32(return_data.size)) + 132] = 1
                mem[_314 + (4 * ceil32(return_data.size)) + 164] = 160
                mem[_314 + (4 * ceil32(return_data.size)) + 260] = mem[_314]
                idx = 0
                s = _314 + 32
                t = _314 + (4 * ceil32(return_data.size)) + 292
                while idx < mem[_314]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_314 + (4 * ceil32(return_data.size)) + 196] = this.address
                mem[_314 + (4 * ceil32(return_data.size)) + 228] = 99999999999999999
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + (4 * ceil32(return_data.size)) + (32 * mem[_314]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _453 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _455 = mem[_453]
                require mem[_453] <= test266151307()
                require _453 + mem[_453] + 31 < _453 + return_data.size
                _457 = mem[_453 + mem[_453]]
                if mem[_453 + mem[_453]] > test266151307():
                    revert with 'NH{q', 65
                if _453 + ceil32(return_data.size) + floor32(mem[_453 + mem[_453]]) + 1 > test266151307() or floor32(mem[_453 + mem[_453]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _453 + ceil32(return_data.size) + floor32(mem[_453 + mem[_453]]) + 1
                mem[_453 + ceil32(return_data.size)] = _457
                require _455 + (32 * _457) + 32 <= return_data.size
                idx = 0
                s = _453 + _455 + 32
                t = _453 + ceil32(return_data.size) + 32
                while idx < _457:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _457:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[_453 + ceil32(return_data.size) + 64]
    return mem[mem[64]], 1
}



}
