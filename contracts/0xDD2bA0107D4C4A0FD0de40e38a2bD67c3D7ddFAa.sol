contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint32 stor3;
address stor3;
uint256 stor3;
uint256 stor4;
uint256 stor5; offset 32
uint256 stor5;
uint256 stor6;

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setMaxLoop(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor6 = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    address(stor3) = arg1
}

function setParameters(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == stor0
    stor1 = arg1
    stor4 = arg2
    uint256(stor5.field_0) = arg3
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0386a15a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require msg.sender == stor0
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
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
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap() {
    mem[96] = 2
    require ext_code.size(address(stor3))
    staticcall address(stor3).WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    if block.timestamp > -601:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor5.field_0)
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = stor0
    mem[ceil32(return_data.size) + 292] = block.timestamp + 600
    require ext_code.size(address(stor3))
    call address(stor3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value stor4 wei
         gas gas_remaining wei
        args uint256(stor5.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), stor0, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _20 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _21 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _20 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_2fa902f3(?) {
    require ext_code.size(address(stor3))
    staticcall address(stor3).WETH() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor2
    mem[192] = stor1
    if block.timestamp > -601:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = uint256(stor5.field_0)
    mem[ceil32(return_data.size) + 260] = 128
    mem[ceil32(return_data.size) + 356] = 3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = stor0
    mem[ceil32(return_data.size) + 324] = block.timestamp + 600
    require ext_code.size(address(stor3))
    call address(stor3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value stor4 wei
         gas gas_remaining wei
        args uint256(stor5.field_0), Array(len=3, data=mem[ceil32(return_data.size) + 388 len 96]), stor0, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _21 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32)
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 255 < ceil32(return_data.size) + return_data.size + 224
    _22 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 224] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor5.field_32) + 224]
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _21 + 256
    t = (2 * ceil32(return_data.size)) + 256
    while idx < _22:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_8ebaaffa(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6:
        _17 = mem[64]
        require ext_code.size(address(stor3))
        staticcall address(stor3).WETH() with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= mem[_17]:
            revert with 'NH{q', 50
        mem[_17 + 32] = ext_call.return_data[12 len 20]
        if 1 >= mem[_17]:
            revert with 'NH{q', 50
        mem[_17 + 64] = stor1
        if block.timestamp > -601:
            revert with 'NH{q', 17
        mem[_17 + ceil32(return_data.size) + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[_17 + ceil32(return_data.size) + 100] = uint256(stor5.field_0)
        mem[_17 + ceil32(return_data.size) + 132] = 128
        mem[_17 + ceil32(return_data.size) + 228] = mem[_17]
        s = 0
        t = _17 + 32
        u = _17 + ceil32(return_data.size) + 260
        while s < mem[_17]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_17 + ceil32(return_data.size) + 164] = stor0
        mem[_17 + ceil32(return_data.size) + 196] = block.timestamp + 600
        require ext_code.size(address(stor3))
        call address(stor3).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value stor4 wei
             gas gas_remaining wei
            args uint256(stor5.field_0), 128, stor0, block.timestamp + 600, mem[_17 + ceil32(return_data.size) + 228 len (32 * mem[_17]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_17 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _17 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _36 = mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32)
        require mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
        require _17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 127 < _17 + ceil32(return_data.size) + return_data.size + 96
        _37 = mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]
        if mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96] > test266151307():
            revert with 'NH{q', 65
        if _17 + (2 * ceil32(return_data.size)) + floor32(mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 97 > test266151307() or floor32(mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _17 + (2 * ceil32(return_data.size)) + floor32(mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 97
        mem[_17 + (2 * ceil32(return_data.size)) + 96] = mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]
        require _36 + (32 * _37) + 32 <= return_data.size
        s = 0
        t = _17 + ceil32(return_data.size) + _36 + 128
        u = _17 + (2 * ceil32(return_data.size)) + 128
        while s < _37:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f9114bf5(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6:
        _17 = mem[64]
        require ext_code.size(address(stor3))
        staticcall address(stor3).WETH() with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= mem[_17]:
            revert with 'NH{q', 50
        mem[_17 + 32] = ext_call.return_data[12 len 20]
        if 1 >= mem[_17]:
            revert with 'NH{q', 50
        mem[_17 + 64] = stor1
        if block.timestamp > -601:
            revert with 'NH{q', 17
        mem[_17 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[_17 + ceil32(return_data.size) + 100] = uint256(stor5.field_0)
        mem[_17 + ceil32(return_data.size) + 132] = 128
        mem[_17 + ceil32(return_data.size) + 228] = mem[_17]
        s = 0
        t = _17 + 32
        u = _17 + ceil32(return_data.size) + 260
        while s < mem[_17]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_17 + ceil32(return_data.size) + 164] = stor0
        mem[_17 + ceil32(return_data.size) + 196] = block.timestamp + 600
        require ext_code.size(address(stor3))
        call address(stor3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value stor4 wei
             gas gas_remaining wei
            args uint256(stor5.field_0), 128, stor0, block.timestamp + 600, mem[_17 + ceil32(return_data.size) + 228 len (32 * mem[_17]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_17 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _17 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _36 = mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32)
        require mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
        require _17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 127 < _17 + ceil32(return_data.size) + return_data.size + 96
        _37 = mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]
        if mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96] > test266151307():
            revert with 'NH{q', 65
        if _17 + (2 * ceil32(return_data.size)) + floor32(mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 97 > test266151307() or floor32(mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _17 + (2 * ceil32(return_data.size)) + floor32(mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 97
        mem[_17 + (2 * ceil32(return_data.size)) + 96] = mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]
        require _36 + (32 * _37) + 32 <= return_data.size
        s = 0
        t = _17 + ceil32(return_data.size) + _36 + 128
        u = _17 + (2 * ceil32(return_data.size)) + 128
        while s < _37:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e8478bbb(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6:
        _18 = mem[64]
        require ext_code.size(address(stor3))
        staticcall address(stor3).WETH() with:
                gas gas_remaining wei
        mem[mem[64] + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= mem[_18]:
            revert with 'NH{q', 50
        mem[_18 + 32] = ext_call.return_data[12 len 20]
        if 1 >= mem[_18]:
            revert with 'NH{q', 50
        mem[_18 + 64] = stor2
        if 2 >= mem[_18]:
            revert with 'NH{q', 50
        mem[_18 + 96] = stor1
        if block.timestamp > -601:
            revert with 'NH{q', 17
        mem[_18 + ceil32(return_data.size) + 128] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[_18 + ceil32(return_data.size) + 132] = uint256(stor5.field_0)
        mem[_18 + ceil32(return_data.size) + 164] = 128
        mem[_18 + ceil32(return_data.size) + 260] = mem[_18]
        s = 0
        t = _18 + 32
        u = _18 + ceil32(return_data.size) + 292
        while s < mem[_18]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_18 + ceil32(return_data.size) + 196] = stor0
        mem[_18 + ceil32(return_data.size) + 228] = block.timestamp + 600
        require ext_code.size(address(stor3))
        call address(stor3).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value stor4 wei
             gas gas_remaining wei
            args uint256(stor5.field_0), 128, stor0, block.timestamp + 600, mem[_18 + ceil32(return_data.size) + 260 len (32 * mem[_18]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_18 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _18 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _38 = mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32)
        require mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
        require _18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 159 < _18 + ceil32(return_data.size) + return_data.size + 128
        _39 = mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 128]
        if mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 128] > test266151307():
            revert with 'NH{q', 65
        if _18 + (2 * ceil32(return_data.size)) + floor32(mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 128]) + 129 > test266151307() or floor32(mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _18 + (2 * ceil32(return_data.size)) + floor32(mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 128]) + 129
        mem[_18 + (2 * ceil32(return_data.size)) + 128] = mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor5.field_32) + 128]
        require _38 + (32 * _39) + 32 <= return_data.size
        s = 0
        t = _18 + ceil32(return_data.size) + _38 + 160
        u = _18 + (2 * ceil32(return_data.size)) + 160
        while s < _39:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_648714a2(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6:
        mem[mem[64] len 799] = code.data[9874 len 799]
        create contract with 0 wei
                        code: code.data[9874 len 799]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        require ext_code.size(address(stor3))
        staticcall address(stor3).WETH() with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= mem[_26]:
            revert with 'NH{q', 50
        mem[_26 + 32] = ext_call.return_data[12 len 20]
        if 1 >= mem[_26]:
            revert with 'NH{q', 50
        mem[_26 + 64] = stor1
        if block.timestamp > -601:
            revert with 'NH{q', 17
        mem[_26 + ceil32(return_data.size) + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[_26 + ceil32(return_data.size) + 100] = uint256(stor5.field_0)
        mem[_26 + ceil32(return_data.size) + 132] = 128
        mem[_26 + ceil32(return_data.size) + 228] = mem[_26]
        s = 0
        t = _26 + 32
        u = _26 + ceil32(return_data.size) + 260
        while s < mem[_26]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_26 + ceil32(return_data.size) + 164] = address(create.new_address)
        mem[_26 + ceil32(return_data.size) + 196] = block.timestamp + 600
        require ext_code.size(address(stor3))
        call address(stor3).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value stor4 wei
             gas gas_remaining wei
            args uint256(stor5.field_0), 128, address(create.new_address), block.timestamp + 600, mem[_26 + ceil32(return_data.size) + 228 len (32 * mem[_26]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_26 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _26 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _50 = mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32)
        require mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
        require _26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 127 < _26 + ceil32(return_data.size) + return_data.size + 96
        _51 = mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]
        if mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96] > test266151307():
            revert with 'NH{q', 65
        if _26 + (2 * ceil32(return_data.size)) + floor32(mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 97 > test266151307() or floor32(mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _26 + (2 * ceil32(return_data.size)) + floor32(mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 97
        mem[_26 + (2 * ceil32(return_data.size)) + 96] = mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor5.field_32) + 96]
        require _50 + (32 * _51) + 32 <= return_data.size
        s = 0
        t = _26 + ceil32(return_data.size) + _50 + 128
        u = _26 + (2 * ceil32(return_data.size)) + 128
        while s < _51:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _51 < 1:
            revert with 'NH{q', 17
        if _51 - 1 >= _51:
            revert with 'NH{q', 50
        mem[mem[64]] = 0xa64b6e5f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor1
        mem[mem[64] + 36] = stor0
        mem[mem[64] + 68] = mem[(32 * _51 - 1) + _26 + (2 * ceil32(return_data.size)) + 128]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).transferTokens(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args stor1, stor0, mem[(32 * _51 - 1) + _26 + (2 * ceil32(return_data.size)) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sell() {
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(stor3)
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stor1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call stor1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            mem[ceil32(return_data.size) + 264] = this.address
            mem[ceil32(return_data.size) + 296] = address(stor3)
            require ext_code.size(stor1)
            staticcall stor1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor3)
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 296] = address(stor3)
            mem[(2 * ceil32(return_data.size)) + 328] = -1
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(stor3), -1, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call stor1 with:
               funct Mask(32, 224, 0, address(stor3), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor3), -1, 0) << 288)
            if return_data.size:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = stor0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = block.timestamp + 600
                else:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]) + 32]
            else:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] <= 0:
                    mem[(2 * ceil32(return_data.size)) + 424] = 2
                    mem[(2 * ceil32(return_data.size)) + 456] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 520] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 488] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 520] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 524] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 556] = 0
                    mem[(4 * ceil32(return_data.size)) + 588] = 160
                    mem[(4 * ceil32(return_data.size)) + 684] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = (4 * ceil32(return_data.size)) + 716
                    while idx < mem[(2 * ceil32(return_data.size)) + 424]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(2 * ceil32(return_data.size)) + 424] = 2
                    mem[(2 * ceil32(return_data.size)) + 456] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 520] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 488] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 520] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 524] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 556] = 0
                    mem[(4 * ceil32(return_data.size)) + 588] = 160
                    mem[(4 * ceil32(return_data.size)) + 684] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = (4 * ceil32(return_data.size)) + 716
                    while idx < mem[(2 * ceil32(return_data.size)) + 424]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 620] = stor0
                    mem[(4 * ceil32(return_data.size)) + 652] = block.timestamp + 600
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, mem[(4 * ceil32(return_data.size)) + 684 len (32 * mem[(2 * ceil32(return_data.size)) + 424]) + 32]
        else:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 264] = this.address
            mem[ceil32(return_data.size) + 296] = address(stor3)
            require ext_code.size(stor1)
            staticcall stor1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor3)
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 296] = address(stor3)
            mem[(2 * ceil32(return_data.size)) + 328] = -1
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(stor3), -1, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call stor1 with:
               funct Mask(32, 224, 0, address(stor3), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor3), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 424] = 2
                mem[(2 * ceil32(return_data.size)) + 456] = stor1
                require ext_code.size(address(stor3))
                staticcall address(stor3).WETH() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 520] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 488] = ext_call.return_data[12 len 20]
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 520] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 524] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 556] = 0
                mem[(4 * ceil32(return_data.size)) + 588] = 160
                mem[(4 * ceil32(return_data.size)) + 684] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 456
                t = (4 * ceil32(return_data.size)) + 716
                while idx < mem[(2 * ceil32(return_data.size)) + 424]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, mem[(4 * ceil32(return_data.size)) + 684 len (32 * mem[(2 * ceil32(return_data.size)) + 424]) + 32]
            else:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = stor0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = block.timestamp + 600
                else:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]) + 32]
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(stor3)
            require ext_code.size(stor1)
            staticcall stor1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor3)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor3)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(stor3), -1, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call stor1 with:
               funct Mask(32, 224, 0, address(stor3), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor3), -1, 0) << 288)
            if return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                        mem[(4 * ceil32(return_data.size)) + 462] = 42
                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                        mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 426
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 458] = stor1
                require ext_code.size(address(stor3))
                staticcall address(stor3).WETH() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 522] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 490] = ext_call.return_data[12 len 20]
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 522] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 526] = ext_call.return_data[0]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 458
                t = (6 * ceil32(return_data.size)) + 718
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, 2, mem[(6 * ceil32(return_data.size)) + 718 len 64]
            else:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                require ext_code.size(address(stor3))
                staticcall address(stor3).WETH() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]) + 32]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(stor3)
            require ext_code.size(stor1)
            staticcall stor1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor3)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor3)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(stor3), -1, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call stor1 with:
               funct Mask(32, 224, 0, address(stor3), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor3), -1, 0) << 288)
            if return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                        mem[(4 * ceil32(return_data.size)) + 462] = 42
                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                        mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 426
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 458] = stor1
                require ext_code.size(address(stor3))
                staticcall address(stor3).WETH() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 522] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 490] = ext_call.return_data[12 len 20]
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 522] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 526] = ext_call.return_data[0]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 458
                t = (6 * ceil32(return_data.size)) + 718
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, 2, mem[(6 * ceil32(return_data.size)) + 718 len 64]
            else:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] <= 0:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor1
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[12 len 20]
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = stor0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = block.timestamp + 600
                require ext_code.size(address(stor3))
                call address(stor3).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 600, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
