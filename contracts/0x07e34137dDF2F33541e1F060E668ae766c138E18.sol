contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function geteth() {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function cast2(address[] arg1, bytes[] arg2, bool arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'array-length-invalid'
    mem[100] = this.address
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
        mem[_84] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[_84 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[_84 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'target-invalid'
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = 21
        mem[_85 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        _89 = mem[64]
        s = 0
        while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
            mem[s + _89] = mem[s + _84 + 32]
            s = s + 32
            continue 
        if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _89 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'ERC20 operation did not succeed'
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _160 = mem[_85]
                mem[mem[64] + 36] = mem[_85]
                idx = 0
                while idx < _160:
                    mem[idx + _154 + 68] = mem[idx + _85 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_160) > _160:
                    mem[_154 + _160 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_160) + _154 + -mem[64] + 68
            _149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_149] = return_data.size
            mem[_149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_149 + 32] == bool(mem[_149 + 32])
                    if not mem[_149 + 32]:
                        revert with 0, 'ERC20 operation did not succeed'
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _161 = mem[_85]
            mem[mem[64] + 36] = mem[_85]
            idx = 0
            while idx < _161:
                mem[idx + _156 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            if ceil32(_161) > _161:
                mem[_156 + _161 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_161) + _156 + -mem[64] + 68
        mem[_89 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _89 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'ERC20 operation did not succeed'
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _162 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _168 = mem[_85]
            mem[mem[64] + 36] = mem[_85]
            idx = 0
            while idx < _168:
                mem[idx + _162 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            if ceil32(_168) > _168:
                mem[_162 + _168 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_168) + _162 + -mem[64] + 68
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_151] = return_data.size
        mem[_151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                require mem[_151 + 32] == bool(mem[_151 + 32])
                if not mem[_151 + 32]:
                    revert with 0, 'ERC20 operation did not succeed'
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _169 = mem[_85]
        mem[mem[64] + 36] = mem[_85]
        idx = 0
        while idx < _169:
            mem[idx + _164 + 68] = mem[idx + _85 + 32]
            idx = idx + 32
            continue 
        if ceil32(_169) > _169:
            mem[_164 + _169 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_169) + _164 + -mem[64] + 68
    if arg3:
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg4)
        call arg4.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_80] <= ext_call.return_data[0]:
            revert with 0, 'Not profitable'
}



}
