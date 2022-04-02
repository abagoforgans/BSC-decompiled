contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    revert
}

function sub_6a603618(?) payable {
    require calldata.size - 4 >= 224
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
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192
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
    idx = 0
    s = cd[4]
    while idx < ('cd', 164).length:
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
        _605 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192]
        require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20])
        staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 204 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _609 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _611 = mem[_609]
        require mem[_609] == mem[_609 + 12 len 20]
        require ext_code.size(address(_605))
        staticcall address(_605).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _620 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _621 = mem[_620]
        require mem[_620] == mem[_620 + 18 len 14]
        _624 = mem[_620 + 32]
        require mem[_620 + 32] == mem[_620 + 50 len 14]
        require mem[_620 + 64] == mem[_620 + 92 len 4]
        require idx < mem[96]
        require idx < mem[(32 * ('cd', 68).length) + 128]
        require idx < mem[96]
        require idx + 1 < mem[96]
        if address(_611) != mem[(32 * idx) + 140 len 20]:
            if not stor2[address(mem[(32 * idx) + 128])]:
                if not stor2[address(mem[(32 * idx) + 128])]:
                    require (1000 * mem[_620 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                        idx = idx + 1
                        s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621) / (1000 * Mask(112, 0, _624)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                        continue 
                    mem[0] = mem[(32 * idx + 1) + 140 len 20]
                    mem[32] = 2
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621) / (1000 * Mask(112, 0, _624)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621) / (1000 * Mask(112, 0, _624)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                    continue 
                require (10^6 * mem[_620 + 50 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621) / (10^6 * Mask(112, 0, _624)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621) / (10^6 * Mask(112, 0, _624)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621) / (10^6 * Mask(112, 0, _624)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            if not stor2[address(mem[(32 * idx) + 128])]:
                require (1000 * mem[_620 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) / (1000 * Mask(112, 0, _624)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) / (1000 * Mask(112, 0, _624)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) / (1000 * Mask(112, 0, _624)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            require (10^6 * mem[_620 + 50 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) / (10^6 * Mask(112, 0, _624)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) / (10^6 * Mask(112, 0, _624)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _621)) / (10^6 * Mask(112, 0, _624)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        if not stor2[address(mem[(32 * idx) + 128])]:
            if not stor2[address(mem[(32 * idx) + 128])]:
                require (1000 * mem[_620 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                    idx = idx + 1
                    s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624) / (1000 * Mask(112, 0, _621)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                    continue 
                mem[0] = mem[(32 * idx + 1) + 140 len 20]
                mem[32] = 2
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624) / (1000 * Mask(112, 0, _621)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624) / (1000 * Mask(112, 0, _621)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
                continue 
            require (10^6 * mem[_620 + 18 len 14]) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624) / (10^6 * Mask(112, 0, _621)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624) / (10^6 * Mask(112, 0, _621)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624) / (10^6 * Mask(112, 0, _621)) + (s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        if not stor2[address(mem[(32 * idx) + 128])]:
            require (1000 * mem[_620 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
                idx = idx + 1
                s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) / (1000 * Mask(112, 0, _621)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
                continue 
            mem[0] = mem[(32 * idx + 1) + 140 len 20]
            mem[32] = 2
            idx = idx + 1
            s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) / (1000 * Mask(112, 0, _621)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) / (1000 * Mask(112, 0, _621)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
            continue 
        require (10^6 * mem[_620 + 18 len 14]) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
        mem[0] = mem[(32 * idx + 1) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx + 1) + 140 len 20]]:
            idx = idx + 1
            s = (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) / (10^6 * Mask(112, 0, _621)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])
            continue 
        mem[0] = mem[(32 * idx + 1) + 140 len 20]
        mem[32] = 2
        idx = idx + 1
        s = (1000 * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) / (10^6 * Mask(112, 0, _621)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) - (stor2[mem[(32 * idx + 1) + 140 len 20]] * (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]] * Mask(112, 0, _624)) / (10^6 * Mask(112, 0, _621)) + (1000 * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]]) - (stor2[address(mem[(32 * idx) + 128])] * s * stor1[mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]])) / 1000
        continue 
    if not s:
        _608 = mem[64]
        mem[64] = mem[64] + 64
        mem[_608] = 1
        mem[_608 + 32] = '0'
        if s <= cd[4] + cd[196]:
            revert with 0, '0', 0
        _612 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[96]
        mem[mem[64] + 100] = address(cd[36])
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = cd[4]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(this.address), cd[4]
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        _757 = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = cd[4]
        t = this.address
        while idx < _757:
            require idx < mem[96]
            require 0 < mem[_612]
            mem[_612 + 32] = mem[(32 * idx) + 140 len 20]
            require idx + 1 < mem[96]
            require 1 < mem[_612]
            mem[_612 + 64] = mem[(32 * idx + 1) + 140 len 20]
            require idx < mem[96]
            if idx == mem[(32 * ('cd', 68).length) + 128] - 1:
                _777 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _782 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_782)
                require ext_code.size(address(_777))
                staticcall address(_777).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_782)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_802] == mem[_802]
                if mem[_802] >= s:
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _821 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _849 = mem[_612]
                    mem[mem[64] + 164] = mem[_612]
                    t = 0
                    u = _612 + 32
                    v = mem[64] + 196
                    while t < _849:
                        mem[v] = mem[u + 12 len 20]
                        _757 = mem[(32 * ('cd', 68).length) + 128]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_821))
                    call address(_821).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _849) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1083 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1083))
                    call address(_1083).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1099 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1099] == mem[_1099]
                    _757 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1099]
                    t = cd[36]
                    continue 
                require idx < mem[96]
                _823 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_823))
                call address(_823).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _868 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_868] == bool(mem[_868])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _880 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _911 = mem[_612]
                mem[mem[64] + 164] = mem[_612]
                t = 0
                u = _612 + 32
                v = mem[64] + 196
                while t < _911:
                    mem[v] = mem[u + 12 len 20]
                    _757 = mem[(32 * ('cd', 68).length) + 128]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_880))
                call address(_880).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _911) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1085 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1085))
                call address(_1085).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1100] == mem[_1100]
                _757 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1100]
                t = cd[36]
                continue 
            _770 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _775 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_775)
            require ext_code.size(address(_770))
            staticcall address(_770).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_775)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_800] == mem[_800]
            if mem[_800] >= s:
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _813 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _814 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _844 = mem[_612]
                mem[mem[64] + 164] = mem[_612]
                s = 0
                u = _612 + 32
                v = mem[64] + 196
                while s < _844:
                    mem[v] = mem[u + 12 len 20]
                    _757 = mem[(32 * ('cd', 68).length) + 128]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_814 + 100] = address(t)
                mem[_814 + 132] = cd[100]
                require ext_code.size(address(_813))
                call address(_813).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _814 + (32 * _844) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1079 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1079))
                call address(_1079).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1097 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1097] == mem[_1097]
                _757 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1097]
                t = t
                continue 
            require idx < mem[96]
            _815 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_815))
            call address(_815).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _867 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_867] == bool(mem[_867])
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _875 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            _876 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _901 = mem[_612]
            mem[mem[64] + 164] = mem[_612]
            s = 0
            u = _612 + 32
            v = mem[64] + 196
            while s < _901:
                mem[v] = mem[u + 12 len 20]
                _757 = mem[(32 * ('cd', 68).length) + 128]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_876 + 100] = address(t)
            mem[_876 + 132] = cd[100]
            require ext_code.size(address(_875))
            call address(_875).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _876 + (32 * _901) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[96]
            _1081 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1081))
            call address(_1081).balanceOf(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1098 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1098] == mem[_1098]
            _757 = mem[(32 * ('cd', 68).length) + 128]
            idx = idx + 1
            s = mem[_1098]
            t = t
            continue 
    else:
        t = 0
        idx = s
        while idx:
            t = t + 1
            idx = idx / 10
            continue 
        require t <= test266151307()
        _760 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t - 1
            idx = s
            while idx:
                require u < mem[_760]
                mem[u + _760 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if s <= cd[4] + cd[196]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1062 = mem[_760]
                mem[mem[64] + 36] = mem[_760]
                mem[mem[64] + 68 len ceil32(_1062)] = mem[_760 + 32 len ceil32(_1062)]
                if ceil32(_1062) > _1062:
                    mem[mem[64] + _1062 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1062) + 32]
            _1059 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[96]
            mem[mem[64] + 100] = address(cd[36])
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = cd[4]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(cd[36]), address(this.address), cd[4]
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            _1285 = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = cd[4]
            t = this.address
            while idx < _1285:
                require idx < mem[96]
                require 0 < mem[_1059]
                mem[_1059 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_1059]
                mem[_1059 + 64] = mem[(32 * idx + 1) + 140 len 20]
                require idx < mem[96]
                if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                    _1305 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1313 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1313)
                    require ext_code.size(address(_1305))
                    staticcall address(_1305).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_1313)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1331] == mem[_1331]
                    if mem[_1331] >= s:
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _1343 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1371 = mem[_1059]
                        mem[mem[64] + 164] = mem[_1059]
                        u = 0
                        v = _1059 + 32
                        w = mem[64] + 196
                        while u < _1371:
                            mem[w] = mem[v + 12 len 20]
                            _1285 = mem[(32 * ('cd', 68).length) + 128]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[mem[64] + 100] = address(t)
                        mem[mem[64] + 132] = cd[100]
                        require ext_code.size(address(_1343))
                        call address(_1343).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1371) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx + 1 < mem[96]
                        _1491 = mem[(32 * idx + 1) + 128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1491))
                        call address(_1491).balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1515] == mem[_1515]
                        _1285 = mem[(32 * ('cd', 68).length) + 128]
                        idx = idx + 1
                        s = mem[_1515]
                        t = t
                        continue 
                    require idx < mem[96]
                    _1345 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_1345))
                    call address(_1345).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1379] == bool(mem[_1379])
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1393 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1419 = mem[_1059]
                    mem[mem[64] + 164] = mem[_1059]
                    u = 0
                    v = _1059 + 32
                    w = mem[64] + 196
                    while u < _1419:
                        mem[w] = mem[v + 12 len 20]
                        _1285 = mem[(32 * ('cd', 68).length) + 128]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[mem[64] + 100] = address(t)
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1393))
                    call address(_1393).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _1419) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1493 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1493))
                    call address(_1493).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1516] == mem[_1516]
                    _1285 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1516]
                    t = t
                    continue 
                _1315 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1323 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1323)
                require ext_code.size(address(_1315))
                staticcall address(_1315).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_1323)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1333] == mem[_1333]
                if mem[_1333] >= s:
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1357 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1373 = mem[_1059]
                    mem[mem[64] + 164] = mem[_1059]
                    t = 0
                    u = _1059 + 32
                    v = mem[64] + 196
                    while t < _1373:
                        mem[v] = mem[u + 12 len 20]
                        _1285 = mem[(32 * ('cd', 68).length) + 128]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1357))
                    call address(_1357).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _1373) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1495 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1495))
                    call address(_1495).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1517] == mem[_1517]
                    _1285 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1517]
                    t = cd[36]
                    continue 
                require idx < mem[96]
                _1359 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1359))
                call address(_1359).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1381] == bool(mem[_1381])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1399 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _1400 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1422 = mem[_1059]
                mem[mem[64] + 164] = mem[_1059]
                s = 0
                t = _1059 + 32
                u = mem[64] + 196
                while s < _1422:
                    mem[u] = mem[t + 12 len 20]
                    _1285 = mem[(32 * ('cd', 68).length) + 128]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1400 + 100] = address(cd[36])
                mem[_1400 + 132] = cd[100]
                require ext_code.size(address(_1399))
                call address(_1399).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1400 + (32 * _1422) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1497 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1497))
                call address(_1497).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1518] == mem[_1518]
                _1285 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1518]
                t = cd[36]
                continue 
        else:
            mem[_760 + 32 len t] = call.data[calldata.size len t]
            u = t - 1
            idx = s
            while idx:
                require u < mem[_760]
                mem[u + _760 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if s <= cd[4] + cd[196]:
                _1058 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1064 = mem[_760]
                mem[mem[64] + 36] = mem[_760]
                mem[mem[64] + 68 len ceil32(_1064)] = mem[_760 + 32 len ceil32(_1064)]
                if ceil32(_1064) <= _1064:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_1064) + 32]
                mem[mem[64] + _1064 + 68] = 0
                revert with memory
                  from mem[64]
                   len _1058 + ceil32(_1064) + -mem[64] + 68
            _1060 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[96]
            mem[mem[64] + 100] = address(cd[36])
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = cd[4]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(cd[36]), address(this.address), cd[4]
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            _1286 = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = cd[4]
            t = this.address
            while idx < _1286:
                require idx < mem[96]
                require 0 < mem[_1060]
                mem[_1060 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_1060]
                mem[_1060 + 64] = mem[(32 * idx + 1) + 140 len 20]
                require idx < mem[96]
                if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
                    _1309 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1318 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_1318)
                    require ext_code.size(address(_1309))
                    staticcall address(_1309).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_1318)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1332] == mem[_1332]
                    if mem[_1332] >= s:
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _1349 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        _1350 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1372 = mem[_1060]
                        mem[mem[64] + 164] = mem[_1060]
                        s = 0
                        u = _1060 + 32
                        v = mem[64] + 196
                        while s < _1372:
                            mem[v] = mem[u + 12 len 20]
                            _1286 = mem[(32 * ('cd', 68).length) + 128]
                            s = s + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_1350 + 100] = address(t)
                        mem[_1350 + 132] = cd[100]
                        require ext_code.size(address(_1349))
                        call address(_1349).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1350 + (32 * _1372) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx + 1 < mem[96]
                        _1499 = mem[(32 * idx + 1) + 128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1499))
                        call address(_1499).balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1519] == mem[_1519]
                        _1286 = mem[(32 * ('cd', 68).length) + 128]
                        idx = idx + 1
                        s = mem[_1519]
                        t = t
                        continue 
                    require idx < mem[96]
                    _1351 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_1351))
                    call address(_1351).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1380] == bool(mem[_1380])
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1396 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    _1397 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1420 = mem[_1060]
                    mem[mem[64] + 164] = mem[_1060]
                    s = 0
                    u = _1060 + 32
                    v = mem[64] + 196
                    while s < _1420:
                        mem[v] = mem[u + 12 len 20]
                        _1286 = mem[(32 * ('cd', 68).length) + 128]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_1397 + 100] = address(t)
                    mem[_1397 + 132] = cd[100]
                    require ext_code.size(address(_1396))
                    call address(_1396).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1397 + (32 * _1420) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1501 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1501))
                    call address(_1501).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1520] == mem[_1520]
                    _1286 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1520]
                    t = t
                    continue 
                _1320 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1325 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1325)
                require ext_code.size(address(_1320))
                staticcall address(_1320).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_1325)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1334] == mem[_1334]
                if mem[_1334] >= s:
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _1363 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    _1364 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1374 = mem[_1060]
                    mem[mem[64] + 164] = mem[_1060]
                    s = 0
                    t = _1060 + 32
                    u = mem[64] + 196
                    while s < _1374:
                        mem[u] = mem[t + 12 len 20]
                        _1286 = mem[(32 * ('cd', 68).length) + 128]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1364 + 100] = address(cd[36])
                    mem[_1364 + 132] = cd[100]
                    require ext_code.size(address(_1363))
                    call address(_1363).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1364 + (32 * _1374) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx + 1 < mem[96]
                    _1503 = mem[(32 * idx + 1) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1503))
                    call address(_1503).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1521] == mem[_1521]
                    _1286 = mem[(32 * ('cd', 68).length) + 128]
                    idx = idx + 1
                    s = mem[_1521]
                    t = cd[36]
                    continue 
                require idx < mem[96]
                _1365 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1365))
                call address(_1365).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1382] == bool(mem[_1382])
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _1401 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _1402 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1424 = mem[_1060]
                mem[mem[64] + 164] = mem[_1060]
                s = 0
                t = _1060 + 32
                u = mem[64] + 196
                while s < _1424:
                    mem[u] = mem[t + 12 len 20]
                    _1286 = mem[(32 * ('cd', 68).length) + 128]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1402 + 100] = address(cd[36])
                mem[_1402 + 132] = cd[100]
                require ext_code.size(address(_1401))
                call address(_1401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1402 + (32 * _1424) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _1505 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1505))
                call address(_1505).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1522] == mem[_1522]
                _1286 = mem[(32 * ('cd', 68).length) + 128]
                idx = idx + 1
                s = mem[_1522]
                t = cd[36]
                continue 
}



}
