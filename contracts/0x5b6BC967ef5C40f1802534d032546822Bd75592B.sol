contract main {




// =====================  Runtime code  =====================


uint8 sub_1fcbc407; offset 160
address owner;
uint128 sub_004c0978; offset 160
address stor1;
address FIATAddress;
address sub_6e41159cAddress;
address ROUTERAddress;

function sub_004c0978(?) {
    return sub_004c0978
}

function FIAT() {
    return FIATAddress
}

function sub_1fcbc407(?) {
    if sub_1fcbc407 >= 2:
        revert with 0, 33
    return sub_1fcbc407
}

function ROUTER() {
    return ROUTERAddress
}

function sub_6e41159c(?) {
    return sub_6e41159cAddress
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ROUTERAddress = arg1
}

function sub_e3bb8e04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6e41159cAddress = address(arg1)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(this.address):
        revert with 0, 'Balance must be higher than zero'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9f654fa4(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall FIATAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call FIATAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_589a1fbf(?) {
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    staticcall stor1.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] <= 0:
        revert with 0, 'Round not complete'
    staticcall stor1.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args sub_004c0978
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] <= 0:
        revert with 0, 'Round not complete'
    return ext_call.return_data[32], ext_call.return_data[32]
}

function sub_a1943bd1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 100 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    mem[128] = sub_6e41159cAddress
    mem[160] = FIATAddress
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
    mem[292] = block.timestamp + 100
    call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 100, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _26 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _27 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require (32 * _27) + _26 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _27)] = mem[_26 + 224 len ceil32(32 * _27)]
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 160
    require mem[_41] == mem[_41 + 22 len 10]
    require mem[_41 + 128] == mem[_41 + 150 len 10]
    sub_004c0978 = mem[_41 + 22 len 10]
    sub_1fcbc407 = 1
}

function sub_c63f959e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_1fcbc407 > 1:
        revert with 0, 33
    if not sub_1fcbc407:
        if 100 > !block.timestamp:
            revert with 0, 17
        mem[96] = 2
        mem[128] = FIATAddress
        mem[160] = address(arg1)
        mem[196] = this.address
        staticcall FIATAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp + 100
        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    FIATAddress = address(arg1)
}

function sub_d5132dd2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 100 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    mem[128] = FIATAddress
    mem[160] = sub_6e41159cAddress
    mem[196] = this.address
    staticcall FIATAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 100
    call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _30 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
    _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _31
    require (32 * _31) + _30 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _31)] = mem[ceil32(return_data.size) + _30 + 224 len ceil32(32 * _31)]
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 160
    require mem[_45] == mem[_45 + 22 len 10]
    require mem[_45 + 128] == mem[_45 + 150 len 10]
    sub_004c0978 = mem[_45 + 22 len 10]
    sub_1fcbc407 = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if sub_1fcbc407 > 1:
            revert with 0, 33
        if not sub_1fcbc407:
            if 100 > !block.timestamp:
                revert with 0, 17
            mem[160] = sub_6e41159cAddress
            mem[192] = FIATAddress
            mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
            mem[324] = block.timestamp + 100
            call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 100, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[mem[224 len 4], 0 + 224]) + mem[224 len 4], 0 + 32 <= return_data.size
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3ccfd60b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x004c0978(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_004c0978
                if unknown_0x1faf0d6a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return FIATAddress
                if unknown_0x1fcbc407(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if sub_1fcbc407 >= 2:
                        revert with 0, 33
                    return sub_1fcbc407
                require unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return ROUTERAddress
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not eth.balance(this.address):
                    revert with 0, 'Balance must be higher than zero'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x589a1fbf(?????):
                if unknown_0x6e41159c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_6e41159cAddress
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            require not msg.value
            staticcall stor1.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            staticcall stor1.getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args Mask(80, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[96] <= 0:
                revert with 0, 'Round not complete'
            staticcall stor1.getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args sub_004c0978
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[96] <= 0:
                revert with 0, 'Round not complete'
            return ext_call.return_data[32], ext_call.return_data[32]
        if unknown_0xc63f959e(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x9f654fa4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall FIATAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    call FIATAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xa1943bd1(?????):
                    require unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    ROUTERAddress = address(arg1)
                else:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 100 > !block.timestamp:
                        revert with 0, 17
                    mem[128] = 2
                    mem[160] = sub_6e41159cAddress
                    mem[192] = FIATAddress
                    mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                    mem[324] = block.timestamp + 100
                    call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 100, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _161 = mem[224 len 4], 0
                    require mem[224 len 4], 0 <= test266151307()
                    require mem[224 len 4], 0 + 255 < return_data.size + 224
                    _165 = mem[mem[224 len 4], 0 + 224]
                    if mem[mem[224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                    require (32 * _165) + _161 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 256 len ceil32(32 * _165)] = mem[_161 + 256 len ceil32(32 * _165)]
                    staticcall stor1.latestRoundData() with:
                            gas gas_remaining wei
                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 160
                    require mem[_200] == mem[_200 + 22 len 10]
                    require mem[_200 + 128] == mem[_200 + 150 len 10]
                    sub_004c0978 = mem[_200 + 22 len 10]
                    sub_1fcbc407 = 1
        else:
            if unknown_0xc63f959e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if sub_1fcbc407 > 1:
                    revert with 0, 33
                if not sub_1fcbc407:
                    if 100 > !block.timestamp:
                        revert with 0, 17
                    mem[128] = 2
                    mem[160] = FIATAddress
                    mem[192] = address(arg1)
                    mem[228] = this.address
                    staticcall FIATAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 260] = 0
                    mem[ceil32(return_data.size) + 292] = 160
                    mem[ceil32(return_data.size) + 388] = 2
                    idx = 0
                    s = 160
                    t = ceil32(return_data.size) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp + 100
                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                        revert with 0, 65
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                FIATAddress = address(arg1)
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xd5132dd2(?????):
                    if unknown_0xe3bb8e04(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_6e41159cAddress = address(arg1)
                    else:
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                else:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 100 > !block.timestamp:
                        revert with 0, 17
                    mem[128] = 2
                    mem[160] = FIATAddress
                    mem[192] = sub_6e41159cAddress
                    mem[228] = this.address
                    staticcall FIATAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 260] = 0
                    mem[ceil32(return_data.size) + 292] = 160
                    mem[ceil32(return_data.size) + 388] = 2
                    idx = 0
                    s = 160
                    t = ceil32(return_data.size) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp + 100
                    call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _163 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
                    _167 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                    mem[(2 * ceil32(return_data.size)) + 224] = _167
                    require (32 * _167) + _163 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _167)] = mem[ceil32(return_data.size) + _163 + 256 len ceil32(32 * _167)]
                    staticcall stor1.latestRoundData() with:
                            gas gas_remaining wei
                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 160
                    require mem[_201] == mem[_201 + 22 len 10]
                    require mem[_201 + 128] == mem[_201 + 150 len 10]
                    sub_004c0978 = mem[_201 + 22 len 10]
                    sub_1fcbc407 = 0
}



}
