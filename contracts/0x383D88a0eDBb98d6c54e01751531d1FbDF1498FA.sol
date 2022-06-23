contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor4;
mapping of uint8 stor5;
address stor6;
address stor7;
address stor8;
array of struct stor9;
uint256 stor11;

function _fallback() payable {
    revert
}

function deposit() payable {
    if not msg.value:
        revert with 0, 'Message must hold a value'
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        require msg.sender == stor7
    stor6 = arg1
}

function withdraw() {
    if stor6 != msg.sender:
        require msg.sender == stor7
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_a5e7af06(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor6 != msg.sender:
        require msg.sender == stor7
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_230f5492(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor6 != msg.sender:
        require msg.sender == stor7
    stor11 = ('cd', 4).length
    stor9.length = 0
    idx = 0
    while stor9.length > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor11:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor9.length++
        mem[0] = 9
        stor9[stor9.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_cd4648f8(?) {
    if stor6 != msg.sender:
        require msg.sender == stor7
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        idx = 0
        s = 128
        t = (32 * stor9.length) + 192
        while idx < stor9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor9.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor9.length) + -mem[64] + 192
}

function sub_d66517d4(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor6 != msg.sender:
        require msg.sender == stor7
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[68]:
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = 0xe1853af600000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 132] = 96
        idx = 0
        s = 128
        t = (32 * ('cd', 36).length) + ceil32(return_data.size) + 260
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xe1853af6 with:
             gas gas_remaining wei
            args Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 260 len 32 * ('cd', 36).length]), cd[68], address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9b4a29a3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == stor6:
        idx = 0
        while idx < stor11:
            if 0 >= mem[96]:
                revert with 0, 50
            _56 = mem[128]
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = 9
            mem[mem[64] + 4] = stor9[idx].field_0
            require ext_code.size(address(_56))
            staticcall address(_56).0x70a08231 with:
                    gas gas_remaining wei
                   args stor9[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _66 = mem[_64]
            if mem[_64]:
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                mem[mem[64]] = 0xe1853af600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 132
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 36] = _66
                mem[mem[64] + 68] = stor9[idx].field_0
                require ext_code.size(stor9[idx].field_0)
                call stor9[idx].field_0.0xe1853af6 with:
                     gas gas_remaining wei
                    args 96, _66, stor9[idx].field_0, mem[mem[64] + 100 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require msg.sender == stor7
        idx = 0
        while idx < stor11:
            if 0 >= mem[96]:
                revert with 0, 50
            _57 = mem[128]
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = 9
            mem[mem[64] + 4] = stor9[idx].field_0
            require ext_code.size(address(_57))
            staticcall address(_57).0x70a08231 with:
                    gas gas_remaining wei
                   args stor9[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_65]
            if mem[_65]:
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                _73 = mem[64]
                mem[mem[64]] = 0xe1853af600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                _75 = mem[96]
                mem[mem[64] + 100] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 132
                while s < _75:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_73 + 36] = _67
                mem[_73 + 68] = stor9[idx].field_0
                require ext_code.size(stor9[idx].field_0)
                call stor9[idx].field_0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _73 + (32 * _75) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_7e530192(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == bool(arg6)
    if msg.sender == stor6:
        mem[0] = msg.sender
        mem[32] = 5
        stor5[msg.sender] = 1
        if stor4 == address(arg1):
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor4
            mem[160] = address(arg2)
            if not arg6:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _733 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_733)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_733)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _760 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_760] == mem[_760 + 12 len 20]
                    require ext_code.size(mem[_760 + 12 len 20])
                    staticcall mem[_760 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _790 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_790] == mem[_790 + 18 len 14]
                    require mem[_790 + 32] == mem[_790 + 50 len 14]
                    require mem[_790 + 64] == mem[_790 + 92 len 4]
                    require mem[_790 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = arg5
                        mem[mem[64] + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.0x6023e966 with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args 128, arg4, arg5, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[192] = 2
                mem[224] = address(arg2)
                mem[256] = stor4
                mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[292] = 10^15
                mem[324] = 64
                mem[356] = 2
                idx = 0
                s = 128
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _750 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require return_data.size + 288 > mem[288 len 4], 232830 + 319
                _762 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[288 len 4], 232830 + 288]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require return_data.size >= _750 + (32 * _762) + 32
                mem[ceil32(return_data.size) + 320 len 32 * _762] = mem[_750 + 320 len 32 * _762]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1808 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1816 = mem[_1808]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1816
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 224
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1816, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2216 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2224 = mem[_2216]
                require mem[_2216] <= test266151307()
                require _2216 + return_data.size > _2216 + mem[_2216] + 31
                _2232 = mem[_2216 + mem[_2216]]
                if mem[_2216 + mem[_2216]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2216 + mem[_2216]]) + 32 < 0 or _2216 + ceil32(return_data.size) + (32 * mem[_2216 + mem[_2216]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2216 + ceil32(return_data.size) + (32 * mem[_2216 + mem[_2216]]) + 32
                mem[_2216 + ceil32(return_data.size)] = _2232
                require return_data.size >= _2224 + (32 * _2232) + 32
                mem[_2216 + ceil32(return_data.size) + 32 len 32 * _2232] = mem[_2216 + _2224 + 32 len 32 * _2232]
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 0, 50
                if _1816 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _1816 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2632 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2632] == bool(mem[_2632])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1816
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2656 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < mem[192]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _1816, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2656) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2216 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2216 + ceil32(return_data.size)] - 1 >= mem[_2216 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2216 + ceil32(return_data.size)] - 1) + _2216 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _3115 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_3115)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_3115)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3136] == mem[_3136 + 12 len 20]
                    require ext_code.size(mem[_3136 + 12 len 20])
                    staticcall mem[_3136 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3168] == mem[_3168 + 18 len 14]
                    require mem[_3168 + 32] == mem[_3168 + 50 len 14]
                    require mem[_3168 + 64] == mem[_3168 + 92 len 4]
                    require mem[_3168 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        _3200 = mem[64]
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        _3208 = mem[96]
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < _3208:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3200 + 36] = arg4
                        mem[_3200 + 68] = arg5
                        mem[_3200 + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.mem[mem[64] len 4] with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3200 + (32 * _3208) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor4
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            if not arg6:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _729 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_729)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_729)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _757 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_757] == mem[_757 + 12 len 20]
                    require ext_code.size(mem[_757 + 12 len 20])
                    staticcall mem[_757 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _789 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_789] == mem[_789 + 18 len 14]
                    require mem[_789 + 32] == mem[_789 + 50 len 14]
                    require mem[_789 + 64] == mem[_789 + 92 len 4]
                    require mem[_789 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = arg5
                        mem[mem[64] + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.0x6023e966 with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args 128, arg4, arg5, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[224] = 2
                mem[256] = address(arg1)
                mem[288] = stor4
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^15
                mem[356] = 64
                mem[388] = 3
                idx = 0
                s = 128
                t = 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _747 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], 232830 + 351
                _759 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[320 len 4], 232830 + 320]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require return_data.size >= _747 + (32 * _759) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _759] = mem[_747 + 352 len 32 * _759]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1806 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1814 = mem[_1806]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1814
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1814, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2214 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2222 = mem[_2214]
                require mem[_2214] <= test266151307()
                require _2214 + return_data.size > _2214 + mem[_2214] + 31
                _2230 = mem[_2214 + mem[_2214]]
                if mem[_2214 + mem[_2214]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2214 + mem[_2214]]) + 32 < 0 or _2214 + ceil32(return_data.size) + (32 * mem[_2214 + mem[_2214]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2214 + ceil32(return_data.size) + (32 * mem[_2214 + mem[_2214]]) + 32
                mem[_2214 + ceil32(return_data.size)] = _2230
                require return_data.size >= _2222 + (32 * _2230) + 32
                mem[_2214 + ceil32(return_data.size) + 32 len 32 * _2230] = mem[_2214 + _2222 + 32 len 32 * _2230]
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 0, 50
                if _1814 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _1814 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2630] == bool(mem[_2630])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1814
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2654 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < mem[224]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _1814, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2654) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2214 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2214 + ceil32(return_data.size)] - 1 >= mem[_2214 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2214 + ceil32(return_data.size)] - 1) + _2214 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _3111 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_3111)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_3111)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3134] == mem[_3134 + 12 len 20]
                    require ext_code.size(mem[_3134 + 12 len 20])
                    staticcall mem[_3134 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3166] == mem[_3166 + 18 len 14]
                    require mem[_3166 + 32] == mem[_3166 + 50 len 14]
                    require mem[_3166 + 64] == mem[_3166 + 92 len 4]
                    require mem[_3166 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = arg5
                        mem[mem[64] + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.0x6023e966 with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args 128, arg4, arg5, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        require msg.sender == stor7
        mem[0] = msg.sender
        mem[32] = 5
        stor5[msg.sender] = 1
        if stor4 == address(arg1):
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor4
            mem[160] = address(arg2)
            if not arg6:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _741 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_741)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_741)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_766] == mem[_766 + 12 len 20]
                    require ext_code.size(mem[_766 + 12 len 20])
                    staticcall mem[_766 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_792] == mem[_792 + 18 len 14]
                    require mem[_792 + 32] == mem[_792 + 50 len 14]
                    require mem[_792 + 64] == mem[_792 + 92 len 4]
                    require mem[_792 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        _886 = mem[64]
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        _898 = mem[96]
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < _898:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_886 + 36] = arg4
                        mem[_886 + 68] = arg5
                        mem[_886 + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.mem[mem[64] len 4] with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _886 + (32 * _898) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[192] = 2
                mem[224] = address(arg2)
                mem[256] = stor4
                mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[292] = 10^15
                mem[324] = 64
                mem[356] = 2
                idx = 0
                s = 128
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _756 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require return_data.size + 288 > mem[288 len 4], 232830 + 319
                _768 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[288 len 4], 232830 + 288]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require return_data.size >= _756 + (32 * _768) + 32
                mem[ceil32(return_data.size) + 320 len 32 * _768] = mem[_756 + 320 len 32 * _768]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1812 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1820 = mem[_1812]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1820
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 224
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1820, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2220 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2228 = mem[_2220]
                require mem[_2220] <= test266151307()
                require _2220 + return_data.size > _2220 + mem[_2220] + 31
                _2236 = mem[_2220 + mem[_2220]]
                if mem[_2220 + mem[_2220]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2220 + mem[_2220]]) + 32 < 0 or _2220 + ceil32(return_data.size) + (32 * mem[_2220 + mem[_2220]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2220 + ceil32(return_data.size) + (32 * mem[_2220 + mem[_2220]]) + 32
                mem[_2220 + ceil32(return_data.size)] = _2236
                require return_data.size >= _2228 + (32 * _2236) + 32
                mem[_2220 + ceil32(return_data.size) + 32 len 32 * _2236] = mem[_2220 + _2228 + 32 len 32 * _2236]
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 0, 50
                if _1820 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _1820 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2636] == bool(mem[_2636])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1820
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2660 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < mem[192]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _1820, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2660) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2220 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2220 + ceil32(return_data.size)] - 1 >= mem[_2220 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2220 + ceil32(return_data.size)] - 1) + _2220 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _3123 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_3123)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_3123)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3140] == mem[_3140 + 12 len 20]
                    require ext_code.size(mem[_3140 + 12 len 20])
                    staticcall mem[_3140 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3172 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3172] == mem[_3172 + 18 len 14]
                    require mem[_3172 + 32] == mem[_3172 + 50 len 14]
                    require mem[_3172 + 64] == mem[_3172 + 92 len 4]
                    require mem[_3172 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = arg5
                        mem[mem[64] + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.0x6023e966 with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args 128, arg4, arg5, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor4
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            if not arg6:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _737 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_737)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_737)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _763 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_763] == mem[_763 + 12 len 20]
                    require ext_code.size(mem[_763 + 12 len 20])
                    staticcall mem[_763 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _791 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_791] == mem[_791 + 18 len 14]
                    require mem[_791 + 32] == mem[_791 + 50 len 14]
                    require mem[_791 + 64] == mem[_791 + 92 len 4]
                    require mem[_791 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = arg5
                        mem[mem[64] + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.0x6023e966 with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args 128, arg4, arg5, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[224] = 2
                mem[256] = address(arg1)
                mem[288] = stor4
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^15
                mem[356] = 64
                mem[388] = 3
                idx = 0
                s = 128
                t = 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _753 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], 232830 + 351
                _765 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[320 len 4], 232830 + 320]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require return_data.size >= _753 + (32 * _765) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _765] = mem[_753 + 352 len 32 * _765]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1810 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1818 = mem[_1810]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1818
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1818, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2218 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2226 = mem[_2218]
                require mem[_2218] <= test266151307()
                require _2218 + return_data.size > _2218 + mem[_2218] + 31
                _2234 = mem[_2218 + mem[_2218]]
                if mem[_2218 + mem[_2218]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2218 + mem[_2218]]) + 32 < 0 or _2218 + ceil32(return_data.size) + (32 * mem[_2218 + mem[_2218]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2218 + ceil32(return_data.size) + (32 * mem[_2218 + mem[_2218]]) + 32
                mem[_2218 + ceil32(return_data.size)] = _2234
                require return_data.size >= _2226 + (32 * _2234) + 32
                mem[_2218 + ceil32(return_data.size) + 32 len 32 * _2234] = mem[_2218 + _2226 + 32 len 32 * _2234]
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 0, 50
                if _1818 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _1818 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2634] == bool(mem[_2634])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1818
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2658 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < mem[224]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _1818, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2658) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2218 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2218 + ceil32(return_data.size)] - 1 >= mem[_2218 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2218 + ceil32(return_data.size)] - 1) + _2218 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    if not mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    _3119 = mem[160]
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_3119)
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_3119)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3138] == mem[_3138 + 12 len 20]
                    require ext_code.size(mem[_3138 + 12 len 20])
                    staticcall mem[_3138 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3170] == mem[_3170 + 18 len 14]
                    require mem[_3170 + 32] == mem[_3170 + 50 len 14]
                    require mem[_3170 + 64] == mem[_3170 + 92 len 4]
                    require mem[_3170 + 18 len 14] > 0
                    if arg5 and arg4 > -1 / arg5:
                        revert with 0, 17
                    if eth.balance(this.address) > arg5 * arg4:
                        if arg5 and arg4 > -1 / arg5:
                            revert with 0, 17
                        mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = arg5
                        mem[mem[64] + 100] = stor9[idx].field_0
                        require ext_code.size(stor9[idx].field_0)
                        call stor9[idx].field_0.0x6023e966 with:
                           value arg5 * arg4 wei
                             gas gas_remaining wei
                            args 128, arg4, arg5, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_02c41485(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg7 == bool(arg7)
    if msg.sender == stor6:
        mem[0] = msg.sender
        mem[32] = 5
        stor5[msg.sender] = 1
        if stor4 == address(arg1):
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor4
            mem[160] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    _748 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _760 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _760:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _748 + (32 * _760) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1376 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1388 = mem[_1376]
                    require mem[_1376] <= test266151307()
                    require _1376 + return_data.size > _1376 + mem[_1376] + 31
                    _1400 = mem[_1376 + mem[_1376]]
                    if mem[_1376 + mem[_1376]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_1376 + mem[_1376]]) + 32 < 0 or _1376 + ceil32(return_data.size) + (32 * mem[_1376 + mem[_1376]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _1376 + ceil32(return_data.size) + (32 * mem[_1376 + mem[_1376]]) + 32
                    mem[_1376 + ceil32(return_data.size)] = _1400
                    require return_data.size >= _1388 + (32 * _1400) + 32
                    t = _1376 + _1388 + 32
                    u = _1376 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1400:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1400:
                        revert with 0, 50
                    if mem[_1376 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1376 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_1376 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _1400:
                            revert with 0, 50
                        if mem[_1376 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _1400:
                                revert with 0, 50
                            _2002 = mem[_1376 + ceil32(return_data.size) + 32]
                            if mem[_1376 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1376 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _1400:
                                revert with 0, 50
                            _2029 = mem[_1376 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 36] = arg4
                            mem[mem[64] + 68] = _2029
                            mem[mem[64] + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.0x6023e966 with:
                               value _2002 * arg4 wei
                                 gas gas_remaining wei
                                args 128, arg4, _2029, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[192] = 2
                mem[224] = address(arg2)
                mem[256] = stor4
                mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[292] = 10^15
                mem[324] = 64
                mem[356] = 2
                idx = 0
                s = 128
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _774 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require return_data.size + 288 > mem[288 len 4], 232830 + 319
                _786 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[288 len 4], 232830 + 288]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require return_data.size >= _774 + (32 * _786) + 32
                mem[ceil32(return_data.size) + 320 len 32 * _786] = mem[_774 + 320 len 32 * _786]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2008 = mem[_1994]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2008
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 224
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _2008, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2464 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2472 = mem[_2464]
                require mem[_2464] <= test266151307()
                require _2464 + return_data.size > _2464 + mem[_2464] + 31
                _2480 = mem[_2464 + mem[_2464]]
                if mem[_2464 + mem[_2464]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2464 + mem[_2464]]) + 32 < 0 or _2464 + ceil32(return_data.size) + (32 * mem[_2464 + mem[_2464]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2464 + ceil32(return_data.size) + (32 * mem[_2464 + mem[_2464]]) + 32
                mem[_2464 + ceil32(return_data.size)] = _2480
                require return_data.size >= _2472 + (32 * _2480) + 32
                mem[_2464 + ceil32(return_data.size) + 32 len 32 * _2480] = mem[_2464 + _2472 + 32 len 32 * _2480]
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 0, 50
                if _2008 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _2008 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2904 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2904] == bool(mem[_2904])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2008
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2928 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < mem[192]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _2008, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2928) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2464 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2464 + ceil32(return_data.size)] - 1 >= mem[_2464 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2464 + ceil32(return_data.size)] - 1) + _2464 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3592 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3600 = mem[_3592]
                    require mem[_3592] <= test266151307()
                    require _3592 + return_data.size > _3592 + mem[_3592] + 31
                    _3608 = mem[_3592 + mem[_3592]]
                    if mem[_3592 + mem[_3592]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_3592 + mem[_3592]]) + 32 < 0 or _3592 + ceil32(return_data.size) + (32 * mem[_3592 + mem[_3592]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3592 + ceil32(return_data.size) + (32 * mem[_3592 + mem[_3592]]) + 32
                    mem[_3592 + ceil32(return_data.size)] = _3608
                    require return_data.size >= _3600 + (32 * _3608) + 32
                    t = _3592 + _3600 + 32
                    u = _3592 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3608:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _3608:
                        revert with 0, 50
                    if mem[_3592 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3592 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_3592 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _3608:
                            revert with 0, 50
                        if mem[_3592 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _3608:
                                revert with 0, 50
                            _3776 = mem[_3592 + ceil32(return_data.size) + 32]
                            if mem[_3592 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3592 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _3608:
                                revert with 0, 50
                            _3795 = mem[_3592 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 36] = arg4
                            mem[mem[64] + 68] = _3795
                            mem[mem[64] + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.0x6023e966 with:
                               value _3776 * arg4 wei
                                 gas gas_remaining wei
                                args 128, arg4, _3795, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor4
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1373 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1385 = mem[_1373]
                    require mem[_1373] <= test266151307()
                    require _1373 + return_data.size > _1373 + mem[_1373] + 31
                    _1397 = mem[_1373 + mem[_1373]]
                    if mem[_1373 + mem[_1373]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_1373 + mem[_1373]]) + 32 < 0 or _1373 + ceil32(return_data.size) + (32 * mem[_1373 + mem[_1373]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _1373 + ceil32(return_data.size) + (32 * mem[_1373 + mem[_1373]]) + 32
                    mem[_1373 + ceil32(return_data.size)] = _1397
                    require return_data.size >= _1385 + (32 * _1397) + 32
                    t = _1373 + _1385 + 32
                    u = _1373 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1397:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1397:
                        revert with 0, 50
                    if mem[_1373 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1373 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_1373 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _1397:
                            revert with 0, 50
                        if mem[_1373 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _1397:
                                revert with 0, 50
                            _2001 = mem[_1373 + ceil32(return_data.size) + 32]
                            if mem[_1373 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1373 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _1397:
                                revert with 0, 50
                            _2025 = mem[_1373 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 36] = arg4
                            mem[mem[64] + 68] = _2025
                            mem[mem[64] + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.0x6023e966 with:
                               value _2001 * arg4 wei
                                 gas gas_remaining wei
                                args 128, arg4, _2025, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[224] = 2
                mem[256] = address(arg1)
                mem[288] = stor4
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^15
                mem[356] = 64
                mem[388] = 3
                idx = 0
                s = 128
                t = 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _771 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], 232830 + 351
                _783 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[320 len 4], 232830 + 320]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require return_data.size >= _771 + (32 * _783) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _783] = mem[_771 + 352 len 32 * _783]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1991 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2006 = mem[_1991]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2006
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _2006, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2462 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2470 = mem[_2462]
                require mem[_2462] <= test266151307()
                require _2462 + return_data.size > _2462 + mem[_2462] + 31
                _2478 = mem[_2462 + mem[_2462]]
                if mem[_2462 + mem[_2462]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2462 + mem[_2462]]) + 32 < 0 or _2462 + ceil32(return_data.size) + (32 * mem[_2462 + mem[_2462]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2462 + ceil32(return_data.size) + (32 * mem[_2462 + mem[_2462]]) + 32
                mem[_2462 + ceil32(return_data.size)] = _2478
                require return_data.size >= _2470 + (32 * _2478) + 32
                mem[_2462 + ceil32(return_data.size) + 32 len 32 * _2478] = mem[_2462 + _2470 + 32 len 32 * _2478]
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 0, 50
                if _2006 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _2006 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2902 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2902] == bool(mem[_2902])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2006
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2926 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < mem[224]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _2006, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2926) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2462 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2462 + ceil32(return_data.size)] - 1 >= mem[_2462 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2462 + ceil32(return_data.size)] - 1) + _2462 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3590 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3598 = mem[_3590]
                    require mem[_3590] <= test266151307()
                    require _3590 + return_data.size > _3590 + mem[_3590] + 31
                    _3606 = mem[_3590 + mem[_3590]]
                    if mem[_3590 + mem[_3590]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_3590 + mem[_3590]]) + 32 < 0 or _3590 + ceil32(return_data.size) + (32 * mem[_3590 + mem[_3590]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3590 + ceil32(return_data.size) + (32 * mem[_3590 + mem[_3590]]) + 32
                    mem[_3590 + ceil32(return_data.size)] = _3606
                    require return_data.size >= _3598 + (32 * _3606) + 32
                    t = _3590 + _3598 + 32
                    u = _3590 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3606:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _3606:
                        revert with 0, 50
                    if mem[_3590 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3590 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_3590 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _3606:
                            revert with 0, 50
                        if mem[_3590 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _3606:
                                revert with 0, 50
                            _3774 = mem[_3590 + ceil32(return_data.size) + 32]
                            if mem[_3590 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3590 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _3606:
                                revert with 0, 50
                            _3791 = mem[_3590 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 36] = arg4
                            mem[mem[64] + 68] = _3791
                            mem[mem[64] + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.0x6023e966 with:
                               value _3774 * arg4 wei
                                 gas gas_remaining wei
                                args 128, arg4, _3791, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        require msg.sender == stor7
        mem[0] = msg.sender
        mem[32] = 5
        stor5[msg.sender] = 1
        if stor4 != address(arg1):
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor4
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1379 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1391 = mem[_1379]
                    require mem[_1379] <= test266151307()
                    require _1379 + return_data.size > _1379 + mem[_1379] + 31
                    _1403 = mem[_1379 + mem[_1379]]
                    if mem[_1379 + mem[_1379]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_1379 + mem[_1379]]) + 32 < 0 or _1379 + ceil32(return_data.size) + (32 * mem[_1379 + mem[_1379]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _1379 + ceil32(return_data.size) + (32 * mem[_1379 + mem[_1379]]) + 32
                    mem[_1379 + ceil32(return_data.size)] = _1403
                    require return_data.size >= _1391 + (32 * _1403) + 32
                    t = _1379 + _1391 + 32
                    u = _1379 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1403:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1403:
                        revert with 0, 50
                    if mem[_1379 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1379 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_1379 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _1403:
                            revert with 0, 50
                        if mem[_1379 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _1403:
                                revert with 0, 50
                            _2003 = mem[_1379 + ceil32(return_data.size) + 32]
                            if mem[_1379 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1379 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _1403:
                                revert with 0, 50
                            _2033 = mem[_1379 + ceil32(return_data.size) + 32]
                            _2034 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2047 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2047:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2034 + 36] = arg4
                            mem[_2034 + 68] = _2033
                            mem[_2034 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2003 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2034 + (32 * _2047) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[224] = 2
                mem[256] = address(arg1)
                mem[288] = stor4
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^15
                mem[356] = 64
                mem[388] = 3
                idx = 0
                s = 128
                t = 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _777 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], 232830 + 351
                _789 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[320 len 4], 232830 + 320]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require return_data.size >= _777 + (32 * _789) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _789] = mem[_777 + 352 len 32 * _789]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2010 = mem[_1997]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2010
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _2010, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2466 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2474 = mem[_2466]
                require mem[_2466] <= test266151307()
                require _2466 + return_data.size > _2466 + mem[_2466] + 31
                _2482 = mem[_2466 + mem[_2466]]
                if mem[_2466 + mem[_2466]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2466 + mem[_2466]]) + 32 < 0 or _2466 + ceil32(return_data.size) + (32 * mem[_2466 + mem[_2466]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2466 + ceil32(return_data.size) + (32 * mem[_2466 + mem[_2466]]) + 32
                mem[_2466 + ceil32(return_data.size)] = _2482
                require return_data.size >= _2474 + (32 * _2482) + 32
                mem[_2466 + ceil32(return_data.size) + 32 len 32 * _2482] = mem[_2466 + _2474 + 32 len 32 * _2482]
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 0, 50
                if _2010 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _2010 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2906 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2906] == bool(mem[_2906])
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2010
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2930 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < mem[224]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _2010, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2930) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2466 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2466 + ceil32(return_data.size)] - 1 >= mem[_2466 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2466 + ceil32(return_data.size)] - 1) + _2466 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3594 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3602 = mem[_3594]
                    require mem[_3594] <= test266151307()
                    require _3594 + return_data.size > _3594 + mem[_3594] + 31
                    _3610 = mem[_3594 + mem[_3594]]
                    if mem[_3594 + mem[_3594]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_3594 + mem[_3594]]) + 32 < 0 or _3594 + ceil32(return_data.size) + (32 * mem[_3594 + mem[_3594]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3594 + ceil32(return_data.size) + (32 * mem[_3594 + mem[_3594]]) + 32
                    mem[_3594 + ceil32(return_data.size)] = _3610
                    require return_data.size >= _3602 + (32 * _3610) + 32
                    t = _3594 + _3602 + 32
                    u = _3594 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3610:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _3610:
                        revert with 0, 50
                    if mem[_3594 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3594 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_3594 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _3610:
                            revert with 0, 50
                        if mem[_3594 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _3610:
                                revert with 0, 50
                            _3778 = mem[_3594 + ceil32(return_data.size) + 32]
                            if mem[_3594 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3594 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _3610:
                                revert with 0, 50
                            _3799 = mem[_3594 + ceil32(return_data.size) + 32]
                            _3800 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _3810 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _3810:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_3800 + 36] = arg4
                            mem[_3800 + 68] = _3799
                            mem[_3800 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _3778 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3800 + (32 * _3810) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor4
            mem[160] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1382 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1394 = mem[_1382]
                    require mem[_1382] <= test266151307()
                    require _1382 + return_data.size > _1382 + mem[_1382] + 31
                    _1406 = mem[_1382 + mem[_1382]]
                    if mem[_1382 + mem[_1382]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_1382 + mem[_1382]]) + 32 < 0 or _1382 + ceil32(return_data.size) + (32 * mem[_1382 + mem[_1382]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _1382 + ceil32(return_data.size) + (32 * mem[_1382 + mem[_1382]]) + 32
                    mem[_1382 + ceil32(return_data.size)] = _1406
                    require return_data.size >= _1394 + (32 * _1406) + 32
                    t = _1382 + _1394 + 32
                    u = _1382 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1406:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1406:
                        revert with 0, 50
                    if mem[_1382 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1382 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_1382 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _1406:
                            revert with 0, 50
                        if mem[_1382 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _1406:
                                revert with 0, 50
                            _2004 = mem[_1382 + ceil32(return_data.size) + 32]
                            if mem[_1382 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_1382 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _1406:
                                revert with 0, 50
                            _2037 = mem[_1382 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 36] = arg4
                            mem[mem[64] + 68] = _2037
                            mem[mem[64] + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.0x6023e966 with:
                               value _2004 * arg4 wei
                                 gas gas_remaining wei
                                args 128, arg4, _2037, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 0, 50
                mem[192] = 2
                mem[224] = address(arg2)
                mem[256] = stor4
                mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[292] = 10^15
                mem[324] = 64
                mem[356] = 2
                idx = 0
                s = 128
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _780 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require return_data.size + 288 > mem[288 len 4], 232830 + 319
                _792 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 0, 65
                if (32 * mem[mem[288 len 4], 232830 + 288]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require return_data.size >= _780 + (32 * _792) + 32
                mem[ceil32(return_data.size) + 320 len 32 * _792] = mem[_780 + 320 len 32 * _792]
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2000 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2012 = mem[_2000]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2012
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 224
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _2012, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2468 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2476 = mem[_2468]
                require mem[_2468] <= test266151307()
                require _2468 + return_data.size > _2468 + mem[_2468] + 31
                _2484 = mem[_2468 + mem[_2468]]
                if mem[_2468 + mem[_2468]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2468 + mem[_2468]]) + 32 < 0 or _2468 + ceil32(return_data.size) + (32 * mem[_2468 + mem[_2468]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2468 + ceil32(return_data.size) + (32 * mem[_2468 + mem[_2468]]) + 32
                mem[_2468 + ceil32(return_data.size)] = _2484
                require return_data.size >= _2476 + (32 * _2484) + 32
                mem[_2468 + ceil32(return_data.size) + 32 len 32 * _2484] = mem[_2468 + _2476 + 32 len 32 * _2484]
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 0, 50
                if _2012 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * _2012 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2908 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2908] == bool(mem[_2908])
                if 15 > !block.timestamp:
                    revert with 0, 17
                _2924 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2012
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2932 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < _2932:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2924 + 100] = stor8
                mem[_2924 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2924 + (32 * _2932) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_2468 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_2468 + ceil32(return_data.size)] - 1 >= mem[_2468 + ceil32(return_data.size)]:
                    revert with 0, 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 0, 17
                if 0 < mem[(32 * mem[_2468 + ceil32(return_data.size)] - 1) + _2468 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg5, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3596 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3604 = mem[_3596]
                    require mem[_3596] <= test266151307()
                    require _3596 + return_data.size > _3596 + mem[_3596] + 31
                    _3612 = mem[_3596 + mem[_3596]]
                    if mem[_3596 + mem[_3596]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_3596 + mem[_3596]]) + 32 < 0 or _3596 + ceil32(return_data.size) + (32 * mem[_3596 + mem[_3596]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3596 + ceil32(return_data.size) + (32 * mem[_3596 + mem[_3596]]) + 32
                    mem[_3596 + ceil32(return_data.size)] = _3612
                    require return_data.size >= _3604 + (32 * _3612) + 32
                    t = _3596 + _3604 + 32
                    u = _3596 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3612:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _3612:
                        revert with 0, 50
                    if mem[_3596 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3596 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if eth.balance(this.address) > mem[_3596 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _3612:
                            revert with 0, 50
                        if mem[_3596 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _3612:
                                revert with 0, 50
                            _3780 = mem[_3596 + ceil32(return_data.size) + 32]
                            if mem[_3596 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_3596 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if 0 >= _3612:
                                revert with 0, 50
                            _3803 = mem[_3596 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 36] = arg4
                            mem[mem[64] + 68] = _3803
                            mem[mem[64] + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.0x6023e966 with:
                               value _3780 * arg4 wei
                                 gas gas_remaining wei
                                args 128, arg4, _3803, stor9[idx].field_0, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}



}
