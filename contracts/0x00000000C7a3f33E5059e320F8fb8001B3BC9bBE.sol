contract main {




// =====================  Runtime code  =====================


uint256 totalMinted;
uint256 totalBurned;

function totalMinted() {
    return totalMinted
}

function totalBurned() {
    return totalBurned
}

function computeAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561))
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function mint() {
    create2 contract with 0 wei
                    salt: totalMinted
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 1)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 2)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 3)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 4)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 5)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 6)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 7)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 8)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 9)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 10)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 11)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 12)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 13)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 14)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 15)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 16)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 17)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 18)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 19)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 20)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 21)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 22)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 23)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 24)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 25)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 26)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 27)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 28)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 29)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 30)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 31)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 32)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 33)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 34)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 35)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 36)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 37)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 38)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 39)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 40)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 41)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 42)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 43)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 44)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 45)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 46)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 47)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 48)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 49)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 50)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 51)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 52)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 53)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 54)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 55)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 56)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 57)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 58)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 59)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 60)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 61)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 62)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    create2 contract with 0 wei
                    salt: (totalMinted + 63)
                    code: 0x766fc7a3f33e5059e320f8fb8001b3bc9bbe3318585733ff60005260176009f3
    totalMinted += 64
}

function _fallback() payable {
    mem[64] = 96
    if msg.sender == 0xc511421c56e6a9a7fb595810af62a2159c1c7ce1:
        if calldata.size >= 23:
            mem[0 len calldata.size] = call.data[0 len calldata.size]
            s = 1
            t = 1
            u = 0
            while t < calldata.size and s:
                delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                     gas gas_remaining wei
                    args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                s = delegate.return_code
                t = t + (uint16(mem[t]) >> 240) + 22
                u = (uint8(mem[0]) >> 248) + u
                continue 
            if u:
                s = 0
                while s < u:
                    _223 = mem[64]
                    mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 33] = this.address << 96
                    mem[mem[64] + 53] = totalBurned + s
                    mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                    _224 = mem[64]
                    mem[mem[64]] = 85
                    mem[64] = mem[64] + 117
                    call address(sha3(mem[_224 + 32 len mem[_224]])) with:
                         gas gas_remaining wei
                    if return_data.size:
                        mem[64] = _223 + ceil32(return_data.size) + 118
                        mem[_223 + 117] = return_data.size
                        mem[_223 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
                totalBurned += u
    else:
        if msg.sender == 0x96b03ab0619d6046c06aadcbb5c798caa529289a:
            if calldata.size >= 23:
                mem[0 len calldata.size] = call.data[0 len calldata.size]
                s = 1
                t = 1
                u = 0
                while t < calldata.size and s:
                    delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                         gas gas_remaining wei
                        args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                    s = delegate.return_code
                    t = t + (uint16(mem[t]) >> 240) + 22
                    u = (uint8(mem[0]) >> 248) + u
                    continue 
                if u:
                    s = 0
                    while s < u:
                        _227 = mem[64]
                        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 33] = this.address << 96
                        mem[mem[64] + 53] = totalBurned + s
                        mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                        _228 = mem[64]
                        mem[mem[64]] = 85
                        mem[64] = mem[64] + 117
                        call address(sha3(mem[_228 + 32 len mem[_228]])) with:
                             gas gas_remaining wei
                        if return_data.size:
                            mem[64] = _227 + ceil32(return_data.size) + 118
                            mem[_227 + 117] = return_data.size
                            mem[_227 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    totalBurned += u
        else:
            if msg.sender == 0x689682d8dc610bbddba1b0981b7a0869491a2e60:
                if calldata.size >= 23:
                    mem[0 len calldata.size] = call.data[0 len calldata.size]
                    s = 1
                    t = 1
                    u = 0
                    while t < calldata.size and s:
                        delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                             gas gas_remaining wei
                            args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                        s = delegate.return_code
                        t = t + (uint16(mem[t]) >> 240) + 22
                        u = (uint8(mem[0]) >> 248) + u
                        continue 
                    if u:
                        s = 0
                        while s < u:
                            _231 = mem[64]
                            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 33] = this.address << 96
                            mem[mem[64] + 53] = totalBurned + s
                            mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                            _232 = mem[64]
                            mem[mem[64]] = 85
                            mem[64] = mem[64] + 117
                            call address(sha3(mem[_232 + 32 len mem[_232]])) with:
                                 gas gas_remaining wei
                            if return_data.size:
                                mem[64] = _231 + ceil32(return_data.size) + 118
                                mem[_231 + 117] = return_data.size
                                mem[_231 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            s = s + 1
                            continue 
                        totalBurned += u
            else:
                if msg.sender == 0x99b21d21d58e5599e74eb26b08812ba07e22505b:
                    if calldata.size >= 23:
                        mem[0 len calldata.size] = call.data[0 len calldata.size]
                        s = 1
                        t = 1
                        u = 0
                        while t < calldata.size and s:
                            delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                 gas gas_remaining wei
                                args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                            s = delegate.return_code
                            t = t + (uint16(mem[t]) >> 240) + 22
                            u = (uint8(mem[0]) >> 248) + u
                            continue 
                        if u:
                            s = 0
                            while s < u:
                                _235 = mem[64]
                                mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 33] = this.address << 96
                                mem[mem[64] + 53] = totalBurned + s
                                mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                _236 = mem[64]
                                mem[mem[64]] = 85
                                mem[64] = mem[64] + 117
                                call address(sha3(mem[_236 + 32 len mem[_236]])) with:
                                     gas gas_remaining wei
                                if return_data.size:
                                    mem[64] = _235 + ceil32(return_data.size) + 118
                                    mem[_235 + 117] = return_data.size
                                    mem[_235 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                s = s + 1
                                continue 
                            totalBurned += u
                else:
                    if msg.sender == 0xbd79eb47df220f1d447124daa6e5581a287c02fd:
                        if calldata.size >= 23:
                            mem[0 len calldata.size] = call.data[0 len calldata.size]
                            s = 1
                            t = 1
                            u = 0
                            while t < calldata.size and s:
                                delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                     gas gas_remaining wei
                                    args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                s = delegate.return_code
                                t = t + (uint16(mem[t]) >> 240) + 22
                                u = (uint8(mem[0]) >> 248) + u
                                continue 
                            if u:
                                s = 0
                                while s < u:
                                    _239 = mem[64]
                                    mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 33] = this.address << 96
                                    mem[mem[64] + 53] = totalBurned + s
                                    mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                    _240 = mem[64]
                                    mem[mem[64]] = 85
                                    mem[64] = mem[64] + 117
                                    call address(sha3(mem[_240 + 32 len mem[_240]])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        mem[64] = _239 + ceil32(return_data.size) + 118
                                        mem[_239 + 117] = return_data.size
                                        mem[_239 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                totalBurned += u
                    else:
                        if msg.sender == 0x19518a870259bf5964d17fecabb18ec3e4696694:
                            if calldata.size >= 23:
                                mem[0 len calldata.size] = call.data[0 len calldata.size]
                                s = 1
                                t = 1
                                u = 0
                                while t < calldata.size and s:
                                    delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                         gas gas_remaining wei
                                        args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                    s = delegate.return_code
                                    t = t + (uint16(mem[t]) >> 240) + 22
                                    u = (uint8(mem[0]) >> 248) + u
                                    continue 
                                if u:
                                    s = 0
                                    while s < u:
                                        _243 = mem[64]
                                        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 33] = this.address << 96
                                        mem[mem[64] + 53] = totalBurned + s
                                        mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                        _244 = mem[64]
                                        mem[mem[64]] = 85
                                        mem[64] = mem[64] + 117
                                        call address(sha3(mem[_244 + 32 len mem[_244]])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            mem[64] = _243 + ceil32(return_data.size) + 118
                                            mem[_243 + 117] = return_data.size
                                            mem[_243 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        s = s + 1
                                        continue 
                                    totalBurned += u
                        else:
                            if msg.sender == 0xade646f39111525e46407e85a69d880de3ab193f:
                                if calldata.size >= 23:
                                    mem[0 len calldata.size] = call.data[0 len calldata.size]
                                    s = 1
                                    t = 1
                                    u = 0
                                    while t < calldata.size and s:
                                        delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                             gas gas_remaining wei
                                            args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                        s = delegate.return_code
                                        t = t + (uint16(mem[t]) >> 240) + 22
                                        u = (uint8(mem[0]) >> 248) + u
                                        continue 
                                    if u:
                                        s = 0
                                        while s < u:
                                            _247 = mem[64]
                                            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 33] = this.address << 96
                                            mem[mem[64] + 53] = totalBurned + s
                                            mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                            _248 = mem[64]
                                            mem[mem[64]] = 85
                                            mem[64] = mem[64] + 117
                                            call address(sha3(mem[_248 + 32 len mem[_248]])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                mem[64] = _247 + ceil32(return_data.size) + 118
                                                mem[_247 + 117] = return_data.size
                                                mem[_247 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            s = s + 1
                                            continue 
                                        totalBurned += u
                            else:
                                if msg.sender == 0xba602c49f1d3000fa34f01f5adaf567e807f8e90:
                                    if calldata.size >= 23:
                                        mem[0 len calldata.size] = call.data[0 len calldata.size]
                                        s = 1
                                        t = 1
                                        u = 0
                                        while t < calldata.size and s:
                                            delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                            s = delegate.return_code
                                            t = t + (uint16(mem[t]) >> 240) + 22
                                            u = (uint8(mem[0]) >> 248) + u
                                            continue 
                                        if u:
                                            s = 0
                                            while s < u:
                                                _251 = mem[64]
                                                mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 33] = this.address << 96
                                                mem[mem[64] + 53] = totalBurned + s
                                                mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                _252 = mem[64]
                                                mem[mem[64]] = 85
                                                mem[64] = mem[64] + 117
                                                call address(sha3(mem[_252 + 32 len mem[_252]])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    mem[64] = _251 + ceil32(return_data.size) + 118
                                                    mem[_251 + 117] = return_data.size
                                                    mem[_251 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                s = s + 1
                                                continue 
                                            totalBurned += u
                                else:
                                    if msg.sender == 0x2f697a8d7b1063bbbe8d049456edb4739f2bca1a:
                                        if calldata.size >= 23:
                                            mem[0 len calldata.size] = call.data[0 len calldata.size]
                                            s = 1
                                            t = 1
                                            u = 0
                                            while t < calldata.size and s:
                                                delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                s = delegate.return_code
                                                t = t + (uint16(mem[t]) >> 240) + 22
                                                u = (uint8(mem[0]) >> 248) + u
                                                continue 
                                            if u:
                                                s = 0
                                                while s < u:
                                                    _255 = mem[64]
                                                    mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 33] = this.address << 96
                                                    mem[mem[64] + 53] = totalBurned + s
                                                    mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                    _256 = mem[64]
                                                    mem[mem[64]] = 85
                                                    mem[64] = mem[64] + 117
                                                    call address(sha3(mem[_256 + 32 len mem[_256]])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        mem[64] = _255 + ceil32(return_data.size) + 118
                                                        mem[_255 + 117] = return_data.size
                                                        mem[_255 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    s = s + 1
                                                    continue 
                                                totalBurned += u
                                    else:
                                        if msg.sender == 0x112b452f736a84c9ff2efade3c62b3b800d9be7c:
                                            if calldata.size >= 23:
                                                mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                s = 1
                                                t = 1
                                                u = 0
                                                while t < calldata.size and s:
                                                    delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                    s = delegate.return_code
                                                    t = t + (uint16(mem[t]) >> 240) + 22
                                                    u = (uint8(mem[0]) >> 248) + u
                                                    continue 
                                                if u:
                                                    s = 0
                                                    while s < u:
                                                        _259 = mem[64]
                                                        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 33] = this.address << 96
                                                        mem[mem[64] + 53] = totalBurned + s
                                                        mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                        _260 = mem[64]
                                                        mem[mem[64]] = 85
                                                        mem[64] = mem[64] + 117
                                                        call address(sha3(mem[_260 + 32 len mem[_260]])) with:
                                                             gas gas_remaining wei
                                                        if return_data.size:
                                                            mem[64] = _259 + ceil32(return_data.size) + 118
                                                            mem[_259 + 117] = return_data.size
                                                            mem[_259 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        s = s + 1
                                                        continue 
                                                    totalBurned += u
                                        else:
                                            if msg.sender == 0x9a0e58112a623bbfcfcbb664ef0e53a95d033c73:
                                                if calldata.size >= 23:
                                                    mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                    s = 1
                                                    t = 1
                                                    u = 0
                                                    while t < calldata.size and s:
                                                        delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                        s = delegate.return_code
                                                        t = t + (uint16(mem[t]) >> 240) + 22
                                                        u = (uint8(mem[0]) >> 248) + u
                                                        continue 
                                                    if u:
                                                        s = 0
                                                        while s < u:
                                                            _263 = mem[64]
                                                            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 33] = this.address << 96
                                                            mem[mem[64] + 53] = totalBurned + s
                                                            mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                            _264 = mem[64]
                                                            mem[mem[64]] = 85
                                                            mem[64] = mem[64] + 117
                                                            call address(sha3(mem[_264 + 32 len mem[_264]])) with:
                                                                 gas gas_remaining wei
                                                            if return_data.size:
                                                                mem[64] = _263 + ceil32(return_data.size) + 118
                                                                mem[_263 + 117] = return_data.size
                                                                mem[_263 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            s = s + 1
                                                            continue 
                                                        totalBurned += u
                                            else:
                                                if msg.sender == 0x9c69a68c4afc9d67d099883ff8848593f408bed7:
                                                    if calldata.size >= 23:
                                                        mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                        s = 1
                                                        t = 1
                                                        u = 0
                                                        while t < calldata.size and s:
                                                            delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                            s = delegate.return_code
                                                            t = t + (uint16(mem[t]) >> 240) + 22
                                                            u = (uint8(mem[0]) >> 248) + u
                                                            continue 
                                                        if u:
                                                            s = 0
                                                            while s < u:
                                                                _267 = mem[64]
                                                                mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 33] = this.address << 96
                                                                mem[mem[64] + 53] = totalBurned + s
                                                                mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                _268 = mem[64]
                                                                mem[mem[64]] = 85
                                                                mem[64] = mem[64] + 117
                                                                call address(sha3(mem[_268 + 32 len mem[_268]])) with:
                                                                     gas gas_remaining wei
                                                                if return_data.size:
                                                                    mem[64] = _267 + ceil32(return_data.size) + 118
                                                                    mem[_267 + 117] = return_data.size
                                                                    mem[_267 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                s = s + 1
                                                                continue 
                                                            totalBurned += u
                                                else:
                                                    if msg.sender == 0x4ff37f17c13cc37acbfb666d183beb6e94dc40c4:
                                                        if calldata.size >= 23:
                                                            mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                            s = 1
                                                            t = 1
                                                            u = 0
                                                            while t < calldata.size and s:
                                                                delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                     gas gas_remaining wei
                                                                    args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                s = delegate.return_code
                                                                t = t + (uint16(mem[t]) >> 240) + 22
                                                                u = (uint8(mem[0]) >> 248) + u
                                                                continue 
                                                            if u:
                                                                s = 0
                                                                while s < u:
                                                                    _271 = mem[64]
                                                                    mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 33] = this.address << 96
                                                                    mem[mem[64] + 53] = totalBurned + s
                                                                    mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                    _272 = mem[64]
                                                                    mem[mem[64]] = 85
                                                                    mem[64] = mem[64] + 117
                                                                    call address(sha3(mem[_272 + 32 len mem[_272]])) with:
                                                                         gas gas_remaining wei
                                                                    if return_data.size:
                                                                        mem[64] = _271 + ceil32(return_data.size) + 118
                                                                        mem[_271 + 117] = return_data.size
                                                                        mem[_271 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    s = s + 1
                                                                    continue 
                                                                totalBurned += u
                                                    else:
                                                        if msg.sender == 0x87aaec5a4cba7095472ab7322bb93e94ac08fcc:
                                                            if calldata.size >= 23:
                                                                mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                s = 1
                                                                t = 1
                                                                u = 0
                                                                while t < calldata.size and s:
                                                                    delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                         gas gas_remaining wei
                                                                        args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                    s = delegate.return_code
                                                                    t = t + (uint16(mem[t]) >> 240) + 22
                                                                    u = (uint8(mem[0]) >> 248) + u
                                                                    continue 
                                                                if u:
                                                                    s = 0
                                                                    while s < u:
                                                                        _275 = mem[64]
                                                                        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 33] = this.address << 96
                                                                        mem[mem[64] + 53] = totalBurned + s
                                                                        mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                        _276 = mem[64]
                                                                        mem[mem[64]] = 85
                                                                        mem[64] = mem[64] + 117
                                                                        call address(sha3(mem[_276 + 32 len mem[_276]])) with:
                                                                             gas gas_remaining wei
                                                                        if return_data.size:
                                                                            mem[64] = _275 + ceil32(return_data.size) + 118
                                                                            mem[_275 + 117] = return_data.size
                                                                            mem[_275 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        s = s + 1
                                                                        continue 
                                                                    totalBurned += u
                                                        else:
                                                            if msg.sender == 0x8448d08714d119ec878c33d55cb1ed1ef47eb82a:
                                                                if calldata.size >= 23:
                                                                    mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                    s = 1
                                                                    t = 1
                                                                    u = 0
                                                                    while t < calldata.size and s:
                                                                        delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                             gas gas_remaining wei
                                                                            args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                        s = delegate.return_code
                                                                        t = t + (uint16(mem[t]) >> 240) + 22
                                                                        u = (uint8(mem[0]) >> 248) + u
                                                                        continue 
                                                                    if u:
                                                                        s = 0
                                                                        while s < u:
                                                                            _279 = mem[64]
                                                                            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 33] = this.address << 96
                                                                            mem[mem[64] + 53] = totalBurned + s
                                                                            mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                            _280 = mem[64]
                                                                            mem[mem[64]] = 85
                                                                            mem[64] = mem[64] + 117
                                                                            call address(sha3(mem[_280 + 32 len mem[_280]])) with:
                                                                                 gas gas_remaining wei
                                                                            if return_data.size:
                                                                                mem[64] = _279 + ceil32(return_data.size) + 118
                                                                                mem[_279 + 117] = return_data.size
                                                                                mem[_279 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            s = s + 1
                                                                            continue 
                                                                        totalBurned += u
                                                            else:
                                                                if msg.sender == 0x17e20d7b0d27d6445b313f8da7d203f021368902:
                                                                    if calldata.size >= 23:
                                                                        mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                        s = 1
                                                                        t = 1
                                                                        u = 0
                                                                        while t < calldata.size and s:
                                                                            delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                                 gas gas_remaining wei
                                                                                args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                            s = delegate.return_code
                                                                            t = t + (uint16(mem[t]) >> 240) + 22
                                                                            u = (uint8(mem[0]) >> 248) + u
                                                                            continue 
                                                                        if u:
                                                                            s = 0
                                                                            while s < u:
                                                                                _283 = mem[64]
                                                                                mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 33] = this.address << 96
                                                                                mem[mem[64] + 53] = totalBurned + s
                                                                                mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                                _284 = mem[64]
                                                                                mem[mem[64]] = 85
                                                                                mem[64] = mem[64] + 117
                                                                                call address(sha3(mem[_284 + 32 len mem[_284]])) with:
                                                                                     gas gas_remaining wei
                                                                                if return_data.size:
                                                                                    mem[64] = _283 + ceil32(return_data.size) + 118
                                                                                    mem[_283 + 117] = return_data.size
                                                                                    mem[_283 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                s = s + 1
                                                                                continue 
                                                                            totalBurned += u
                                                                else:
                                                                    if msg.sender == 0x4e2c5847bf31e69a6a764037e532e81985da60fc:
                                                                        if calldata.size >= 23:
                                                                            mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                            s = 1
                                                                            t = 1
                                                                            u = 0
                                                                            while t < calldata.size and s:
                                                                                delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                                s = delegate.return_code
                                                                                t = t + (uint16(mem[t]) >> 240) + 22
                                                                                u = (uint8(mem[0]) >> 248) + u
                                                                                continue 
                                                                            if u:
                                                                                s = 0
                                                                                while s < u:
                                                                                    _287 = mem[64]
                                                                                    mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 33] = this.address << 96
                                                                                    mem[mem[64] + 53] = totalBurned + s
                                                                                    mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                                    _288 = mem[64]
                                                                                    mem[mem[64]] = 85
                                                                                    mem[64] = mem[64] + 117
                                                                                    call address(sha3(mem[_288 + 32 len mem[_288]])) with:
                                                                                         gas gas_remaining wei
                                                                                    if return_data.size:
                                                                                        mem[64] = _287 + ceil32(return_data.size) + 118
                                                                                        mem[_287 + 117] = return_data.size
                                                                                        mem[_287 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                    s = s + 1
                                                                                    continue 
                                                                                totalBurned += u
                                                                    else:
                                                                        if msg.sender == 0xfff31eb1ad3621d78d9c39447d6a4561a3c3fb5b:
                                                                            if calldata.size >= 23:
                                                                                mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                                s = 1
                                                                                t = 1
                                                                                u = 0
                                                                                while t < calldata.size and s:
                                                                                    delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                                    s = delegate.return_code
                                                                                    t = t + (uint16(mem[t]) >> 240) + 22
                                                                                    u = (uint8(mem[0]) >> 248) + u
                                                                                    continue 
                                                                                if u:
                                                                                    s = 0
                                                                                    while s < u:
                                                                                        _291 = mem[64]
                                                                                        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                        mem[mem[64] + 33] = this.address << 96
                                                                                        mem[mem[64] + 53] = totalBurned + s
                                                                                        mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                                        _292 = mem[64]
                                                                                        mem[mem[64]] = 85
                                                                                        mem[64] = mem[64] + 117
                                                                                        call address(sha3(mem[_292 + 32 len mem[_292]])) with:
                                                                                             gas gas_remaining wei
                                                                                        if return_data.size:
                                                                                            mem[64] = _291 + ceil32(return_data.size) + 118
                                                                                            mem[_291 + 117] = return_data.size
                                                                                            mem[_291 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    totalBurned += u
                                                                        else:
                                                                            if msg.sender == 0x4f11488c9f4da5bbbdcdbda55f9f1bf863eda68b:
                                                                                if calldata.size >= 23:
                                                                                    mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                                    s = 1
                                                                                    t = 1
                                                                                    u = 0
                                                                                    while t < calldata.size and s:
                                                                                        delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                                             gas gas_remaining wei
                                                                                            args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                                        s = delegate.return_code
                                                                                        t = t + (uint16(mem[t]) >> 240) + 22
                                                                                        u = (uint8(mem[0]) >> 248) + u
                                                                                        continue 
                                                                                    if u:
                                                                                        s = 0
                                                                                        while s < u:
                                                                                            _295 = mem[64]
                                                                                            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 33] = this.address << 96
                                                                                            mem[mem[64] + 53] = totalBurned + s
                                                                                            mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                                            _296 = mem[64]
                                                                                            mem[mem[64]] = 85
                                                                                            mem[64] = mem[64] + 117
                                                                                            call address(sha3(mem[_296 + 32 len mem[_296]])) with:
                                                                                                 gas gas_remaining wei
                                                                                            if return_data.size:
                                                                                                mem[64] = _295 + ceil32(return_data.size) + 118
                                                                                                mem[_295 + 117] = return_data.size
                                                                                                mem[_295 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        totalBurned += u
                                                                            else:
                                                                                if 0xa85aa5d3d50d03f1293e3c09f9c4ad01d491c521 != msg.sender:
                                                                                    revert with 0, '', mem[164]
                                                                                if calldata.size >= 23:
                                                                                    mem[0 len calldata.size] = call.data[0 len calldata.size]
                                                                                    s = 1
                                                                                    t = 1
                                                                                    u = 0
                                                                                    while t < calldata.size and s:
                                                                                        delegate (address(mem[t + 2]) >> 96).mem[t + 22 len 4] with:
                                                                                             gas gas_remaining wei
                                                                                            args mem[t + 26 len (uint16(mem[t]) >> 240) - 4]
                                                                                        s = delegate.return_code
                                                                                        t = t + (uint16(mem[t]) >> 240) + 22
                                                                                        u = (uint8(mem[0]) >> 248) + u
                                                                                        continue 
                                                                                    if u:
                                                                                        s = 0
                                                                                        while s < u:
                                                                                            _299 = mem[64]
                                                                                            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 33] = this.address << 96
                                                                                            mem[mem[64] + 53] = totalBurned + s
                                                                                            mem[mem[64] + 85] = 0x8b8b5162931b59d6d45c1eaf1eeffd7813dba486c3b4eb8a99000816cf971561
                                                                                            _300 = mem[64]
                                                                                            mem[mem[64]] = 85
                                                                                            mem[64] = mem[64] + 117
                                                                                            call address(sha3(mem[_300 + 32 len mem[_300]])) with:
                                                                                                 gas gas_remaining wei
                                                                                            if return_data.size:
                                                                                                mem[64] = _299 + ceil32(return_data.size) + 118
                                                                                                mem[_299 + 117] = return_data.size
                                                                                                mem[_299 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        totalBurned += u
}



}
