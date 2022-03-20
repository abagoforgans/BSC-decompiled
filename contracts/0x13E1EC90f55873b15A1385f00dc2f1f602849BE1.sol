contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraweth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'o'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawtoken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function aggregate(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _72 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_72] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _79 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_79] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_79 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_79 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_72 + 32] = _79
        mem[t] = _72
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'o'
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _78 = mem[_77]
    require mem[_77] == mem[_77]
    _80 = mem[96]
    require mem[96] <= test266151307()
    _81 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _80) + 32
    if not _80:
        _142 = mem[96]
        idx = 0
        while idx < _142:
            require idx < mem[96]
            _146 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _149 = mem[mem[(32 * idx) + 128] + 32]
            _150 = mem[64]
            _157 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _157:
                mem[_150 + s] = mem[_149 + s + 32]
                _142 = mem[96]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                call address(_146).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _150 + _157 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = 96
                else:
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_216] = return_data.size
                    mem[_216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = _216
            else:
                mem[_150 + _157] = 0
                call address(_146).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _150 + _157 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = _219
            _142 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_164] == mem[_164]
        if mem[_164] <= _78:
            revert with 0, 'X'
        _187 = mem[64]
        mem[mem[64]] = 32
        _189 = mem[_81]
        mem[mem[64] + 32] = mem[_81]
        idx = 0
        s = _81 + 32
        t = mem[64] + (32 * _189) + 64
        u = mem[64] + 64
        while idx < _189:
            mem[u] = t + -_187 - 64
            _203 = mem[s]
            _214 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _214:
                mem[t + v + 32] = mem[_203 + v + 32]
                v = v + 32
                continue 
            if ceil32(_214) > _214:
                mem[t + _214 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_214) + 32
            u = u + 32
            continue 
    else:
        mem[_81 + 32] = 96
        s = _81 + 32
        idx = _80
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _202 = mem[96]
        idx = 0
        while idx < _202:
            require idx < mem[96]
            _208 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _212 = mem[mem[(32 * idx) + 128] + 32]
            _213 = mem[64]
            _218 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _218:
                mem[_213 + s] = mem[_212 + s + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_218) <= _218:
                call address(_208).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _213 + _218 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = 96
                else:
                    _251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_251] = return_data.size
                    mem[_251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = _251
            else:
                mem[_213 + _218] = 0
                call address(_208).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _213 + _218 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = 96
                else:
                    _253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_253] = return_data.size
                    mem[_253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_81]
                    mem[(32 * idx) + _81 + 32] = _253
            _202 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_227] == mem[_227]
        if mem[_227] <= _78:
            revert with 0, 'X'
        _238 = mem[64]
        mem[mem[64]] = 32
        _239 = mem[_81]
        mem[mem[64] + 32] = mem[_81]
        idx = 0
        s = _81 + 32
        t = mem[64] + (32 * _239) + 64
        u = mem[64] + 64
        while idx < _239:
            mem[u] = t + -_238 - 64
            _246 = mem[s]
            _249 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _249:
                mem[t + v + 32] = mem[_246 + v + 32]
                v = v + 32
                continue 
            if ceil32(_249) > _249:
                mem[t + _249 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_249) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_3ae5a68e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 64
        _80 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_80] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _87 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_87] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_87 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_87 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_80 + 32] = _87
        mem[t] = _80
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'o'
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    require mem[_85] == mem[_85]
    _88 = mem[96]
    require mem[96] <= test266151307()
    _89 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _88) + 32
    if not _88:
        _158 = mem[96]
        idx = 0
        while idx < _158:
            require idx < mem[96]
            _162 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _165 = mem[mem[(32 * idx) + 128] + 32]
            _166 = mem[64]
            _173 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _173:
                mem[_166 + s] = mem[_165 + s + 32]
                _158 = mem[96]
                s = s + 32
                continue 
            if ceil32(_173) <= _173:
                call address(_162).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _166 + _173 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = 96
                else:
                    _240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_240] = return_data.size
                    mem[_240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = _240
            else:
                mem[_166 + _173] = 0
                call address(_162).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _166 + _173 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = 96
                else:
                    _243 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_243] = return_data.size
                    mem[_243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = _243
            _158 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_180] == mem[_180]
        if mem[_180] <= _86:
            revert with 0, 'X'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = (16 * calldata.size) + 35154 / 41130
        require ext_code.size(0x7192c2dbdd25f732995a1e47be3e28)
        call 0x00000000007192c2dbdd25f732995a1e47be3e28.freeFromUpTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, (16 * calldata.size) + 35154 / 41130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_209] == mem[_209]
        _214 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _216 = mem[_89]
        mem[mem[64] + 64] = mem[_89]
        idx = 0
        s = _89 + 32
        t = mem[64] + (32 * _216) + 96
        u = mem[64] + 96
        while idx < _216:
            mem[u] = t + -_214 - 96
            _227 = mem[s]
            _238 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _238:
                mem[t + v + 32] = mem[_227 + v + 32]
                v = v + 32
                continue 
            if ceil32(_238) > _238:
                mem[t + _238 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_238) + 32
            u = u + 32
            continue 
    else:
        mem[_89 + 32] = 96
        s = _89 + 32
        idx = _88
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _226 = mem[96]
        idx = 0
        while idx < _226:
            require idx < mem[96]
            _232 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _236 = mem[mem[(32 * idx) + 128] + 32]
            _237 = mem[64]
            _242 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _242:
                mem[_237 + s] = mem[_236 + s + 32]
                _226 = mem[96]
                s = s + 32
                continue 
            if ceil32(_242) <= _242:
                call address(_232).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _237 + _242 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = 96
                else:
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_279] = return_data.size
                    mem[_279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = _279
            else:
                mem[_237 + _242] = 0
                call address(_232).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _237 + _242 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = 96
                else:
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_281] = return_data.size
                    mem[_281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_89]
                    mem[(32 * idx) + _89 + 32] = _281
            _226 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_251] == mem[_251]
        if mem[_251] <= _86:
            revert with 0, 'X'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = (16 * calldata.size) + 35154 / 41130
        require ext_code.size(0x7192c2dbdd25f732995a1e47be3e28)
        call 0x00000000007192c2dbdd25f732995a1e47be3e28.freeFromUpTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, (16 * calldata.size) + 35154 / 41130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_265] == mem[_265]
        _267 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _268 = mem[_89]
        mem[mem[64] + 64] = mem[_89]
        idx = 0
        s = _89 + 32
        t = mem[64] + (32 * _268) + 96
        u = mem[64] + 96
        while idx < _268:
            mem[u] = t + -_267 - 96
            _274 = mem[s]
            _277 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _277:
                mem[t + v + 32] = mem[_274 + v + 32]
                v = v + 32
                continue 
            if ceil32(_277) > _277:
                mem[t + _277 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_277) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
