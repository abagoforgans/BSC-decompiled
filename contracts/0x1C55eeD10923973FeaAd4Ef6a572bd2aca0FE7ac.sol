contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_542f48df(?) payable {
    require calldata.size - 4 >= 160
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
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160] = 2
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192 len 64] = call.data[calldata.size len 64]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 260] = address(cd[36])
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 292] = this.address
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 324] = cd[4]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x23b872dd with:
         gas gas_remaining wei
        args address(cd[36]), address(this.address), cd[4]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 256
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[4]
    t = this.address
    while idx < ('cd', 132).length:
        require idx < mem[96]
        require 0 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192] = mem[(32 * idx) + 140 len 20]
        require idx + 1 < mem[96]
        require 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 224] = mem[(32 * idx + 1) + 140 len 20]
        require idx < mem[96]
        if idx != mem[(32 * ('cd', 68).length) + 128] - 1:
            _296 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _299 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_299)
            require ext_code.size(address(_296))
            staticcall address(_296).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_299)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_307] == mem[_307]
            if mem[_307] >= s:
                require idx < mem[(32 * ('cd', 68).length) + 128]
                _313 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                _314 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _327 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
                mem[mem[64] + 164] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
                s = 0
                u = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192
                v = mem[64] + 196
                while s < _327:
                    mem[v] = mem[u + 12 len 20]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_314 + 100] = address(t)
                mem[_314 + 132] = cd[100]
                require ext_code.size(address(_313))
                call address(_313).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + (32 * _327) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx + 1 < mem[96]
                _387 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_387))
                call address(_387).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_399] == mem[_399]
                idx = idx + 1
                s = mem[_399]
                t = t
                continue 
            require idx < mem[96]
            _315 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_315))
            call address(_315).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_331] == bool(mem[_331])
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _338 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _351 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
            mem[mem[64] + 164] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
            u = 0
            v = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192
            w = mem[64] + 196
            while u < _351:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[mem[64] + 100] = address(t)
            mem[mem[64] + 132] = cd[100]
            require ext_code.size(address(_338))
            call address(_338).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 0, 160, address(t), cd[100], mem[mem[64] + 164 len (32 * _351) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[96]
            _389 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_389))
            call address(_389).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_400] == mem[_400]
            idx = idx + 1
            s = mem[_400]
            t = t
            continue 
        _301 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 68).length) + 128]
        _303 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_303)
        require ext_code.size(address(_301))
        staticcall address(_301).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_303)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_308] == mem[_308]
        if mem[_308] >= s:
            require idx < mem[(32 * ('cd', 68).length) + 128]
            _321 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
            _322 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _328 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
            mem[mem[64] + 164] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
            s = 0
            t = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192
            u = mem[64] + 196
            while s < _328:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_322 + 100] = address(cd[36])
            mem[_322 + 132] = cd[100]
            require ext_code.size(address(_321))
            call address(_321).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _322 + (32 * _328) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx + 1 < mem[96]
            _391 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_391))
            call address(_391).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_401] == mem[_401]
            idx = idx + 1
            s = mem[_401]
            t = cd[36]
            continue 
        require idx < mem[96]
        _323 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_323))
        call address(_323).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_332] == bool(mem[_332])
        require idx < mem[(32 * ('cd', 68).length) + 128]
        _341 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _353 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
        mem[mem[64] + 164] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 160]
        t = 0
        u = (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 192
        v = mem[64] + 196
        while t < _353:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 100] = address(cd[36])
        mem[mem[64] + 132] = cd[100]
        require ext_code.size(address(_341))
        call address(_341).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 0, 160, address(cd[36]), cd[100], mem[mem[64] + 164 len (32 * _353) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx + 1 < mem[96]
        _393 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_393))
        call address(_393).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _402 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_402] == mem[_402]
        idx = idx + 1
        s = mem[_402]
        t = cd[36]
        continue 
}



}
