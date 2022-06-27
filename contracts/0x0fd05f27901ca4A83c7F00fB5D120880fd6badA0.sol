contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3304a6b0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Invalid call'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if arg2:
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = arg2
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 10
        require ext_code.size(stor1)
        call stor1.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _66 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _67 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _66 + (32 * _67) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _66 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _67:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _61 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _62 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _62
        require _61 + (32 * _62) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _61 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _62:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _62:
            revert with 'NH{q', 50
        _116 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        _117 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_117 + 32 len 96] = call.data[calldata.size len 96]
        if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if 0 >= mem[_117]:
            revert with 'NH{q', 50
        mem[_117 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
        if 1 >= mem[_117]:
            revert with 'NH{q', 50
        mem[_117 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
        if 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if 2 >= mem[_117]:
            revert with 'NH{q', 50
        mem[_117 + 96] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
        mem[_117 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_117 + 132] = ext_call.return_data[0]
        mem[_117 + 164] = 64
        mem[_117 + 196] = mem[_117]
        idx = 0
        s = _117 + 32
        t = _117 + 228
        while idx < mem[_117]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        staticcall stor1.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _117 + (32 * mem[_117]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _158 = mem[_157]
        require mem[_157] <= test266151307()
        require _157 + mem[_157] + 31 < _157 + return_data.size
        _159 = mem[_157 + mem[_157]]
        if mem[_157 + mem[_157]] > test266151307():
            revert with 'NH{q', 65
        if _157 + ceil32(return_data.size) + floor32(mem[_157 + mem[_157]]) + 1 > test266151307() or floor32(mem[_157 + mem[_157]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _157 + ceil32(return_data.size) + floor32(mem[_157 + mem[_157]]) + 1
        mem[_157 + ceil32(return_data.size)] = _159
        require _158 + (32 * _159) + 32 <= return_data.size
        idx = 0
        s = _157 + _158 + 32
        t = _157 + ceil32(return_data.size) + 32
        while idx < _159:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[_117] < 1:
            revert with 'NH{q', 17
        if mem[_117] - 1 >= _159:
            revert with 'NH{q', 50
        _186 = mem[(32 * mem[_117] - 1) + _157 + ceil32(return_data.size) + 32]
        if block.timestamp > -11:
            revert with 'NH{q', 17
        if mem[(32 * mem[_117] - 1) + _157 + ceil32(return_data.size) + 32] > _116:
            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _186
            mem[mem[64] + 68] = 160
            _190 = mem[_117]
            mem[mem[64] + 164] = mem[_117]
            idx = 0
            s = _117 + 32
            t = mem[64] + 196
            while idx < _190:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp + 10
            require ext_code.size(stor1)
            call stor1.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _186, 160, msg.sender, block.timestamp + 10, mem[mem[64] + 164 len (32 * _190) + 32]
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
            idx = 0
            s = _210 + _212 + 32
            t = _210 + ceil32(return_data.size) + 32
            while idx < _214:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            _187 = mem[64]
            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _116
            mem[mem[64] + 68] = 160
            _189 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _189:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_187 + 100] = msg.sender
            mem[_187 + 132] = block.timestamp + 10
            require ext_code.size(stor1)
            call stor1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _187 + (32 * _189) + -mem[64] + 192]
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
            idx = 0
            s = _209 + _211 + 32
            t = _209 + ceil32(return_data.size) + 32
            while idx < _213:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function sub_76ae374b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Invalid call'
    mem[96] = 2
    mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if cd[4] >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * cd[4]) + cd[36] + 36)] == address(cd[((32 * cd[4]) + cd[36] + 36)])
    mem[160] = address(cd[((32 * cd[4]) + cd[36] + 36)])
    if cd[68] <= 100:
        if cd[100]:
            if block.timestamp > -11:
                revert with 'NH{q', 17
            mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[196] = cd[100]
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
            mem[292] = block.timestamp + 10
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args cd[100], Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _127 = mem[192 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[192 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 223 < return_data.size + 192
            _129 = mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]
            require _127 + (32 * _129) + 32 <= return_data.size
            idx = 0
            s = _127 + 224
            t = ceil32(return_data.size) + 224
            while idx < _129:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = msg.value
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _117 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
            require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < return_data.size + 192
            _119 = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
            require _117 + (32 * _119) + 32 <= return_data.size
            idx = 0
            s = _117 + 224
            t = ceil32(return_data.size) + 224
            while idx < _119:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _119:
                revert with 'NH{q', 50
            _227 = mem[ceil32(return_data.size) + 256]
            _229 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_229]:
                revert with 'NH{q', 50
            mem[_229 + 32] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if 1 >= mem[_229]:
                revert with 'NH{q', 50
            mem[_229 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            if 2 >= mem[_229]:
                revert with 'NH{q', 50
            mem[_229 + 96] = uint64(cd[((32 * cd[4]) + cd[36] + 36)]) << 96
            mem[_229 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_229 + 132] = msg.value
            mem[_229 + 164] = 64
            mem[_229 + 196] = mem[_229]
            idx = 0
            s = _229 + 32
            t = _229 + 228
            while idx < mem[_229]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            staticcall stor1.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _229 + (32 * mem[_229]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _311 = mem[_309]
            require mem[_309] <= test266151307()
            require _309 + mem[_309] + 31 < _309 + return_data.size
            _313 = mem[_309 + mem[_309]]
            if mem[_309 + mem[_309]] > test266151307():
                revert with 'NH{q', 65
            if _309 + ceil32(return_data.size) + floor32(mem[_309 + mem[_309]]) + 1 > test266151307() or floor32(mem[_309 + mem[_309]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _309 + ceil32(return_data.size) + floor32(mem[_309 + mem[_309]]) + 1
            mem[_309 + ceil32(return_data.size)] = _313
            require _311 + (32 * _313) + 32 <= return_data.size
            idx = 0
            s = _309 + _311 + 32
            t = _309 + ceil32(return_data.size) + 32
            while idx < _313:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_229] < 1:
                revert with 'NH{q', 17
            if mem[_229] - 1 >= _313:
                revert with 'NH{q', 50
            _367 = mem[(32 * mem[_229] - 1) + _309 + ceil32(return_data.size) + 32]
            if block.timestamp > -11:
                revert with 'NH{q', 17
            if mem[(32 * mem[_229] - 1) + _309 + ceil32(return_data.size) + 32] <= _227:
                _369 = mem[64]
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _227
                mem[mem[64] + 36] = 128
                _373 = mem[96]
                mem[mem[64] + 132] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < _373:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_369 + 68] = this.address
                mem[_369 + 100] = block.timestamp + 10
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _369 + (32 * _373) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _417 = mem[_413]
                require mem[_413] <= test266151307()
                require _413 + mem[_413] + 31 < _413 + return_data.size
                _421 = mem[_413 + mem[_413]]
                if mem[_413 + mem[_413]] > test266151307():
                    revert with 'NH{q', 65
                if _413 + ceil32(return_data.size) + floor32(mem[_413 + mem[_413]]) + 1 > test266151307() or floor32(mem[_413 + mem[_413]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _413 + ceil32(return_data.size) + floor32(mem[_413 + mem[_413]]) + 1
                mem[_413 + ceil32(return_data.size)] = _421
                require _417 + (32 * _421) + 32 <= return_data.size
                idx = 0
                s = _413 + _417 + 32
                t = _413 + ceil32(return_data.size) + 32
                while idx < _421:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                _371 = mem[64]
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _367
                mem[mem[64] + 36] = 128
                _375 = mem[_229]
                mem[mem[64] + 132] = mem[_229]
                idx = 0
                s = _229 + 32
                t = mem[64] + 164
                while idx < _375:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_371 + 68] = this.address
                mem[_371 + 100] = block.timestamp + 10
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _371 + (32 * _375) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _418 = mem[_414]
                require mem[_414] <= test266151307()
                require _414 + mem[_414] + 31 < _414 + return_data.size
                _422 = mem[_414 + mem[_414]]
                if mem[_414 + mem[_414]] > test266151307():
                    revert with 'NH{q', 65
                if _414 + ceil32(return_data.size) + floor32(mem[_414 + mem[_414]]) + 1 > test266151307() or floor32(mem[_414 + mem[_414]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _414 + ceil32(return_data.size) + floor32(mem[_414 + mem[_414]]) + 1
                mem[_414 + ceil32(return_data.size)] = _422
                require _418 + (32 * _422) + 32 <= return_data.size
                idx = 0
                s = _414 + _418 + 32
                t = _414 + ceil32(return_data.size) + 32
                while idx < _422:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        if cd[100]:
            if block.timestamp > -11:
                revert with 'NH{q', 17
            mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[196] = cd[100]
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
            mem[260] = msg.sender
            mem[292] = block.timestamp + 10
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args cd[100], Array(len=2, data=mem[356 len 64]), msg.sender, block.timestamp + 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _128 = mem[192 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[192 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 223 < return_data.size + 192
            _130 = mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[100]) >> 32 + 192]
            require _128 + (32 * _130) + 32 <= return_data.size
            idx = 0
            s = _128 + 224
            t = ceil32(return_data.size) + 224
            while idx < _130:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = msg.value
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _118 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
            require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < return_data.size + 192
            _120 = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
            require _118 + (32 * _120) + 32 <= return_data.size
            idx = 0
            s = _118 + 224
            t = ceil32(return_data.size) + 224
            while idx < _120:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _120:
                revert with 'NH{q', 50
            _228 = mem[ceil32(return_data.size) + 256]
            _230 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_230]:
                revert with 'NH{q', 50
            mem[_230 + 32] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if 1 >= mem[_230]:
                revert with 'NH{q', 50
            mem[_230 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            if 2 >= mem[_230]:
                revert with 'NH{q', 50
            mem[_230 + 96] = uint64(cd[((32 * cd[4]) + cd[36] + 36)]) << 96
            mem[_230 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_230 + 132] = msg.value
            mem[_230 + 164] = 64
            mem[_230 + 196] = mem[_230]
            idx = 0
            s = _230 + 32
            t = _230 + 228
            while idx < mem[_230]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            staticcall stor1.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _230 + (32 * mem[_230]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _310 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _312 = mem[_310]
            require mem[_310] <= test266151307()
            require _310 + mem[_310] + 31 < _310 + return_data.size
            _314 = mem[_310 + mem[_310]]
            if mem[_310 + mem[_310]] > test266151307():
                revert with 'NH{q', 65
            if _310 + ceil32(return_data.size) + floor32(mem[_310 + mem[_310]]) + 1 > test266151307() or floor32(mem[_310 + mem[_310]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _310 + ceil32(return_data.size) + floor32(mem[_310 + mem[_310]]) + 1
            mem[_310 + ceil32(return_data.size)] = _314
            require _312 + (32 * _314) + 32 <= return_data.size
            idx = 0
            s = _310 + _312 + 32
            t = _310 + ceil32(return_data.size) + 32
            while idx < _314:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_230] < 1:
                revert with 'NH{q', 17
            if mem[_230] - 1 >= _314:
                revert with 'NH{q', 50
            _368 = mem[(32 * mem[_230] - 1) + _310 + ceil32(return_data.size) + 32]
            if block.timestamp > -11:
                revert with 'NH{q', 17
            if mem[(32 * mem[_230] - 1) + _310 + ceil32(return_data.size) + 32] <= _228:
                _370 = mem[64]
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _228
                mem[mem[64] + 36] = 128
                _374 = mem[96]
                mem[mem[64] + 132] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = msg.sender
                mem[_370 + 100] = block.timestamp + 10
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _370 + (32 * _374) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _419 = mem[_415]
                require mem[_415] <= test266151307()
                require _415 + mem[_415] + 31 < _415 + return_data.size
                _423 = mem[_415 + mem[_415]]
                if mem[_415 + mem[_415]] > test266151307():
                    revert with 'NH{q', 65
                if _415 + ceil32(return_data.size) + floor32(mem[_415 + mem[_415]]) + 1 > test266151307() or floor32(mem[_415 + mem[_415]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _415 + ceil32(return_data.size) + floor32(mem[_415 + mem[_415]]) + 1
                mem[_415 + ceil32(return_data.size)] = _423
                require _419 + (32 * _423) + 32 <= return_data.size
                idx = 0
                s = _415 + _419 + 32
                t = _415 + ceil32(return_data.size) + 32
                while idx < _423:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                _372 = mem[64]
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _368
                mem[mem[64] + 36] = 128
                _376 = mem[_230]
                mem[mem[64] + 132] = mem[_230]
                idx = 0
                s = _230 + 32
                t = mem[64] + 164
                while idx < _376:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_372 + 68] = msg.sender
                mem[_372 + 100] = block.timestamp + 10
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _372 + (32 * _376) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _420 = mem[_416]
                require mem[_416] <= test266151307()
                require _416 + mem[_416] + 31 < _416 + return_data.size
                _424 = mem[_416 + mem[_416]]
                if mem[_416 + mem[_416]] > test266151307():
                    revert with 'NH{q', 65
                if _416 + ceil32(return_data.size) + floor32(mem[_416 + mem[_416]]) + 1 > test266151307() or floor32(mem[_416 + mem[_416]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _416 + ceil32(return_data.size) + floor32(mem[_416 + mem[_416]]) + 1
                mem[_416 + ceil32(return_data.size)] = _424
                require _420 + (32 * _424) + 32 <= return_data.size
                idx = 0
                s = _416 + _420 + 32
                t = _416 + ceil32(return_data.size) + 32
                while idx < _424:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}



}
