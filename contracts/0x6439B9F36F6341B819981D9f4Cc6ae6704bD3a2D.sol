contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function check32BytesAndSend(address arg1, bytes arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    staticcall arg1 with:
         funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
            gas gas_remaining wei
           args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!success'
        if arg2.length < 32:
            revert with 0, 'response less than 32 bytes'
        if mem[128] != arg3:
            revert with 0, 'response mismatch'
    else:
        mem[ceil32(arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!success'
        if return_data.size < 32:
            revert with 0, 'response less than 32 bytes'
        if mem[ceil32(arg2.length) + 160] != arg3:
            revert with 0, 'response mismatch'
    call block.coinbase with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkBytesAndSend(address arg1, bytes arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = 0
    staticcall arg1 with:
         funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
            gas gas_remaining wei
           args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len arg2.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!success'
        if sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]) != sha3(arg2[all]):
            revert with 0, 'response bytes mismatch'
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = return_data.size
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!success'
        if sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]) != sha3(ext_call.return_data[0 len return_data.size]):
            revert with 0, 'response bytes mismatch'
    call block.coinbase with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function check32BytesAndSendMulti(address[] arg1, bytes[] arg2, bytes32[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _112 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_112] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_112 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_112 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _112
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _113 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 <= test266151307() and mem[64] + (32 * arg3.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_113] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _113 + 32
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[96] == mem[(32 * arg1.length) + 128]
    require mem[96] == arg3.length
    _218 = mem[96]
    idx = 0
    while idx < _218:
        require idx < mem[96]
        _222 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _224 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[_113]
        _226 = mem[(32 * idx) + _113 + 32]
        _227 = mem[64]
        _228 = mem[mem[(32 * idx) + (32 * arg1.length) + 160]]
        s = 0
        while s < _228:
            mem[_227 + s] = mem[_224 + s + 32]
            _218 = mem[96]
            s = s + 32
            continue 
        if ceil32(_228) <= _228:
            staticcall address(_222).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _227 + _228 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!success'
                if mem[96] < 32:
                    revert with 0, 'response less than 32 bytes'
                if mem[128] != _226:
                    revert with 0, 'response mismatch'
            else:
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_268] = return_data.size
                mem[_268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!success'
                if return_data.size < 32:
                    revert with 0, 'response less than 32 bytes'
                if mem[_268 + 32] != _226:
                    revert with 0, 'response mismatch'
        else:
            mem[_227 + _228] = 0
            staticcall address(_222).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _227 + _228 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!success'
                if mem[96] < 32:
                    revert with 0, 'response less than 32 bytes'
                if mem[128] != _226:
                    revert with 0, 'response mismatch'
            else:
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_270] = return_data.size
                mem[_270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!success'
                if return_data.size < 32:
                    revert with 0, 'response less than 32 bytes'
                if mem[_270 + 32] != _226:
                    revert with 0, 'response mismatch'
        _218 = mem[96]
        idx = idx + 1
        continue 
    call block.coinbase with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkBytesAndSendMulti(address[] arg1, bytes[] arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _114 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_114] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_114 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_114 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _115 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 <= test266151307() and mem[64] + (32 * arg3.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_115] = arg3.length
    idx = 0
    s = arg3 + 36
    t = _115 + 32
    while idx < arg3.length:
        require arg3 + cd[s] + 67 < calldata.size
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        _174 = mem[64]
        require mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        mem[_174] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_174 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_174 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _174
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[96] == mem[(32 * arg1.length) + 128]
    require mem[96] == mem[_115]
    _222 = mem[96]
    idx = 0
    while idx < _222:
        require idx < mem[96]
        _226 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _228 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[_115]
        _230 = mem[(32 * idx) + _115 + 32]
        _231 = mem[64]
        _232 = mem[mem[(32 * idx) + (32 * arg1.length) + 160]]
        s = 0
        while s < _232:
            mem[_231 + s] = mem[_228 + s + 32]
            _222 = mem[96]
            s = s + 32
            continue 
        if ceil32(_232) <= _232:
            staticcall address(_226).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _231 + _232 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!success'
                if sha3(mem[_230 + 32 len mem[_230]]) != sha3(mem[128 len mem[96]]):
                    revert with 0, 'response bytes mismatch'
            else:
                _272 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_272] = return_data.size
                mem[_272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!success'
                if sha3(mem[_230 + 32 len mem[_230]]) != sha3(ext_call.return_data[0 len return_data.size]):
                    revert with 0, 'response bytes mismatch'
        else:
            mem[_231 + _232] = 0
            staticcall address(_226).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _231 + _232 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!success'
                if sha3(mem[_230 + 32 len mem[_230]]) != sha3(mem[128 len mem[96]]):
                    revert with 0, 'response bytes mismatch'
            else:
                _274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_274] = return_data.size
                mem[_274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!success'
                if sha3(mem[_230 + 32 len mem[_230]]) != sha3(ext_call.return_data[0 len return_data.size]):
                    revert with 0, 'response bytes mismatch'
        _222 = mem[96]
        idx = idx + 1
        continue 
    call block.coinbase with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
