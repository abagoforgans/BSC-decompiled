contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 stor99;

function _fallback() payable {
    revert
}

function sub_3f814111(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160 <= test266151307() and (32 * ('cd', 132).length) + 160 >= 128
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192 <= test266151307() and (32 * ('cd', 164).length) + 192 >= 160
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == cd[196]
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(('cd', 228).length) + 224 <= test266151307() and ceil32(('cd', 228).length) + 224 >= 192
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(('cd', 228).length) + 224
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192] = ('cd', 228).length
    require cd[228] + ('cd', 228).length + 36 <= calldata.size
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ('cd', 228).length + 224] = 0
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(('cd', 228).length) + 224 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ('cd', 228).length + 224 len ceil32(('cd', 228).length) - ('cd', 228).length]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 224] = 3
    require not stor[mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ('cd', 228).length + 256 len ceil32(('cd', 228).length)]][Mask(8 * -ceil32(('cd', 228).length) + ('cd', 228).length + 32, 0, 0)]
    if ceil32(('cd', 228).length) <= ('cd', 228).length:
        idx = 0
        s = cd[4]
        while idx < ('cd', 164).length:
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
            _1422 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192]
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1436 = mem[_1429]
            require mem[_1429] == mem[_1429 + 12 len 20]
            require ext_code.size(address(_1422))
            staticcall address(_1422).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1446 = mem[_1444]
            require mem[_1444] == mem[_1444 + 18 len 14]
            _1452 = mem[_1444 + 32]
            require mem[_1444 + 32] == mem[_1444 + 50 len 14]
            require mem[_1444 + 64] == mem[_1444 + 92 len 4]
            require idx < mem[96]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[96]
            require idx + 1 < mem[96]
            if address(_1436) != mem[(32 * idx) + 140 len 20]:
                if not stor2[address(mem[(32 * idx) + 128])]:
                    if not stor2[address(mem[(32 * idx) + 128])]:
                        require (1000 * mem[_1444 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        mem[0] = mem[(32 * idx + 1) + 140 len 20]
                        mem[32] = 2
                        if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                            idx = idx + 1
                            s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446) / (1000 * Mask(112, 0, _1452)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                            continue 
                        mem[0] = mem[(32 * idx + 1) + 140 len 20]
                        mem[32] = 2
                        idx = idx + 1
                        s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446) / (1000 * Mask(112, 0, _1452)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446) / (1000 * Mask(112, 0, _1452)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                        continue 
                    require (10^6 * mem[_1444 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446) / (10^6 * Mask(112, 0, _1452)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446) / (10^6 * Mask(112, 0, _1452)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446) / (10^6 * Mask(112, 0, _1452)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                if not stor2[address(mem[(32 * idx) + 128])]:
                    require (1000 * mem[_1444 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) / (1000 * Mask(112, 0, _1452)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) / (1000 * Mask(112, 0, _1452)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) / (1000 * Mask(112, 0, _1452)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                require (10^6 * mem[_1444 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) / (10^6 * Mask(112, 0, _1452)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) / (10^6 * Mask(112, 0, _1452)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1446)) / (10^6 * Mask(112, 0, _1452)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            if not stor2[address(mem[(32 * idx) + 128])]:
                if not stor2[address(mem[(32 * idx) + 128])]:
                    require (1000 * mem[_1444 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452) / (1000 * Mask(112, 0, _1446)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452) / (1000 * Mask(112, 0, _1446)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452) / (1000 * Mask(112, 0, _1446)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                require (10^6 * mem[_1444 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452) / (10^6 * Mask(112, 0, _1446)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452) / (10^6 * Mask(112, 0, _1446)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452) / (10^6 * Mask(112, 0, _1446)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            if not stor2[address(mem[(32 * idx) + 128])]:
                require (1000 * mem[_1444 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) / (1000 * Mask(112, 0, _1446)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) / (1000 * Mask(112, 0, _1446)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) / (1000 * Mask(112, 0, _1446)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            require (10^6 * mem[_1444 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) / (10^6 * Mask(112, 0, _1446)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) / (10^6 * Mask(112, 0, _1446)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1452)) / (10^6 * Mask(112, 0, _1446)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        require s > cd[4] + cd[196]
        _1428 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[96]
        mem[mem[64] + 100] = address(cd[36])
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = cd[4]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x23b872dd with:
             gas gas_remaining wei
            args address(cd[36]), address(this.address), cd[4]
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        _1704 = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = cd[4]
        t = this.address
        while idx < _1704:
            require idx < mem[96]
            require 0 < mem[_1428]
            mem[_1428 + 32] = mem[(32 * idx) + 140 len 20]
            require idx + 1 < mem[96]
            require 1 < mem[_1428]
            mem[_1428 + 64] = mem[(32 * idx + 1) + 140 len 20]
            require idx < mem[96]
            if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                _1726 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1726))
                call address(_1726).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1758 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1758] == bool(mem[_1758])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] != 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                    _1778 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1798 = mem[_1428]
                    mem[mem[64] + 164] = mem[_1428]
                    u = 0
                    v = _1428 + 32
                    w = mem[64] + 196
                    while u < _1798:
                        mem[w] = mem[v + 12 len 20]
                        _1704 = mem[(32 * ('cd', 68).length) + 128]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[mem[64] + 100] = address(t)
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1778))
                    call address(_1778).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1798) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1904 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1904))
                    call address(_1904).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1928] == mem[_1928]
                    _1704 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1928]
                    t = t
                    continue 
                _1780 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1799 = mem[_1428]
                mem[mem[64] + 164] = mem[_1428]
                u = 0
                v = _1428 + 32
                w = mem[64] + 196
                while u < _1799:
                    mem[w] = mem[v + 12 len 20]
                    _1704 = mem[(32 * ('cd', 68).length) + 128]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[mem[64] + 100] = address(t)
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_1780))
                call address(_1780).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1799) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1906 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1906))
                call address(_1906).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1929 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1929] == mem[_1929]
                _1704 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1929]
                t = t
                continue 
            _1734 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_1734))
            call address(_1734).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1760 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1760] == bool(mem[_1760])
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] == 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                _1792 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1803 = mem[_1428]
                mem[mem[64] + 164] = mem[_1428]
                t = 0
                u = _1428 + 32
                v = mem[64] + 196
                while t < _1803:
                    mem[v] = mem[u + 12 len 20]
                    _1704 = mem[(32 * ('cd', 68).length) + 128]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_1792))
                call address(_1792).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _1803) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1910 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1910))
                call address(_1910).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1931] == mem[_1931]
                _1704 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1931]
                t = cd[36]
                continue 
            _1790 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            _1791 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1802 = mem[_1428]
            mem[mem[64] + 164] = mem[_1428]
            s = 0
            t = _1428 + 32
            u = mem[64] + 196
            while s < _1802:
                mem[u] = mem[t + 12 len 20]
                _1704 = mem[(32 * ('cd', 68).length) + 128]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1791 + 100] = address(cd[36])
            mem[_1791 + 132] = cd[100]
            require ext_code.size(address(_1790))
            call address(_1790).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1791 + (32 * _1802) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[96]
            _1908 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1908))
            call address(_1908).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1930] == mem[_1930]
            _1704 = mem[(32 * ('cd', 68).length) + 128]
            idx = idx + 1
            s = mem[_1930]
            t = cd[36]
            continue 
        _1706 = mem[64]
        _1716 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192]
        mem[mem[64] len ceil32(mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192])] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224 len ceil32(mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192])]
        mem[mem[64] + _1716] = 3
        stor[sha3(mem[mem[64] len _1706 + _1716 + -mem[64] + 32])] = 1
    else:
        idx = 0
        s = cd[4]
        while idx < ('cd', 164).length:
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
            _1425 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192]
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1439 = mem[_1431]
            require mem[_1431] == mem[_1431 + 12 len 20]
            require ext_code.size(address(_1425))
            staticcall address(_1425).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1447 = mem[_1445]
            require mem[_1445] == mem[_1445 + 18 len 14]
            _1453 = mem[_1445 + 32]
            require mem[_1445 + 32] == mem[_1445 + 50 len 14]
            require mem[_1445 + 64] == mem[_1445 + 92 len 4]
            require idx < mem[96]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[96]
            require idx + 1 < mem[96]
            if address(_1439) != mem[(32 * idx) + 140 len 20]:
                if not stor2[address(mem[(32 * idx) + 128])]:
                    if not stor2[address(mem[(32 * idx) + 128])]:
                        require (1000 * mem[_1445 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        mem[0] = mem[(32 * idx + 1) + 140 len 20]
                        mem[32] = 2
                        if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                            idx = idx + 1
                            s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447) / (1000 * Mask(112, 0, _1453)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                            continue 
                        mem[0] = mem[(32 * idx + 1) + 140 len 20]
                        mem[32] = 2
                        idx = idx + 1
                        s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447) / (1000 * Mask(112, 0, _1453)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447) / (1000 * Mask(112, 0, _1453)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                        continue 
                    require (10^6 * mem[_1445 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447) / (10^6 * Mask(112, 0, _1453)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447) / (10^6 * Mask(112, 0, _1453)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447) / (10^6 * Mask(112, 0, _1453)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                if not stor2[address(mem[(32 * idx) + 128])]:
                    require (1000 * mem[_1445 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) / (1000 * Mask(112, 0, _1453)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) / (1000 * Mask(112, 0, _1453)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) / (1000 * Mask(112, 0, _1453)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                require (10^6 * mem[_1445 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) / (10^6 * Mask(112, 0, _1453)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) / (10^6 * Mask(112, 0, _1453)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1447)) / (10^6 * Mask(112, 0, _1453)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            if not stor2[address(mem[(32 * idx) + 128])]:
                if not stor2[address(mem[(32 * idx) + 128])]:
                    require (1000 * mem[_1445 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453) / (1000 * Mask(112, 0, _1447)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453) / (1000 * Mask(112, 0, _1447)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453) / (1000 * Mask(112, 0, _1447)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                require (10^6 * mem[_1445 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453) / (10^6 * Mask(112, 0, _1447)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453) / (10^6 * Mask(112, 0, _1447)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453) / (10^6 * Mask(112, 0, _1447)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            if not stor2[address(mem[(32 * idx) + 128])]:
                require (1000 * mem[_1445 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) / (1000 * Mask(112, 0, _1447)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) / (1000 * Mask(112, 0, _1447)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) / (1000 * Mask(112, 0, _1447)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            require (10^6 * mem[_1445 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) / (10^6 * Mask(112, 0, _1447)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) / (10^6 * Mask(112, 0, _1447)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _1453)) / (10^6 * Mask(112, 0, _1447)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        require s > cd[4] + cd[196]
        _1430 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[96]
        mem[mem[64] + 100] = address(cd[36])
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = cd[4]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x23b872dd with:
             gas gas_remaining wei
            args address(cd[36]), address(this.address), cd[4]
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        _1705 = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = cd[4]
        t = this.address
        while idx < _1705:
            require idx < mem[96]
            require 0 < mem[_1430]
            mem[_1430 + 32] = mem[(32 * idx) + 140 len 20]
            require idx + 1 < mem[96]
            require 1 < mem[_1430]
            mem[_1430 + 64] = mem[(32 * idx + 1) + 140 len 20]
            require idx < mem[96]
            if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                _1729 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1729))
                call address(_1729).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1759 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1759] == bool(mem[_1759])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] != 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                    _1784 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1800 = mem[_1430]
                    mem[mem[64] + 164] = mem[_1430]
                    u = 0
                    v = _1430 + 32
                    w = mem[64] + 196
                    while u < _1800:
                        mem[w] = mem[v + 12 len 20]
                        _1705 = mem[(32 * ('cd', 68).length) + 128]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[mem[64] + 100] = address(t)
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1784))
                    call address(_1784).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1800) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1912 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1912))
                    call address(_1912).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1932] == mem[_1932]
                    _1705 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1932]
                    t = t
                    continue 
                _1786 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1801 = mem[_1430]
                mem[mem[64] + 164] = mem[_1430]
                u = 0
                v = _1430 + 32
                w = mem[64] + 196
                while u < _1801:
                    mem[w] = mem[v + 12 len 20]
                    _1705 = mem[(32 * ('cd', 68).length) + 128]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[mem[64] + 100] = address(t)
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_1786))
                call address(_1786).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1801) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1914 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1914))
                call address(_1914).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1933] == mem[_1933]
                _1705 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1933]
                t = t
                continue 
            _1738 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_1738))
            call address(_1738).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1761 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1761] == bool(mem[_1761])
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] != 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                _1794 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1804 = mem[_1430]
                mem[mem[64] + 164] = mem[_1430]
                t = 0
                u = _1430 + 32
                v = mem[64] + 196
                while t < _1804:
                    mem[v] = mem[u + 12 len 20]
                    _1705 = mem[(32 * ('cd', 68).length) + 128]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_1794))
                call address(_1794).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _1804) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1916 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1916))
                call address(_1916).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1934 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1934] == mem[_1934]
                _1705 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1934]
                t = cd[36]
                continue 
            _1796 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1805 = mem[_1430]
            mem[mem[64] + 164] = mem[_1430]
            t = 0
            u = _1430 + 32
            v = mem[64] + 196
            while t < _1805:
                mem[v] = mem[u + 12 len 20]
                _1705 = mem[(32 * ('cd', 68).length) + 128]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = address(cd[36])
            mem[mem[64] + 132] = cd[100]
            require ext_code.size(address(_1796))
            call address(_1796).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _1805) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[96]
            _1918 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1918))
            call address(_1918).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1935] == mem[_1935]
            _1705 = mem[(32 * ('cd', 68).length) + 128]
            idx = idx + 1
            s = mem[_1935]
            t = cd[36]
            continue 
        _1708 = mem[64]
        _1719 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192]
        mem[mem[64] len ceil32(mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192])] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224 len ceil32(mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192])]
        mem[mem[64] + _1719] = 3
        stor[sha3(mem[mem[64] len _1708 + _1719 + -mem[64] + 32])] = 1
}



}
