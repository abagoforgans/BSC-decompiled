contract main {




// =====================  Runtime code  =====================


address nebulaAddress;
address tokenAddress;
uint256 sub_b5532d9d;
mapping of struct requests;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function nebula() payable {
    return nebulaAddress
}

function requests(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require requests[arg1].field_768 <= 2
    return requests[arg1].field_0, requests[arg1].field_256, requests[arg1].field_512, requests[arg1].field_768
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_b5532d9d(?) payable {
    return sub_b5532d9d
}

function _fallback() payable {
    revert
}

function requestsQueue() payable {
    return stor4, stor5
}

function createTransferUnwrapRequest(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer from'
    requests[stor2].field_0 = msg.sender
    requests[stor2].field_256 = arg1
    requests[stor2].field_512 = arg2
    requests[stor2].field_768 = 1
    require ext_code.size(0xdcd2c622037fdf0fdefc596dc1ada1528ba831c5)
    delegate 0xdcd2c622037fdf0fdefc596dc1ada1528ba831c5.0xa506d954 with:
         gas gas_remaining wei
        args 4, sub_b5532d9d
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ad0361a: sub_b5532d9d, arg1, arg2
    sub_b5532d9d++
}

function attachValue(bytes arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if nebulaAddress != msg.sender:
        revert with 0, 'access denied'
    idx = 0
    while idx < arg1.length:
        if Mask(8, 248, cd[(arg1 + idx + 36)]) != 0x7500000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, cd[(arg1 + idx + 36)]) != 0x6100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'invalid data'
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_27] = arg1.length
            mem[_27 + 32 len arg1.length] = arg1[all]
            mem[_27 + arg1.length + 32] = 0
            s = idx + 1
            t = 0
            while s < idx + 33:
                require s < arg1.length
                s = s + 1
                t = (256 * t) + (uint8(mem[_27 + s + 32]) >> 248)
                continue 
            require requests[t].field_768 <= 2
            if requests[t].field_768 != 1:
                revert with 0, 'invalid status'
            mem[0] = t
            mem[32] = 3
            requests[t].field_768 = 2
            mem[mem[64]] = 0x9d6ad84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 4
            mem[mem[64] + 36] = t
            require ext_code.size(0xdcd2c622037fdf0fdefc596dc1ada1528ba831c5)
            delegate 0xdcd2c622037fdf0fdefc596dc1ada1528ba831c5.0x9d6ad84b with:
                 gas gas_remaining wei
                args 4, t
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 33
            continue 
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_24] = arg1.length
        mem[_24 + 32 len arg1.length] = arg1[all]
        mem[_24 + arg1.length + 32] = 0
        s = idx + 1
        t = 0
        while s < idx + 33:
            require s < arg1.length
            s = s + 1
            t = (256 * t) + (uint8(mem[_24 + s + 32]) >> 248)
            continue 
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_59] = arg1.length
        mem[_59 + 32 len arg1.length] = arg1[all]
        mem[_59 + arg1.length + 32] = 0
        s = idx + 33
        u = 0
        while s < idx + 65:
            require s < arg1.length
            s = s + 1
            u = (256 * u) + (uint8(mem[_59 + s + 32]) >> 248)
            continue 
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_85] = arg1.length
        mem[_85 + 32 len arg1.length] = arg1[all]
        mem[_85 + arg1.length + 32] = 0
        s = idx + 65
        v = 0
        while s < idx + 85:
            require s < arg1.length
            s = s + 1
            v = (256 * v) + (uint8(mem[_85 + s + 32]) >> 248)
            continue 
        mem[mem[64] + 4] = address(v)
        mem[mem[64] + 36] = u
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(v), u
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'can't transfer from contract'
        _107 = mem[64]
        mem[64] = mem[64] + 128
        mem[_107] = address(v)
        mem[_107 + 32] = u
        mem[_107 + 64] = 0
        mem[_107 + 96] = 2
        mem[0] = t
        mem[32] = 3
        requests[t].field_0 = address(v)
        requests[t].field_256 = u
        requests[t].field_512 = 0
        requests[t].field_768 = 2
        idx = idx + 85
        continue 
}

function getRequests() payable {
    idx = stor4
    s = 0
    while idx:
        mem[0] = idx
        mem[32] = 6
        idx = stor6[idx]
        s = s + 1
        continue 
    require s <= test266151307()
    if not s:
        require s <= test266151307()
        mem[(32 * s) + 128] = s
        if not s:
            require s <= test266151307()
            mem[(64 * s) + 160] = s
            if not s:
                require s <= test266151307()
                mem[(98 * s) + 192] = s
                if not s:
                    require s <= test266151307()
                    mem[(131 * s) + 224] = s
                    if not s:
                        idx = stor4
                        t = 0
                        while idx:
                            require t < s
                            mem[(32 * t) + 128] = idx
                            require t < mem[(32 * s) + 128]
                            mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                            require t < mem[(64 * s) + 160]
                            mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                            require t < mem[(98 * s) + 192]
                            mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                            require t < mem[(131 * s) + 224]
                            require requests[idx].field_768 <= 2
                            mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                            mem[0] = idx
                            mem[32] = 6
                            idx = stor6[idx]
                            t = t + 1
                            continue 
                        mem[(164 * s) + 256] = 160
                        mem[(164 * s) + 416] = s
                        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                        mem[(164 * s) + 288] = (32 * s) + 192
                        mem[(197 * s) + 448] = mem[(32 * s) + 128]
                        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                        _2243 = mem[(64 * s) + 160]
                        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                        mem[(164 * s) + 352] = (32 * _2243) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                        mem[(32 * _2243) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                        _2595 = mem[(98 * s) + 192]
                        mem[(32 * _2243) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                        mem[(164 * s) + 384] = (32 * _2595) + (32 * _2243) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                        mem[(32 * _2595) + (32 * _2243) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                        _2851 = mem[(131 * s) + 224]
                        mem[(32 * _2595) + (32 * _2243) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                        return memory
                          from (164 * s) + 256
                           len (32 * _2851) + (32 * _2595) + (32 * _2243) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
                    mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
                    idx = stor4
                    t = 0
                    while idx:
                        require t < s
                        mem[(32 * t) + 128] = idx
                        require t < mem[(32 * s) + 128]
                        mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                        require t < mem[(64 * s) + 160]
                        mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                        require t < mem[(98 * s) + 192]
                        mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                        require t < mem[(131 * s) + 224]
                        require requests[idx].field_768 <= 2
                        mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                        mem[0] = idx
                        mem[32] = 6
                        idx = stor6[idx]
                        t = t + 1
                        continue 
                    mem[(164 * s) + 256] = 160
                    mem[(164 * s) + 416] = s
                    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                    mem[(164 * s) + 288] = (32 * s) + 192
                    mem[(197 * s) + 448] = mem[(32 * s) + 128]
                    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                    _2246 = mem[(64 * s) + 160]
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                    mem[(164 * s) + 352] = (32 * _2246) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                    mem[(32 * _2246) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                    _2598 = mem[(98 * s) + 192]
                    mem[(32 * _2246) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                    mem[(164 * s) + 384] = (32 * _2598) + (32 * _2246) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                    mem[(32 * _2598) + (32 * _2246) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                    _2854 = mem[(131 * s) + 224]
                    mem[(32 * _2598) + (32 * _2246) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                    return memory
                      from (164 * s) + 256
                       len (32 * _2854) + (32 * _2598) + (32 * _2246) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
                mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
                require s <= test266151307()
                mem[(131 * s) + 224] = s
                if not s:
                    idx = stor4
                    t = 0
                    while idx:
                        require t < s
                        mem[(32 * t) + 128] = idx
                        require t < mem[(32 * s) + 128]
                        mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                        require t < mem[(64 * s) + 160]
                        mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                        require t < mem[(98 * s) + 192]
                        mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                        require t < mem[(131 * s) + 224]
                        require requests[idx].field_768 <= 2
                        mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                        mem[0] = idx
                        mem[32] = 6
                        idx = stor6[idx]
                        t = t + 1
                        continue 
                    mem[(164 * s) + 256] = 160
                    mem[(164 * s) + 416] = s
                    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                    mem[(164 * s) + 288] = (32 * s) + 192
                    mem[(197 * s) + 448] = mem[(32 * s) + 128]
                    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                    _2249 = mem[(64 * s) + 160]
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                    mem[(164 * s) + 352] = (32 * _2249) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                    mem[(32 * _2249) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                    _2601 = mem[(98 * s) + 192]
                    mem[(32 * _2249) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                    mem[(164 * s) + 384] = (32 * _2601) + (32 * _2249) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                    mem[(32 * _2601) + (32 * _2249) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                    _2857 = mem[(131 * s) + 224]
                    mem[(32 * _2601) + (32 * _2249) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                    return memory
                      from (164 * s) + 256
                       len (32 * _2857) + (32 * _2601) + (32 * _2249) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
                mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2252 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2252) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2252) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2604 = mem[(98 * s) + 192]
                mem[(32 * _2252) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2604) + (32 * _2252) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2604) + (32 * _2252) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2860 = mem[(131 * s) + 224]
                mem[(32 * _2604) + (32 * _2252) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2860) + (32 * _2604) + (32 * _2252) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(64 * s) + 192 len 32 * s] = call.data[calldata.size len 32 * s]
            require s <= test266151307()
            mem[(98 * s) + 192] = s
            if not s:
                require s <= test266151307()
                mem[(131 * s) + 224] = s
                if not s:
                    idx = stor4
                    t = 0
                    while idx:
                        require t < s
                        mem[(32 * t) + 128] = idx
                        require t < mem[(32 * s) + 128]
                        mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                        require t < mem[(64 * s) + 160]
                        mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                        require t < mem[(98 * s) + 192]
                        mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                        require t < mem[(131 * s) + 224]
                        require requests[idx].field_768 <= 2
                        mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                        mem[0] = idx
                        mem[32] = 6
                        idx = stor6[idx]
                        t = t + 1
                        continue 
                    mem[(164 * s) + 256] = 160
                    mem[(164 * s) + 416] = s
                    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                    mem[(164 * s) + 288] = (32 * s) + 192
                    mem[(197 * s) + 448] = mem[(32 * s) + 128]
                    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                    _2255 = mem[(64 * s) + 160]
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                    mem[(164 * s) + 352] = (32 * _2255) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                    mem[(32 * _2255) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                    _2607 = mem[(98 * s) + 192]
                    mem[(32 * _2255) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                    mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2255) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                    mem[(32 * mem[(98 * s) + 192]) + (32 * _2255) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                    _2863 = mem[(131 * s) + 224]
                    mem[(32 * _2607) + (32 * _2255) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                    return memory
                      from (164 * s) + 256
                       len (32 * _2863) + (32 * _2607) + (32 * _2255) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
                mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2258 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2258) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2258) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2610 = mem[(98 * s) + 192]
                mem[(32 * _2258) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2610) + (32 * _2258) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2610) + (32 * _2258) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2866 = mem[(131 * s) + 224]
                mem[(32 * _2610) + (32 * _2258) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2866) + (32 * _2610) + (32 * _2258) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
            require s <= test266151307()
            mem[(131 * s) + 224] = s
            if not s:
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2261 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2261) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2261) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2613 = mem[(98 * s) + 192]
                mem[(32 * _2261) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2613) + (32 * _2261) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2613) + (32 * _2261) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2869 = mem[(131 * s) + 224]
                mem[(32 * _2613) + (32 * _2261) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2869) + (32 * _2613) + (32 * _2261) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2264 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2264) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2264) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2616 = mem[(98 * s) + 192]
            mem[(32 * _2264) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2616) + (32 * _2264) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2616) + (32 * _2264) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            mem[(32 * _2616) + (32 * _2264) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * mem[(131 * s) + 224]) + (32 * _2616) + (32 * _2264) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[(64 * s) + 160] = s
        if not s:
            require s <= test266151307()
            mem[(98 * s) + 192] = s
            if not s:
                require s <= test266151307()
                mem[(131 * s) + 224] = s
                if not s:
                    idx = stor4
                    t = 0
                    while idx:
                        require t < s
                        mem[(32 * t) + 128] = idx
                        require t < mem[(32 * s) + 128]
                        mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                        require t < mem[(64 * s) + 160]
                        mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                        require t < mem[(98 * s) + 192]
                        mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                        require t < mem[(131 * s) + 224]
                        require requests[idx].field_768 <= 2
                        mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                        mem[0] = idx
                        mem[32] = 6
                        idx = stor6[idx]
                        t = t + 1
                        continue 
                    mem[(164 * s) + 256] = 160
                    mem[(164 * s) + 416] = s
                    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                    mem[(164 * s) + 288] = (32 * s) + 192
                    mem[(197 * s) + 448] = mem[(32 * s) + 128]
                    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                    _2267 = mem[(64 * s) + 160]
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                    mem[(164 * s) + 352] = (32 * _2267) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                    mem[(32 * _2267) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                    _2619 = mem[(98 * s) + 192]
                    mem[(32 * _2267) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                    mem[(164 * s) + 384] = (32 * _2619) + (32 * _2267) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                    mem[(32 * _2619) + (32 * _2267) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                    _2875 = mem[(131 * s) + 224]
                    mem[(32 * _2619) + (32 * _2267) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                    return memory
                      from (164 * s) + 256
                       len (32 * _2875) + (32 * _2619) + (32 * _2267) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
                mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2270 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2270) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2270) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2622 = mem[(98 * s) + 192]
                mem[(32 * _2270) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2622) + (32 * _2270) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2622) + (32 * _2270) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2878 = mem[(131 * s) + 224]
                mem[(32 * _2622) + (32 * _2270) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2878) + (32 * _2622) + (32 * _2270) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
            require s <= test266151307()
            mem[(131 * s) + 224] = s
            if not s:
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2273 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2273) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2273) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2625 = mem[(98 * s) + 192]
                mem[(32 * _2273) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2625) + (32 * _2273) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2625) + (32 * _2273) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2881 = mem[(131 * s) + 224]
                mem[(32 * _2625) + (32 * _2273) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2881) + (32 * _2625) + (32 * _2273) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2276 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2276) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2276) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2628 = mem[(98 * s) + 192]
            mem[(32 * _2276) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2628) + (32 * _2276) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2628) + (32 * _2276) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2884 = mem[(131 * s) + 224]
            mem[(32 * _2628) + (32 * _2276) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2884) + (32 * _2628) + (32 * _2276) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(64 * s) + 192 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[(98 * s) + 192] = s
        if not s:
            require s <= test266151307()
            mem[(131 * s) + 224] = s
            if not s:
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2279 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2279) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2279) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2631 = mem[(98 * s) + 192]
                mem[(32 * _2279) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2631) + (32 * _2279) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2631) + (32 * _2279) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2887 = mem[(131 * s) + 224]
                mem[(32 * _2631) + (32 * _2279) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2887) + (32 * _2631) + (32 * _2279) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2282 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2282) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2282) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2634 = mem[(98 * s) + 192]
            mem[(32 * _2282) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2634) + (32 * _2282) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2634) + (32 * _2282) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2890 = mem[(131 * s) + 224]
            mem[(32 * _2634) + (32 * _2282) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2890) + (32 * _2634) + (32 * _2282) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[(131 * s) + 224] = s
        if not s:
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2285 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2285) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2285) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            mem[(32 * _2285) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2285) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * mem[(98 * s) + 192]) + (32 * _2285) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2893 = mem[(131 * s) + 224]
            mem[(32 * mem[(98 * s) + 192]) + (32 * _2285) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2893) + (32 * mem[(98 * s) + 192]) + (32 * _2285) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
        idx = stor4
        t = 0
        while idx:
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
            require t < mem[(64 * s) + 160]
            mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
            require t < mem[(98 * s) + 192]
            mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
            require t < mem[(131 * s) + 224]
            require requests[idx].field_768 <= 2
            mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
            mem[0] = idx
            mem[32] = 6
            idx = stor6[idx]
            t = t + 1
            continue 
        mem[(164 * s) + 256] = 160
        mem[(164 * s) + 416] = s
        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
        mem[(164 * s) + 288] = (32 * s) + 192
        mem[(197 * s) + 448] = mem[(32 * s) + 128]
        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
        _2288 = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        mem[(164 * s) + 352] = (32 * _2288) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
        mem[(32 * _2288) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
        _2640 = mem[(98 * s) + 192]
        mem[(32 * _2288) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
        mem[(164 * s) + 384] = (32 * _2640) + (32 * _2288) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
        mem[(32 * _2640) + (32 * _2288) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
        _2896 = mem[(131 * s) + 224]
        mem[(32 * _2640) + (32 * _2288) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
        return memory
          from (164 * s) + 256
           len (32 * _2896) + (32 * _2640) + (32 * _2288) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
    mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[(32 * s) + 128] = s
    if not s:
        require s <= test266151307()
        mem[(64 * s) + 160] = s
        if not s:
            require s <= test266151307()
            mem[(98 * s) + 192] = s
            if not s:
                require s <= test266151307()
                mem[(131 * s) + 224] = s
                if not s:
                    idx = stor4
                    t = 0
                    while idx:
                        require t < s
                        mem[(32 * t) + 128] = idx
                        require t < mem[(32 * s) + 128]
                        mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                        require t < mem[(64 * s) + 160]
                        mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                        require t < mem[(98 * s) + 192]
                        mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                        require t < mem[(131 * s) + 224]
                        require requests[idx].field_768 <= 2
                        mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                        mem[0] = idx
                        mem[32] = 6
                        idx = stor6[idx]
                        t = t + 1
                        continue 
                    mem[(164 * s) + 256] = 160
                    mem[(164 * s) + 416] = s
                    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                    mem[(164 * s) + 288] = (32 * s) + 192
                    mem[(197 * s) + 448] = mem[(32 * s) + 128]
                    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                    _2291 = mem[(64 * s) + 160]
                    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                    mem[(164 * s) + 352] = (32 * _2291) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                    mem[(32 * _2291) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                    _2643 = mem[(98 * s) + 192]
                    mem[(32 * _2291) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                    mem[(164 * s) + 384] = (32 * _2643) + (32 * _2291) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                    mem[(32 * _2643) + (32 * _2291) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                    _2899 = mem[(131 * s) + 224]
                    mem[(32 * _2643) + (32 * _2291) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                    return memory
                      from (164 * s) + 256
                       len (32 * _2899) + (32 * _2643) + (32 * _2291) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
                mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2294 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2294) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2294) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2646 = mem[(98 * s) + 192]
                mem[(32 * _2294) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2646) + (32 * _2294) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2646) + (32 * _2294) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2902 = mem[(131 * s) + 224]
                mem[(32 * _2646) + (32 * _2294) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2902) + (32 * _2646) + (32 * _2294) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
            require s <= test266151307()
            mem[(131 * s) + 224] = s
            if not s:
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2297 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2297) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2297) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2649 = mem[(98 * s) + 192]
                mem[(32 * _2297) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2649) + (32 * _2297) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2649) + (32 * _2297) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2905 = mem[(131 * s) + 224]
                mem[(32 * _2649) + (32 * _2297) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2905) + (32 * _2649) + (32 * _2297) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2300 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2300) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2300) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2652 = mem[(98 * s) + 192]
            mem[(32 * _2300) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2652) + (32 * _2300) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2652) + (32 * _2300) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2908 = mem[(131 * s) + 224]
            mem[(32 * _2652) + (32 * _2300) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2908) + (32 * _2652) + (32 * _2300) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(64 * s) + 192 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[(98 * s) + 192] = s
        if not s:
            require s <= test266151307()
            mem[(131 * s) + 224] = s
            if not s:
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2303 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2303) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2303) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2655 = mem[(98 * s) + 192]
                mem[(32 * _2303) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2655) + (32 * _2303) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2655) + (32 * _2303) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2911 = mem[(131 * s) + 224]
                mem[(32 * _2655) + (32 * _2303) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return memory
                  from (164 * s) + 256
                   len (32 * _2911) + (32 * _2655) + (32 * _2303) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
            mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2306 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2306) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2306) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2658 = mem[(98 * s) + 192]
            mem[(32 * _2306) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2658) + (32 * _2306) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2658) + (32 * _2306) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2914 = mem[(131 * s) + 224]
            mem[(32 * _2658) + (32 * _2306) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2914) + (32 * _2658) + (32 * _2306) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[(131 * s) + 224] = s
        if not s:
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2309 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2309) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2309) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2661 = mem[(98 * s) + 192]
            mem[(32 * _2309) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2661) + (32 * _2309) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2661) + (32 * _2309) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2917 = mem[(131 * s) + 224]
            mem[(32 * _2661) + (32 * _2309) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2917) + (32 * _2661) + (32 * _2309) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
        idx = stor4
        t = 0
        while idx:
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
            require t < mem[(64 * s) + 160]
            mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
            require t < mem[(98 * s) + 192]
            mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
            require t < mem[(131 * s) + 224]
            require requests[idx].field_768 <= 2
            mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
            mem[0] = idx
            mem[32] = 6
            idx = stor6[idx]
            t = t + 1
            continue 
        mem[(164 * s) + 256] = 160
        mem[(164 * s) + 416] = s
        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
        mem[(164 * s) + 288] = (32 * s) + 192
        mem[(197 * s) + 448] = mem[(32 * s) + 128]
        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
        _2312 = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        mem[(164 * s) + 352] = (32 * _2312) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
        mem[(32 * _2312) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
        _2664 = mem[(98 * s) + 192]
        mem[(32 * _2312) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
        mem[(164 * s) + 384] = (32 * _2664) + (32 * _2312) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
        mem[(32 * _2664) + (32 * _2312) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
        _2920 = mem[(131 * s) + 224]
        mem[(32 * _2664) + (32 * _2312) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
        return memory
          from (164 * s) + 256
           len (32 * _2920) + (32 * _2664) + (32 * _2312) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
    mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[(64 * s) + 160] = s
    if not s:
        require s <= test266151307()
        mem[(98 * s) + 192] = s
        if not s:
            require s <= test266151307()
            mem[(131 * s) + 224] = s
            if not s:
                idx = stor4
                t = 0
                while idx:
                    require t < s
                    mem[(32 * t) + 128] = idx
                    require t < mem[(32 * s) + 128]
                    mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                    require t < mem[(64 * s) + 160]
                    mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                    require t < mem[(98 * s) + 192]
                    mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                    require t < mem[(131 * s) + 224]
                    require requests[idx].field_768 <= 2
                    mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                    mem[0] = idx
                    mem[32] = 6
                    idx = stor6[idx]
                    t = t + 1
                    continue 
                mem[(164 * s) + 256] = 160
                mem[(164 * s) + 416] = s
                mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
                mem[(164 * s) + 288] = (32 * s) + 192
                mem[(197 * s) + 448] = mem[(32 * s) + 128]
                mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
                mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
                _2315 = mem[(64 * s) + 160]
                mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
                mem[(164 * s) + 352] = (32 * _2315) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
                mem[(32 * _2315) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
                _2667 = mem[(98 * s) + 192]
                mem[(32 * _2315) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
                mem[(164 * s) + 384] = (32 * _2667) + (32 * _2315) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
                mem[(32 * _2667) + (32 * _2315) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
                _2923 = mem[(131 * s) + 224]
                mem[(32 * _2667) + (32 * _2315) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
                return 160, 
                       (32 * s) + 192,
                       mem[(164 * s) + 320 len 96],
                       s,
                       mem[(164 * s) + 448 len (33 * s) + (32 * _2923) + (32 * _2667) + (32 * _2315) + (32 * mem[(32 * s) + 128]) + 128]
            mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2318 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2318) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2318) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2670 = mem[(98 * s) + 192]
            mem[(32 * _2318) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2318) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * mem[(98 * s) + 192]) + (32 * _2318) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2926 = mem[(131 * s) + 224]
            mem[(32 * _2670) + (32 * _2318) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return 160, 
                   (32 * s) + 192,
                   mem[(164 * s) + 320 len 96],
                   s,
                   mem[(164 * s) + 448 len (33 * s) + (32 * _2926) + (32 * _2670) + (32 * _2318) + (32 * mem[(32 * s) + 128]) + 128]
        mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[(131 * s) + 224] = s
        if not s:
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2321 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2321) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2321) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2673 = mem[(98 * s) + 192]
            mem[(32 * _2321) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2321) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * mem[(98 * s) + 192]) + (32 * _2321) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2929 = mem[(131 * s) + 224]
            mem[(32 * _2673) + (32 * _2321) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2929) + (32 * _2673) + (32 * _2321) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
        idx = stor4
        t = 0
        while idx:
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
            require t < mem[(64 * s) + 160]
            mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
            require t < mem[(98 * s) + 192]
            mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
            require t < mem[(131 * s) + 224]
            require requests[idx].field_768 <= 2
            mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
            mem[0] = idx
            mem[32] = 6
            idx = stor6[idx]
            t = t + 1
            continue 
        mem[(164 * s) + 256] = 160
        mem[(164 * s) + 416] = s
        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
        mem[(164 * s) + 288] = (32 * s) + 192
        mem[(197 * s) + 448] = mem[(32 * s) + 128]
        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
        _2324 = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        mem[(164 * s) + 352] = (32 * _2324) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
        mem[(32 * _2324) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
        _2676 = mem[(98 * s) + 192]
        mem[(32 * _2324) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
        mem[(164 * s) + 384] = (32 * _2676) + (32 * _2324) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
        mem[(32 * _2676) + (32 * _2324) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
        _2932 = mem[(131 * s) + 224]
        mem[(32 * _2676) + (32 * _2324) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
        return memory
          from (164 * s) + 256
           len (32 * _2932) + (32 * _2676) + (32 * _2324) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
    mem[(64 * s) + 192 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[(98 * s) + 192] = s
    if not s:
        require s <= test266151307()
        mem[(131 * s) + 224] = s
        if not s:
            idx = stor4
            t = 0
            while idx:
                require t < s
                mem[(32 * t) + 128] = idx
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
                require t < mem[(64 * s) + 160]
                mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
                require t < mem[(98 * s) + 192]
                mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
                require t < mem[(131 * s) + 224]
                require requests[idx].field_768 <= 2
                mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
                mem[0] = idx
                mem[32] = 6
                idx = stor6[idx]
                t = t + 1
                continue 
            mem[(164 * s) + 256] = 160
            mem[(164 * s) + 416] = s
            mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
            mem[(164 * s) + 288] = (32 * s) + 192
            mem[(197 * s) + 448] = mem[(32 * s) + 128]
            mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
            _2327 = mem[(64 * s) + 160]
            mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            mem[(164 * s) + 352] = (32 * _2327) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
            mem[(32 * _2327) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
            _2679 = mem[(98 * s) + 192]
            mem[(32 * _2327) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
            mem[(164 * s) + 384] = (32 * _2679) + (32 * _2327) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
            mem[(32 * _2679) + (32 * _2327) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
            _2935 = mem[(131 * s) + 224]
            mem[(32 * _2679) + (32 * _2327) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
            return memory
              from (164 * s) + 256
               len (32 * _2935) + (32 * _2679) + (32 * _2327) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
        mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
        idx = stor4
        t = 0
        while idx:
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
            require t < mem[(64 * s) + 160]
            mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
            require t < mem[(98 * s) + 192]
            mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
            require t < mem[(131 * s) + 224]
            require requests[idx].field_768 <= 2
            mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
            mem[0] = idx
            mem[32] = 6
            idx = stor6[idx]
            t = t + 1
            continue 
        mem[(164 * s) + 256] = 160
        mem[(164 * s) + 416] = s
        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
        mem[(164 * s) + 288] = (32 * s) + 192
        mem[(197 * s) + 448] = mem[(32 * s) + 128]
        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
        _2330 = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        mem[(164 * s) + 352] = (32 * _2330) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
        mem[(32 * _2330) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
        mem[(32 * _2330) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
        mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2330) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
        mem[(32 * mem[(98 * s) + 192]) + (32 * _2330) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
        _2938 = mem[(131 * s) + 224]
        mem[(32 * mem[(98 * s) + 192]) + (32 * _2330) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
        return memory
          from (164 * s) + 256
           len (32 * _2938) + (32 * mem[(98 * s) + 192]) + (32 * _2330) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
    mem[(98 * s) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[(131 * s) + 224] = s
    if not s:
        idx = stor4
        t = 0
        while idx:
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
            require t < mem[(64 * s) + 160]
            mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
            require t < mem[(98 * s) + 192]
            mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
            require t < mem[(131 * s) + 224]
            require requests[idx].field_768 <= 2
            mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
            mem[0] = idx
            mem[32] = 6
            idx = stor6[idx]
            t = t + 1
            continue 
        mem[(164 * s) + 256] = 160
        mem[(164 * s) + 416] = s
        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
        mem[(164 * s) + 288] = (32 * s) + 192
        mem[(197 * s) + 448] = mem[(32 * s) + 128]
        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
        _2333 = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        mem[(164 * s) + 352] = (32 * _2333) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
        mem[(32 * _2333) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
        mem[(32 * _2333) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
        mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2333) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
        mem[(32 * mem[(98 * s) + 192]) + (32 * _2333) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
        _2941 = mem[(131 * s) + 224]
        mem[(32 * mem[(98 * s) + 192]) + (32 * _2333) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
        return memory
          from (164 * s) + 256
           len (32 * _2941) + (32 * mem[(98 * s) + 192]) + (32 * _2333) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
    mem[(131 * s) + 256 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = stor4
    t = 0
    while idx:
        require t < s
        mem[(32 * t) + 128] = idx
        require t < mem[(32 * s) + 128]
        mem[(32 * t) + (32 * s) + 160] = requests[idx].field_0
        require t < mem[(64 * s) + 160]
        mem[(32 * t) + (64 * s) + 192] = requests[idx].field_512
        require t < mem[(98 * s) + 192]
        mem[(32 * t) + (98 * s) + 224] = requests[idx].field_256
        require t < mem[(131 * s) + 224]
        require requests[idx].field_768 <= 2
        mem[(32 * t) + (131 * s) + 256] = requests[idx].field_768
        mem[0] = idx
        mem[32] = 6
        idx = stor6[idx]
        t = t + 1
        continue 
    mem[(164 * s) + 256] = 160
    mem[(164 * s) + 416] = s
    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
    mem[(164 * s) + 288] = (32 * s) + 192
    mem[(197 * s) + 448] = mem[(32 * s) + 128]
    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
    _2336 = mem[(64 * s) + 160]
    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
    mem[(164 * s) + 352] = (32 * _2336) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
    mem[(32 * _2336) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
    mem[(32 * _2336) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
    mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * _2336) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
    mem[(32 * mem[(98 * s) + 192]) + (32 * _2336) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
    _2944 = mem[(131 * s) + 224]
    mem[(32 * mem[(98 * s) + 192]) + (32 * _2336) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
    return memory
      from (164 * s) + 256
       len (32 * _2944) + (32 * mem[(98 * s) + 192]) + (32 * _2336) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
}



}
