contract main {




// =====================  Runtime code  =====================


#
#  - verifyPathExistence()
#
address owner;
address factoryAddress;
address swapAddress;
address token0Address;
address token1Address;
array of struct path;
uint256 stor6; offset 32
uint256 amountIn;
uint256 sub_5131bf8e;
address stor8;

function token0() {
    return token0Address
}

function sub_5131bf8e(?) {
    return sub_5131bf8e
}

function amountIn() {
    return amountIn
}

function swap() {
    return swapAddress
}

function owner() {
    return owner
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1].field_0
}

function factory() {
    return factoryAddress
}

function token1() {
    return token1Address
}

function _fallback() payable {
  stop
}

function transfer() {
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function settings(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    factoryAddress = arg2
    swapAddress = arg3
    owner = arg1
}

function transferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_58eff9e1(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    path.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while path.length > idx:
            uint256(path[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            path[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while path.length > idx:
            uint256(path[idx].field_0) = 0
            idx = idx + 1
            continue 
    amountIn = cd[36]
    sub_5131bf8e = cd[68]
}

function sub_63ca4f0e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    if ('cd', 4).length and cd[36] > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value <= ('cd', 4).length * cd[36]:
        revert with 0, 'Sniper: value < length * amount'
    if address(cd[68]):
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[132] = cd[36]
            require ext_code.size(address(cd[68]))
            call address(cd[68]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value cd[36] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    if path.length < 1:
        revert with 'NH{q', 17
    if path.length - 1 >= path.length:
        revert with 'NH{q', 50
    require ext_code.size(path[path.length].field_0)
    call path[path.length].field_0.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = path[path.length].field_0
    mem[ceil32(return_data.size) + 160] = stor8
    require ext_code.size(path[path.length].field_0)
    call path[path.length].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args swapAddress, amountIn
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > -2:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = owner
    mem[ceil32(return_data.size) + 324] = block.timestamp + 1
    require ext_code.size(swapAddress)
    call swapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), owner, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _25 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _26:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_9ba52b67(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg3.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    if not arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 98] = 0
        call address(arg1).mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 102 len arg4.length - 4]
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = Mask(32, 224, sha3(arg3[all]))
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + (2 * arg4.length) + 138] = 0
            call address(arg1) with:
               funct Mask(32, -(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4) + 224, Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256) << (8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4) - 224
               value arg2 wei
                 gas gas_remaining wei
                args (Mask(8 * arg4.length, -(8 * arg4.length + 4) + 256, Mask(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4, -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256, 0) >> -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256) << (8 * arg4.length + 4) - 256)
        else:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 134 len floor32(arg4.length + 35)] = Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg4.length) + 134 len floor32(arg4.length + 35) + -ceil32(arg4.length) - 4]
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + (2 * arg4.length) + 138] = 0
            call address(arg1).mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 134 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 138 len arg4.length]
    if not ext_call.success:
        revert with 0, 'execution reverted.'
}

function execute() payable {
    mem[64] = 96
    require not msg.value
    if path.length < 1:
        revert with 'NH{q', 17
    if var71002 < path.length - 1:
        if var73001 < path.length:
            mem[0] = 5
            if var85003 > -2:
                revert with 'NH{q', 17
            idx = var87002 + 1
            s = var87006
            t = var87010
            while idx < path.length:
                mem[0] = 5
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = path[idx].field_0
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), path[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_346] == mem[_346 + 12 len 20]
                if not mem[_346 + 12 len 20]:
                    revert with 0, 'Path does not exist'
                if t == -1:
                    revert with 'NH{q', 17
                if path.length < 1:
                    revert with 'NH{q', 17
                if t + 1 < path.length - 1:
                    mem[0] = 5
                    if t + 1 > -2:
                        revert with 'NH{q', 17
                    idx = t + 2
                    s = path[t].field_256
                    t = t + 1
                    continue 
                if 0 >= path.length:
                    revert with 'NH{q', 50
                require ext_code.size(address(path.field_0))
                call address(path.field_0).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args swapAddress, amountIn
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > -2:
                    revert with 'NH{q', 17
                _354 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = amountIn
                mem[mem[64] + 36] = sub_5131bf8e
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = path.length
                mem[0] = 5
                idx = 0
                s = sha3(mem[0])
                t = mem[64] + 196
                while idx < path.length:
                    mem[t] = stor[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[_354 + 100] = this.address
                mem[_354 + 132] = block.timestamp + 1
                require ext_code.size(swapAddress)
                call swapAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _354 + (32 * path.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _363 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _364 = mem[_363]
                require mem[_363] <= test266151307()
                require _363 + mem[_363] + 31 < _363 + return_data.size
                _365 = mem[_363 + mem[_363]]
                if mem[_363 + mem[_363]] > test266151307():
                    revert with 'NH{q', 65
                if _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1 > test266151307() or floor32(mem[_363 + mem[_363]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1
                mem[_363 + ceil32(return_data.size)] = _365
                require _364 + (32 * _365) + 32 <= return_data.size
                idx = 0
                s = _363 + _364 + 32
                t = _363 + ceil32(return_data.size) + 32
                while idx < _365:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
        revert with 'NH{q', 50
    if 0 >= path.length:
        revert with 'NH{q', 50
    require ext_code.size(address(path.field_0))
    call address(path.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args swapAddress, amountIn
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > -2:
        revert with 'NH{q', 17
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = amountIn
    mem[132] = sub_5131bf8e
    mem[164] = 160
    mem[260] = path.length
    mem[0] = 5
    idx = 0
    s = 0
    t = 292
    while idx < path.length:
        mem[t] = path[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[196] = this.address
    mem[228] = block.timestamp + 1
    require ext_code.size(swapAddress)
    call swapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args amountIn, sub_5131bf8e, Array(len=path.length, data=mem[292 len 32 * path.length]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _188 = mem[96 len 4], stor6
    require mem[96 len 4], stor6 <= test266151307()
    require mem[96 len 4], stor6 + 127 < return_data.size + 96
    _189 = mem[mem[96 len 4], stor6 + 96]
    if mem[mem[96 len 4], stor6 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor6 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], stor6 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor6 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _189
    require _188 + (32 * _189) + 32 <= return_data.size
    idx = 0
    s = _188 + 128
    t = ceil32(return_data.size) + 128
    while idx < _189:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
